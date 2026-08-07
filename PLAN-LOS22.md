# LOS 22 (LineageOS 22 / Android 15, SDK 35) untuk A37 — Studi Kelayakan

> **Status: ALPHA (7 Agustus 2026)** — studi kelayakan, **bukan rencana eksekusi**.
> Belum ada sync/rebuild; seluruh klaim di dokumen ini **perlu analisis ulang sebelum
> dikerjakan** (lihat kotak "Analisis ulang wajib" di bawah).
>
> Jawaban awal atas pertanyaan: *"kalau mau build LOS 22, apakah perlu backport/modifikasi
> kernel, atau patch UL lineage-22.x sudah cukup?"*
>
> **Ringkasan awal:** **TIDAK seperti LOS 21.** (1) Kernel **perlu backport eBPF** —
> gerbang `ro.kernel.ebpf.supported` dihapus di Android 15 sehingga eBPF tidak bisa lagi
> dimatikan dari userspace; (2) **fork UL untuk 22 tidak lengkap** (hanya ±8 repo dari
> ~23) sehingga seri patch UL tidak bisa diandalkan; (3) **adb legacy FunctionFS
> (`transport_legacy.cpp`) dihapus dari AOSP di Android 15** sementara kernel A37 memakai
> gadget `g_android` legacy tanpa configfs → adb USB bermasalah tanpa port balik.
> Kamera tetap pemblokir yang sama (HAL1 hilang sejak A14).
>
> ## ⚠️ Analisis ulang wajib sebelum eksekusi
>
> Sama seperti `PLAN-LOS21.md`: dokumen ini dari pengamatan jarak jauh satu sesi
> (7 Agustus 2026), belum pernah diverifikasi dengan build LOS 22. Yang HARUS dijawab
> ulang:
>
> 1. **eBPF**: klaim "wajib" berdasar tidak adanya gate di `Loader.cpp` A15 + pilihan
>    a6010 menghidupkan BPF penuh. Belum dibuktikan apakah boot LOS 22 benar-benar
>    gagal tanpa BPF di kernel 3.10 (netd/traffic monitoring) — bisa jadi netd punya
>    fallback. Backport eBPF ke 3.10 sendiri adalah proyek besar yang belum diukur.
> 2. **adb**: verifikasi apakah ada jalur lain (a6010 di 22 punya kernel yang sama
>    `g_android` tanpa configfs dan TIDAK punya fork adb — bagaimana adb mereka di 22
>    belum diketahui). Kemungkinan port balik `transport_legacy.cpp`+`usb_legacy.cpp`
>    dari A14, atau backport configfs gadget — keduanya belum diuji.
> 3. **Fork UL 22**: keberadaan branch diverifikasi via API GitHub; **isi commit belum
>    diaudit**. Repo yang TIDAK punya 22 (BT, wlan, RIL, bpf, netd) perlu solusi yang
>    diputuskan.
> 4. **sepolicy-legacy untuk 22**: UL berhenti di `lineage-21.0-legacy`; a6010 di 22
>    masih `include device/qcom/sepolicy-legacy/sepolicy.mk` — cabang mana yang dipakai
>    a6010 (official `lineage-22.1` / `-legacy-um`?) belum diverifikasi.
> 5. **RIL/BT/audio di 22**: belum ada uji runtime; mekanisme BT A15 berubah banyak.
> 6. **Preseden a6010**: tree bergerak cepat; kesimpulan dari commit tertentu bisa usang.
>
> Protokol masuk status siap-eksekusi: audit ulang tiap § + persetujuan pemilik
> perangkat atas keputusan §6.
>
> **Dokumen induk:** `PLAN.md`, `PLAN-OFFICIAL.md`, dan `PLAN-LOS21.md` (LOS 21 —
> baca dulu; banyak temuan berlaku bersama, mis. kamera). Dokumen ini **meneruskan**:
> seluruh fix perangkat dari ROM 20 (device tree `ddf0253`+`c5291cc`, kernel `8cc1519`)
> dan temuan LOS 21 berlaku sebagai modal.

---

## 0. Ringkasan eksekutif

| # | Pertanyaan | Jawaban awal | Bukti |
|---|---|---|---|
| 1 | Kernel perlu backport? | **Ya — eBPF.** Gerbang eBPF userspace dihapus di A15; a6010 (msm8916, kernel 3.10.108) menghidupkan BPF penuh + spoof versi BPF `4.19.325` | §1, §2 |
| 2 | Patch UL `lineage-22.x` saja cukup? | **Tidak.** Fork UL 22 hanya ±8 repo; yang kritis (adb, bpf, netd, art/perfetto, BT, wlan, RIL, sepolicy-legacy) tidak ada | §3 |
| 3 | adb USB jalan? | **Risiko besar.** `transport_legacy.cpp` dihapus dari AOSP A15; kernel A37 `g_android` tanpa configfs | §4.2 |
| 4 | Kamera? | Pemblokir sama dengan LOS 21 (HAL1 hilang sejak A14) — butuh `hal3on1` | §4.1 |
| 5 | Pekerjaan device tree? | Rebase ke 22 + bawa fix 20 + port manual patch BT/wlan + keputusan eBPF/adb/kamera | §5 |

**Satu kalimat:** LOS 22 = seluruh beban LOS 21 (kamera hal3on1) **ditambah** tiga hal
baru yang tidak tercakup UL: backport eBPF ke kernel 3.10, pemulihan jalur adb legacy
yang dihapus AOSP, dan port manual patch BT/wlan.

---

## 1. Kernel — eBPF kini wajib (perbedaan fundamental dari 21)

### 1.1 Gate eBPF dihapus di Android 15

- Di Android 12–14, bpfloader bisa dimatikan via `ro.kernel.ebpf.supported=false` —
  ini gerbang yang dipakai ROM 20 (fork UL `system_bpf`) dan direncanakan untuk 21.
- Di Android 15:
  - bpfloader pindah ke `system/bpf/loader/` (modul `bpfloader` di `loader/Android.bp`).
  - `loader/Loader.cpp` A15/LOS 22.1: **tidak membaca properti apa pun** (0 match
    "supported"/"property") — selalu jalan, `exec_start bpfloader` di `init.rc` pada
    trigger `load-bpf-programs`.
  - Program dimuat dengan cek versi kernel fungsional: `isAtLeastKernelVersion(4,14,0)`,
    `(5,4,0)` dll. — artinya fitur BPF map/program 4.14/5.4 jadi dasar keputusan
    pemuatan, bukan gate.
- Fork UL `system_bpf` **tidak punya branch 22** — tidak ada fork yang bisa
  mengembalikan gate.

### 1.2 Konfigurasi kernel yang tersirat

Kebutuhan minimal sisi kernel untuk bpfloader A15 (diturunkan dari pilihan a6010):
`CONFIG_BPF_SYSCALL`, `CONFIG_BPF_JIT`(+`HAVE_EBPF_JIT`), `CONFIG_CGROUP_BPF`,
`CONFIG_NET_CLS_BPF`/`NET_ACT_BPF`, `CONFIG_BPF_UNPRIV_DEFAULT_OFF`, plus
`CONFIG_ANDROID_TREBLE_SPOOF_BPF_KERNEL_VERSION_PREFIX` (spoof versi BPF yang dibaca
bpfloader dari `/proc/version`).

**Kernel 3.10 asli tidak punya eBPF sama sekali** (eBPF masuk mainline 3.18) — jadi ini
backport besar yang belum diukur bobotnya (a6010 sudah melakukannya; lisensi/sumber
backport mereka bisa dijadikan titik awal, tapi kualitasnya harus diaudit).

### 1.3 Yang tetap opsional

- `CONFIG_PSI` (backport PSI untuk lmkd) — opsional, dari LOS 21.
- Spoof versi kernel umum `4.9.337` (VTS) — opsional.
- **16 KB page size TIDAK wajib** untuk perangkat legacy (kewajiban hanya untuk device
  baru yang rilis dengan A15 / GKI).

---

## 2. Preseden a6010 — kernel `lineage-22.2` (msm8916, 3.10.108)

- Versi kernel tetap `3.10.108` (sama dengan A37).
- Delta defconfig 22.2 yang relevan (dibanding state kernel A37 di §1.3 PLAN-LOS21):
  `CONFIG_PSI=y`, `CONFIG_BPF=y` + `BPF_SYSCALL` + `BPF_JIT` + `HAVE_EBPF_JIT` +
  `CGROUP_BPF` + `NET_CLS/ACT_BPF`, `CONFIG_MEMFD_CREATE=y`,
  `CONFIG_ANDROID_TREBLE_SPOOF_KERNEL_VERSION=y` (`4.9.337`) **dan**
  `CONFIG_ANDROID_TREBLE_SPOOF_BPF_KERNEL_VERSION_PREFIX=y` (**`4.19.325`**).
- Device tree `lineage-22.0`: hal3on1 terus dikembangkan (HWC preview, `open_legacy`,
  manual exposure), tuning memori agresif (LMKD, cgroup cputime limits, kswapd, blkio).
- a6010 **tidak punya fork adb** dan kernelnya sama-sama `g_android` tanpa configfs —
  bagaimana adb mereka di 22 belum diketahui (lihat §4.2).

---

## 3. Fork UL `lineage-22.1` — status per repo (diverifikasi 7 Agustus 2026)

| Repo | UL 22.1 | Catatan |
|---|---|---|
| `vendor_lineage` | ✅ | flags `has_legacy_camera_hal1`, `has_memfd_backport`, `uses_qcom_bsp_legacy` masih ada |
| `frameworks_av` | ✅ | hanya commit upstream; **tidak ada** patch HAL1/device1 |
| `system_core`, `system_sepolicy`, `frameworks_base`, `hardware_interfaces`, `frameworks_native` (`-gles`), `device_lineage_sepolicy` | ✅ | |
| `packages_modules_adb` | ❌ | `transport_legacy.cpp` dihapus dari AOSP A15 juga — lihat §4.2 |
| `system_bpf`, `system_netd` | ❌ | eBPF tidak bisa digate — lihat §1 |
| `device_qcom_sepolicy` (sepolicy-legacy) | ❌ (berhenti di `lineage-21.0-legacy`) | official punya `lineage-22.1` dan `-legacy-um`; a6010 di 22 masih include sepolicy-legacy — sumbernya harus diverifikasi |
| `art`, `external_perfetto` (memfd) | ❌ | flag `has_memfd_backport` masih ada di vendor_lineage 22.1; konsumen di A15 belum diverifikasi |
| `hardware_ril` (T-RIL) | ❌ | RIL di 22 belum dipastikan (blob CAF + `vendor.rild.libpath` seperti 20?) |
| `packages_modules_Bluetooth`, `hardware_qcom_wlan`, `bionic`, `NetworkStack`, `Connectivity`, `Wifi` | ❌ | patch BT (opcode vendor) & wlan (M4.4) harus di-port manual ke A15 |

---

## 4. Pemblokir

### 4.1 Kamera — sama dengan LOS 21

`device1/` tidak ada di A15 (`android-15.0.0_r1`), UL frameworks_av 22.1 tidak membawa
jalur HAL1. A37 butuh `hal3on1` (adopsi dari a6010 + adaptasi) atau port HAL1 balik.
Lihat `PLAN-LOS21.md` §4.

### 4.2 adb USB — pemblokir BARU di 22

- AOSP A15 `packages/modules/adb`: pohon `android-15.0.0_r1` hanya berisi
  `transport.cpp`, `transport_fd.cpp`, `transport_benchmark.cpp`, `transport_test.cpp` —
  **`transport_legacy.cpp` dan `daemon/usb_legacy.cpp` DIHAPUS**.
- Kernel A37 (dan a6010): `CONFIG_USB_G_ANDROID=y`, **`CONFIG_USB_FUNCTIONFS is not set`,
  `CONFIG_USB_CONFIGFS is not set`** → jalur adb modern (configfs/ffs v2) tidak ada.
- Konsekuensi: adb USB di LOS 22 tidak akan enumerasi tanpa salah satu dari:
  1. **Port balik** `transport_legacy.cpp` + `usb_legacy.cpp` dari A14 (terbukti jalan di
     ROM 20; pertanyaan: seberapa kompatibel dengan API adb A15), atau
  2. **Backport configfs USB gadget** ke kernel 3.10 (perubahan kernel lain), atau
  3. Membuktikan a6010 punya jalur yang berfungsi (belum ditemukan).

### 4.3 eBPF kernel — pemblokir BARU di 22

Lihat §1. Tanpa eBPF (syscall+JIT+cgroup), bpfloader A15 gagal memuat program
(monitoring jaringan, offload tethering) dan netd tidak mendapat map yang diharapkan —
dampak boot/jaringan penuh belum diverifikasi, tapi a6010 memilih backport penuh
bukan alternatif.

---

## 5. Pekerjaan device tree (ketika sampai di situ)

- **Dibawa dari 20** (sama dengan LOS 21, lihat `PLAN-LOS21.md` §5.1): `vendor.rild.libpath`,
  12 prop gating BT, audio policy BT, fix WiFi/volume/charging, `first_api_level=21`.
- **Baru di 22** (dari a6010 `lineage-22.0`): tuning memori (LMKD props, cgroup cputime
  limits, blkio, kswapd, page-cluster), hal3on1 (kamera), sepolicy pasca-QPR.
- **Port manual**: patch BT hci_layer/btm_api, patch wlan (M4.4), bila jalur hal3on1
  dipilih — adaptasi ke blob A37.

---

## 6. Keputusan yang harus diambil

| # | Keputusan | Opsi |
|---|---|---|
| 1 | eBPF kernel | backport penuh (jalur a6010) vs buktikan dulu boot tanpa BPF |
| 2 | adb USB | port balik transport_legacy dari A14 vs backport configfs vs terima tanpa USB-adb |
| 3 | Kamera | hal3on1 vs port HAL1 (sama dengan keputusan LOS 21) |
| 4 | Basis | UL 22.1 (parsial) vs official 22.x + patch manual |
| 5 | FBE | aktif vs polos (sama dengan 21) |
| 6 | PSI / spoof versi | opsional |

---

## 7. Risiko

| Risiko | Keterangan |
|---|---|
| eBPF backport tidak terukur | pekerjaan kernel terbesar di jalur ini; sumber a6010 perlu audit lisensi/kualitas |
| adb mati = diagnosa device sulit | hampir semua alur kerja proyek ini lewat adb |
| Fork UL 22 parsial | seri patch M3 (20) dan rencana 21 tidak bisa dipakai apa adanya |
| Kamera (hal3on1) | sama dengan LOS 21 — belum pernah dipakai di A37 |
| RIL/BT di 22 belum teruji | mekanisme A15 berubah; T-RIL UL tidak tersedia untuk 22 |

---

## Lampiran A — Perintah reproduksi data studi ini

```bash
# A.1 Fork UL 22: daftar branch per repo (yang ADA / TIDAK ADA untuk 22):
for r in android_packages_modules_adb android_system_bpf android_system_netd \
         android_device_qcom_sepolicy android_hardware_ril android_art \
         android_external_perfetto android_packages_modules_Bluetooth \
         android_hardware_qcom_wlan android_vendor_lineage android_frameworks_av \
         android_system_core android_system_sepolicy android_frameworks_base \
         android_hardware_interfaces android_frameworks_native; do
  echo "== $r =="
  curl -s "https://api.github.com/repos/LineageOS-UL/$r/branches?per_page=100" \
    | grep -o '"name": "lineage-2[12][^"]*"'
done

# A.2 Gate eBPF dihapus — Loader.cpp A15 (LOS 22.1):
curl -s https://raw.githubusercontent.com/LineageOS/android_system_bpf/lineage-22.1/loader/Loader.cpp \
  | grep -inE "ebpf.supported|property"          # -> tidak ada match
# bpfloader di init.rc A15:
curl -s https://raw.githubusercontent.com/LineageOS/android_system_core/lineage-22.1/rootdir/init.rc \
  | grep -A2 "load-bpf-programs"

# A.3 adb legacy dihapus dari AOSP A15:
curl -s "https://android.googlesource.com/platform/packages/modules/adb/+/android-15.0.0_r1/?format=JSON"
#   -> tidak ada transport_legacy.cpp / daemon/usb_legacy.cpp

# A.4 Konfigurasi gadget USB kernel A37 (ROM 20 berjalan):
adb shell 'zcat /proc/config.gz | grep -E "USB_GADGET|USB_CONFIGFS|USB_FUNCTIONFS|USB_G_ANDROID"'

# A.5 Defconfig a6010 lineage-22.2 (eBPF + spoof versi BPF):
curl -s https://raw.githubusercontent.com/acroreiser/android_kernel_lenovo_a6010/lineage-22.2/arch/arm/configs/lineageos_a6010_defconfig \
  | grep -E "PSI|BPF|TREBLE|MEMFD"

# A.6 Kamera A15 tetap tanpa HAL1:
curl -s "https://api.github.com/repos/LineageOS-UL/android_frameworks_av/git/trees/lineage-22.1?recursive=1" \
  | python3 -c "import json,sys; d=json.load(sys.stdin); print(any('device1' in p for p in [x['path'] for x in d['tree']]))"   # -> False

# A.7 a6010 device tree 22 masih include sepolicy-legacy:
curl -s https://raw.githubusercontent.com/acroreiser/android_device_lenovo_a6010/lineage-22.0/BoardConfig.mk \
  | grep sepolicy
```

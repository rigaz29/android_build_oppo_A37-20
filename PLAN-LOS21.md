# LOS 21 (LineageOS 21 / Android 14, SDK 34) untuk A37 — Studi Kelayakan

> **Status: ALPHA (7 Agustus 2026)** — studi kelayakan, **bukan rencana eksekusi**.
> Belum ada sync/rebuild; seluruh klaim di dokumen ini **perlu analisis ulang sebelum
> dikerjakan** (lihat kotak "Analisis ulang wajib" di bawah).
>
> Jawaban awal atas pertanyaan: *"kalau mau build LOS 21, apakah perlu backport/modifikasi
> kernel, atau patch UL lineage-21.0 sudah cukup?"*
>
> **Ringkasan awal:** **kernel tidak perlu backport wajib apa pun** (state kernel sekarang
> sudah memenuhi semua persyaratan keras yang juga diminta A13). Patch UL `lineage-21.0`
> tersedia lengkap untuk adb/camera-helper/bpf/memfd/sepolicy/RIL/BT — **kecuali satu:
> jalur kamera HAL1 di cameraservice DIHAPUS upstream di A14, dan fork UL tidak
> membawanya kembali** → ini pemblokir utama, bukan kernel.
>
> ## ⚠️ Analisis ulang wajib sebelum eksekusi
>
> Dokumen ini ditulis dari pengamatan jarak jauh (tree GitHub + perangkat ROM 20) dalam
> satu sesi (7 Agustus 2026) dan **belum pernah diverifikasi dengan build LOS 21**.
> Hal-hal yang HARUS dijawab ulang saat mau dikerjakan:
>
> 1. **Kamera**: status `hal3on1` a6010 (apakah masih dipelihara, lisensi, kesesuaian
>    blob A37) — atau jalur port HAL1 balik; belum ada satu pun percobaan di A37.
> 2. **Kernel**: kesimpulan "tanpa backport" baru berdasar defconfig/commit, belum
>    dibuktikan dengan build + boot LOS 21. Backport PSI belum dievaluasi bobotnya.
> 3. **Fork UL 21**: keberadaan branch diverifikasi lewat API GitHub pada tanggal studi;
>    **isi commit-nya (delta terhadap 20) belum diaudit** — hanya dilihat keberadaan
>    berkas/commit kunci.
> 4. **RIL/BT/audio di 21**: belum ada uji runtime; perilaku di 20 tidak menjamin di 21.
> 5. **Preseden a6010**: tree-nya bergerak cepat dan ada commit yang di-revert (RIL
>    wrapper 1.4) — konklusi yang diambil dari commit tertentu bisa usang.
>
> Protokol masuk status siap-eksekusi: audit ulang tiap § dengan bukti terbaru + setuju
> dengan pemilik perangkat soal keputusan §6.
>
> **Dokumen induk:** `PLAN.md` (10 fase basis UL) dan `PLAN-OFFICIAL.md` (migrasi ke
> official 20). Dokumen ini **meneruskan**: seluruh temuan fix perangkat (BT/RIL/audio/
> WiFi, device tree `ddf0253`+`c5291cc`, kernel `8cc1519`) berlaku sebagai modal, bukan
> diulang. Seluruh klaim di bawah bisa diverifikasi ulang dengan perintah di Lampiran A.

---

## 0. Ringkasan eksekutif

| # | Pertanyaan | Jawaban | Bukti |
|---|---|---|---|
| 1 | Kernel perlu backport wajib baru? | **Tidak.** A14 tidak menambah persyaratan kernel keras baru di atas A13 untuk perangkat legacy. Binder `TXN_SECURITY_CTX` (satu-satunya persyaratan keras yang relevan untuk kernel 3.x, berlaku sejak A12) **sudah ada** di kernel kita | §1 |
| 2 | Patch UL `lineage-21.0` saja cukup? | **Tidak cukup** — ada satu lubang besar: **kamera**. Blob kamera A37 adalah HAL1; jalur HAL1 `device1/` **dihapus dari `libcameraservice` di Android 14** dan fork UL `frameworks_av lineage-21.0` **tidak** mengembalikannya | §3, §4 |
| 3 | Kalau begitu apa jalur kamera di 21? | Satu-satunya preseden msm8916 yang jalan: **`hal3on1`** — wrapper HAL3 di atas blob HAL1, dibangun acroreiser untuk a6010 (perangkat msm8916 yang sama). Perlu diadopsi + diadaptasi, atau port jalur HAL1 balik sendiri | §4 |
| 4 | Apa yang a6010 tambahkan ke kernel untuk 21? | Tidak ada yang wajib boot; semuanya opsional/paritas: `CONFIG_PSI=y` (backport), spoof kernel version 4.9.337 (lolos cek VTS), `CONFIG_BPF_SYSCALL`, `CONFIG_MEMFD_CREATE` eksplisit, `CONFIG_ANDROID_BINDERFS` | §2 |
| 5 | Pekerjaan device tree? | Rebase ke 21 + bawa semua fix 20 (RIL `vendor.rild.libpath`, 12 prop gating BT, audio policy BT) + keputusan baru: kamera, FBE, tuning lmkd | §5 |

**Satu kalimat:** *"Hanya patch UL"* menjawab 90% kebutuhan legacy userspace LOS 21
(adb, bpf, memfd, sepolicy, RIL, BT), tetapi **kamera HAL1 — komponen inti A37 — tidak
tercakup oleh UL 21** dan itu pekerjaan ekstra terbesar; kernel tidak perlu disentuh.

---

## 1. Kernel — mengapa tidak perlu backport wajib

### 1.1 Persyaratan keras lintas versi

Persyaratan kernel yang **keras** (memutus boot) untuk Android modern di kernel 3.x:

| API | Persyaratan keras | Di kernel A37 (`8cc1519`) |
|---|---|---|
| 31 (A12) | Binder wajib mendukung `FLAT_BINDER_FLAG_TXN_SECURITY_CTX` | ✅ `drivers/staging/android/binder.c:1381` (`node->txn_security_ctx = !!(flags & ...)`) |
| 31+ | Binder harus tetap 3 device node (`binder,hwbinder,vndbinder`) | ✅ `CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"` (diverifikasi dari `/proc/config.gz` perangkat) |
| 33 (A13) | eBPF — **dapat** digate `ro.kernel.ebpf.supported=false` | ✅ sudah dipakai di ROM 20 (fork UL `system_bpf`) |
| 33 | `memfd_create` — **dapat** digate flag `TARGET_HAS_MEMFD_BACKPORT` (userspace) | ✅ kernel sudah punya backport `F_SEAL_FUTURE_WRITE`; flag masih ada di vendor_lineage 21 (Lampiran A.3) |
| 34 (A14) | **tidak ada yang baru wajib** untuk perangkat non-GKI | — |

Catatan: daftar fitur kernel A14 di `source.android.com/docs/core/architecture/kernel/
release-notes` hanya menyasar GKI (6.1/5.15, EEVDF, proxy execution) — tidak mengikat
perangkat legacy non-GKI.

### 1.2 Yang di perangkat sekarang (7 Agustus 2026, ROM 20 berjalan)

Dari `zcat /proc/config.gz` (perangkat A37f):

```
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"
CONFIG_EXFAT_FS=y                # exfat mainline backport
(tidak ada CONFIG_PSI, CONFIG_BPF_SYSCALL, CONFIG_MEMFD_CREATE, CONFIG_ANDROID_BINDERFS)
```

Konfigurasi ini identik yang dipakai A13 dan tetap sah untuk A14.

---

## 2. Preseden satu-satunya msm8916 → LOS 21: a6010 (acroreiser)

a6010 adalah satu-satunya device msm8916 (chipset **sama persis** dengan A37) yang punya
tree LOS 21 dan membangun ROM A14.

### 2.1 Kernel tetap 3.10.108

- `kernel/lenovo/a6010` branch `lineage-21`: `VERSION=3 PATCHLEVEL=10 SUBLEVEL=108` —
  **versi kernel sama dengan A37** (Lampiran A.4). Bukti tambahan: branch `lineage-22.2`
  dan `lineage-22.2-kernelsu` juga ada — artinya jalur 3.10 masih hidup sampai LOS 22.
- Diff `lineage-20.0...lineage-21` **diverged 5904 commit** — rebase besar-besaran,
  tapi tidak menaikkan versi dan tidak menambah persyaratan boot.

### 2.2 Delta defconfig `lineage-21` (yang ditambahkan a6010, semua opsional)

| Konfigurasi | Arti | Wajib untuk boot A14? |
|---|---|---|
| `CONFIG_PSI=y` | backport PSI (mainline 4.14) — lmkd A14 memakainya untuk deteksi tekanan memori | Tidak (fallback ada), tapi memperbaiki perilaku lmkd di 2 GB |
| `CONFIG_ANDROID_TREBLE_SPOOF_KERNEL_VERSION=y` + prefix `"4.9.337"` | spoof versi kernel dilaporkan | Tidak untuk boot; untuk lolos cek versi kernel VTS/VINTF |
| `CONFIG_BPF_SYSCALL=y` | mengaktifkan eBPF | Tidak — selama `ro.kernel.ebpf.supported=false` tetap dipakai |
| `CONFIG_MEMFD_CREATE=y` | eksplisit | Tidak — flag userspace menutupinya |
| `CONFIG_ANDROID_BINDERFS=y` | binderfs | Tidak |

**Kesimpulan:** kalau tujuan hanya *boot + jalan*, kernel A37 bisa dipakai apa adanya.
Backport PSI adalah satu-satunya yang masuk akal dikerjakan (kinerja lmkd), tapi itu
peningkatan, bukan syarat.

---

## 3. Patch UL `lineage-21.0` — status per repo (diverifikasi 7 Agustus 2026)

Fork LineageOS-UL semuanya punya branch `lineage-21.0` (periksa ulang dengan Lampiran A.5):

| Kebutuhan legacy | Repo UL `lineage-21.0` | Status |
|---|---|---|
| adb di FunctionFS kernel 3.10 | `packages_modules_adb` — `transport_legacy.cpp` + `daemon/usb_legacy.cpp` **ada di pohon 21** | ✅ |
| Kamera HAL1 | `frameworks_av` — **TIDAK ADA** `device1/` maupun `initializeDeviceInfo<DeviceInfo1>` | ❌ **pemblokir** (§4) |
| Kamera (helper) | `frameworks_av` 21: `1a764aa9` "camera: Allow devices to load custom CameraParameter code", `bac4d0cf` "camera: Add 32-bit only version of cameraserver" | ✅ (bukan jalur HAL1 penuh) |
| Gerbang eBPF | `system_bpf`, `system_netd` | ✅ |
| Gerbang memfd | `art`, `external_perfetto` | ✅ |
| sepolicy legacy | `device_qcom_sepolicy` — branch **`lineage-21.0-legacy`** ada | ✅ |
| T-RIL | `hardware_ril` `lineage-21.0` | ✅ (belum tentu perlu — lihat §5) |
| Audio | `frameworks_av` 21: `a437c920` "libaudiohal: Bring back 2.0 HAL", BT in-call CAF (`52ee85dd`, `9f7c7b31`) | ✅ |
| Flags device tree | `vendor_lineage` 21: `has_legacy_camera_hal1`, `has_memfd_backport`, `uses_qcom_bsp_legacy` masih ada di `config/BoardConfigSoong.mk` | ✅ |
| Lainnya | `system_core`, `frameworks_base`, `frameworks_native`, `packages_modules_Bluetooth`, `packages_modules_Connectivity`, `packages_modules_Wifi` | ✅ |

---

## 4. Pemblokir: kamera HAL1 hilang di Android 14

### 4.1 Bukti penghapusan upstream

- `libcameraservice` di `android-14.0.0_r67` (tag AOSP): direktori isi `services/camera/
  libcameraservice/` hanya berisi `device3`, `api1`, `api2`, `common`, `hidl`, `aidl` —
  **`device1/` TIDAK ADA** (Lampiran A.6). Di A13 (`android-13.0.0_r75`) `device1/` ada —
  justru dipakai penjaga regresi proyek ini (`tools/apply-official-patches.sh`:
  `chk_file frameworks/av/services/camera/libcameraservice/device1`).
- `CameraProviderManager.cpp` fork UL 21: tidak ada `initializeDeviceInfo<DeviceInfo1>`
  maupun `case 1:` — patch HAL1 yang dibawa UL di lini 20 **tidak dibawa ke 21**.

### 4.2 Dampak ke A37

Blob kamera A37 adalah HAL1 (`camera.vendor.msm8916.so`, pola wrapper Qualcomm) —
kamera depan+belakang di ROM 20 jalan lewat jalur HAL1. Di 21 jalur itu tidak ada,
sehingga **tanpa pekerjaan tambahan, kamera tidak akan terdeteksi**.

### 4.3 Jalur penyelesaian (belum diputuskan)

1. **Adopsi `hal3on1` a6010** — wrapper HAL3 di atas blob HAL1, dibangun acroreiser
   khusus msm8916 (commit serial "camera/hal3on1: ..." termasuk "use memfd_create() as
   shared memory allocator", "advertise LIMITED hardware support level"). Perlu dicoba
   diaplikasikan ke A37; blob dan HAL1 A37 berbeda dari a6010 di beberapa titik.
2. **Port jalur HAL1 balik** dari A13 ke `libcameraservice` A14 — melawan arah hulu,
   harus dirawat sendiri tiap merge ASB.
3. **Verifikasi dulu** apakah ada device LOS 21 official dengan kamera HAL1 — kalau ada,
   cara mereka jadi referensi (belum ditemukan saat studi ini).

---

## 5. Pekerjaan device tree (ketika sampai di situ)

### 5.1 Yang dibawa dari proyek 20 (wajib, sudah terbukti)

| Item | Commit 20 | Keterangan |
|---|---|---|
| RIL: `vendor.rild.libpath` | `c5291cc` | rild A13/A14 membaca prop vendor (`hardware/ril/rild/rild.c:39`); tanpa ini IRadio tak pernah terdaftar |
| BT: 12 sysprop profil | `ddf0253` | gating profil Android 13/14 (`bluetooth.profile.*.enabled`) |
| BT: audio policy | `ddf0253` | include `bluetooth_audio_policy_configuration.xml` (bukan a2dp) |
| BT: toleransi opcode vendor + standard inquiry scan | langkah L/M `apply-official-patches.sh` | WCNSS msm8916 |
| Kamera HAL1 (dulu) | patch UL T2 | **gugur** — lihat §4 |
| WiFi: wpa_supplicant tanpa HIDL duplikat | `edd546d` | |
| Volume: `a2dp_audio_policy_configuration.xml` | `7902422` | |
| Boot: charging control node, `ro.vndk.version=current`, `first_api_level=21` | `e92c32a`, `551203f` dll. | |

### 5.2 Yang baru muncul di 21 (dari commit a6010 `lineage-21.0`)

- **Kamera**: hal3on1 (lihat §4).
- **FBE**: a6010 meng-enable FBE di 21. Di proyek 20 kita sengaja `/data` polos
  (fstab tanpa `encryptable=`). Keputusan harus diulang untuk 21 — FBE di kernel 3.10
  adalah proyek tersendiri.
- **RIL**: a6010 sempat "Use lineage radio 1.4 wrapper" lalu **di-revert** — T-RIL UL 21
  ada sebagai cadangan; di 20 ternyata tak perlu (blob CAF apa adanya). Validasi ulang
  saat 21.
- **Tuning**: lmkd (`ro.lmk.swap_free_low_percentage`), `schedutil hispeed_load`,
  `Pinner service` overlay, batas dex2oat — paritas kinerja 2 GB.
- **sepolicy**: perbaikan context pasca QPR3 (a6010: "sepolicy: fix gnss contexts after
  14 QPR3").

---

## 6. Keputusan yang harus diambil (sebelum eksekusi)

| # | Keputusan | Opsi | Catatan |
|---|---|---|---|
| 1 | Jalur kamera 21 | hal3on1 (adopsi) vs port HAL1 balik vs cari device official HAL1 | Pemblokir; perlu uji coba kecil dulu |
| 2 | Basis 21 | UL `lineage-21.0` (beku 2025-04-04) vs **official** `lineage-21.0` + seri patch (pola M0–M6) | Kalau meneruskan pola migrasi: official 21 menerima ASB (verifikasi tanggal ASB terbaru saat itu) |
| 3 | FBE | aktif vs tetap polos | Perangkat uji vs data pribadi |
| 4 | PSI backport | ya/tidak | Peningkatan lmkd, bukan syarat |
| 5 | Spoof kernel version | ya/tidak | Hanya untuk lolos VTS/VINTF |

---

## 7. Risiko

| Risiko | Keterangan |
|---|---|
| Kamera = pekerjaan besar tak terukur | hal3on1 belum pernah dipakai di A37; blob berbeda dari a6010 |
| UL 21 beku | Kalau basis UL, ASB berhenti di 2025-03 seperti 20 — tujuan migrasi ke official akan berlaku juga di 21 |
| RIL di 21 belum terbukti | di 20 beres 1 baris prop; di 21 radio stack bergerak (wrapper 1.4 eksis di a6010) |
| Disk/uji | build 21 butuh tree baru (re-init atau tree paralel) + siklus uji perangkat penuh |

---

## Lampiran A — Perintah reproduksi data studi ini

```bash
# A.1 Konfigurasi kernel yang berjalan di perangkat (ROM 20):
adb shell 'zcat /proc/config.gz | grep -E "BINDER|PSI|BPF|MEMFD|EXFAT"'

# A.2 Binder TXN_SECURITY_CTX di kernel A37 (branch lineage-20, 8cc1519):
grep -n "TXN_SECURITY_CTX" kernel/oppo/msm8939/drivers/staging/android/binder.c
grep -n "FLAT_BINDER_FLAG" kernel/oppo/msm8939/include/uapi/linux/android/binder.h

# A.3 Flags legacy masih ada di vendor_lineage 21 (BoardConfigSoong.mk):
curl -s https://raw.githubusercontent.com/LineageOS-UL/android_vendor_lineage/lineage-21.0/config/BoardConfigSoong.mk \
  | grep -E "has_legacy_camera_hal1|has_memfd_backport|uses_qcom_bsp_legacy"

# A.4 Kernel a6010 21 tetap 3.10.108:
curl -s https://raw.githubusercontent.com/acroreiser/android_kernel_lenovo_a6010/lineage-21/Makefile \
  | grep -E "^VERSION|^PATCHLEVEL|^SUBLEVEL"
# delta defconfig 21:
curl -s https://raw.githubusercontent.com/acroreiser/android_kernel_lenovo_a6010/lineage-21/arch/arm/configs/lineageos_a6010_defconfig \
  | grep -E "PSI|BINDERFS|BPF_SYSCALL|MEMFD_CREATE|TREBLE_SPOOF"

# A.5 Branch UL untuk 21 (contoh; ulangi per repo):
for r in android_packages_modules_adb android_hardware_ril android_device_qcom_sepolicy \
         android_system_bpf android_vendor_lineage android_frameworks_av \
         android_system_core android_packages_modules_Bluetooth android_art \
         android_external_perfetto; do
  curl -s "https://api.github.com/repos/LineageOS-UL/$r/branches?per_page=100" \
    | grep -o '"name": "lineage-21.0[a-z0-9-]*"'
done

# A.6 libcameraservice A14 TIDAK punya device1/ (pembanding: android-13 punya):
curl -s "https://android.googlesource.com/platform/frameworks/av/+/refs/tags/android-14.0.0_r67/services/camera/libcameraservice/?format=JSON"
# CameraProviderManager UL 21 tanpa DeviceInfo1:
curl -s https://raw.githubusercontent.com/LineageOS-UL/android_frameworks_av/lineage-21.0/services/camera/libcameraservice/common/CameraProviderManager.cpp \
  | grep -c "initializeDeviceInfo<DeviceInfo1>"        # -> 0

# A.7 Commit kamera di UL frameworks_av 21 (yang ADA hanyalah helper, bukan HAL1):
curl -s "https://api.github.com/repos/LineageOS-UL/android_frameworks_av/commits?sha=lineage-21.0&per_page=100" \
  | python3 -c "import json,sys; [print(c['sha'][:8], c['commit']['message'].split(chr(10))[0]) for c in json.load(sys.stdin) if 'amera' in c['commit']['message']]"
```

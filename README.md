# android_build_oppo_A37-20

Rencana dan build kit **LineageOS 20 (Android 13, SDK 33)** untuk
**OPPO A37 / A37f / A37fw** — Qualcomm MSM8916 (Snapdragon 410), kernel 3.10.108,
2 GB RAM, Adreno 306.

> ## Status: **Fase 1–8 selesai** (5 Agustus 2026)
>
> | Fase | Status |
> |---|---|
> | **1 Kernel** | ✅ build — branch `lineage-20` @ `8cc1519`, zip AnyKernel3 siap. Uji di perangkat (1.5b) menunggu pemilik |
> | **2 Manifest & sync** | ✅ **`lunch lineage_A37-userdebug` berhasil** — `PLATFORM_VERSION=13` |
> | **3 Device tree** | ✅ **seluruh pemblokir kati beres, `m nothing` exit 0** — device tree @ `7938923` |
> | **4 VINTF** | ✅ **nol perubahan source** — sepolicy 33.0 ter-injeksi `assemble_vintf`; manifest terakit identik ROM jangkar. Catatan `check_vintf_compatible` → PLAN §4.7 |
> | **5 SEPolicy** | ✅ **`m selinux_policy` exit 0** — layout sepolicy identik ROM yang boot; tiga pemblokir dibereskan (PLAN §5.1b–5.1d). ⚠️ `apply-legacy-patches.sh` punya langkah baru |
> | **6 Vendor blobs** | ✅ **set 19.1 dipertahankan** (320 terpasang, nol hilang); HAL iop dibuang dari manifest (PLAN §6.2); `verify-rom.sh` diperluas |
> | **7 Init & rootdir** | ✅ **nol perubahan source** — rc file lolos verifier init A13; ueventd gate API 21 terbuka |
> | **8 Build** | ✅ **`m -j6 bacon` rc=0** — zip 588 MB; `verify-rom.sh` LOLOS semua; 7 pemblokir dibereskan (PLAN §8.1a–d), termasuk 5 pin anti-hanyut baru |
> | 9 Boot pertama | berikutnya — menunggu pemilik perangkat |
>
> ⚠️ **Baca lingkupnya dengan benar:** `m nothing` hanya **membaca makefile**, tidak
> mengompilasi apa pun. Kegagalan kompilasi nyata belum tersentuh — validasi
> sesungguhnya `mka bacon` di Fase 8. "Fase 3 ✅" berarti *build system menerima
> device tree*, bukan *ROM bisa dibangun*.
>
> Tree di `/root/los20`: 1213 project, 0 HEAD kosong, 131 GB.
>
> Pendahulunya: [`a37-19.1`](../a37-19.1) — LineageOS 19.1, **boot sampai homescreen di
> perangkat nyata**, kamera depan+belakang dan Bluetooth berfungsi, enam kegagalan boot
> (10.A–10.F) sudah ditemukan akarnya dan diperbaiki. Seluruh temuannya dibawa ke sini.

---

## Perubahan terbesar dari 19.1: basis manifest

```bash
repo init -u https://github.com/LineageOS-UL/android.git -b lineage-20.0 --git-lfs
```

**Bukan** `LineageOS/android`. `LineageOS-UL` ("Ultra Legacy") memasang **37 fork legacy**
lewat `snippets/losul.xml`. Yang di 19.1 harus di-repopick manual setiap habis `repo sync`
sekarang datang sendiri — dan isinya sudah diverifikasi satu per satu, bukan dipercaya
dari namanya:

| Kebutuhan | Di 19.1 | Di 20 (fork UL) |
|---|---|---|
| `adb` di FunctionFS kernel 3.10 | repopick 326385 (ABANDONED) | ✅ `transport_legacy.cpp` ada |
| Camera HAL1 | 22+1 patch + revert `f224255c` | ✅ `CameraProviderManager.cpp:1667` → `case 1: initializeDeviceInfo<DeviceInfo1>` |
| Gerbang eBPF / netd kernel < 4.9 | repopick 320591 + 320592 | ✅ fork `system/bpf`, `system/netd` |
| Gerbang `memfd_create` | repopick 318097 + 287706 | ✅ fork `art`, `external/perfetto` |
| `sepolicy-legacy` | pin manual | ✅ `device/qcom/sepolicy-legacy` @ `lineage-20.0-legacy` |

**9 repopick + 23 patch kamera → nol.**

⚠️ Tapi catat: lini `lineage-20.0` UL **beku sejak 2025-04-04**, ASB terbaru yang dilacaknya
**2025-03** (branch `lineage-19.1` dan `lineage-21.0` beku di tanggal yang sama). Fungsi
legacy yang kita butuhkan sudah lengkap di dalamnya dan terbukti jalan di ROM gt58wifi —
tapi untuk paritas keamanan perlu set patch retiredtab (`20/UL-patches-2024/`), dikerjakan
setelah boot pertama. Rinciannya di `PLAN.md` §1.1 dan §1.4.

---

## Isi

| Berkas | Keterangan |
|---|---|
| **[`PLAN.md`](PLAN.md)** | Dokumen utama. 10 fase, setiap klaim teknis diikat ke sumber yang bisa diverifikasi |
| **[`HANDOFF.md`](HANDOFF.md)** | **Konteks lengkap untuk melanjutkan tanpa riwayat percakapan** — status, keputusan yang sudah diambil, jebakan yang pernah menjebak |
| [`A37-20.xml`](A37-20.xml) | Local manifest. Seluruh SHA diverifikasi 5 Agustus 2026 |
| **[`ref/evidence/`](ref/evidence/)** | **Hasil bedah ROM LOS 20 msm8916 yang terbukti boot** — `build.prop`, VINTF, fstab, `init*.rc`, daftar sepolicy, header boot.img |
| [`tools/repo-doctor.sh`](tools/repo-doctor.sh) | Perbaiki dua kegagalan `repo sync` yang benar-benar dialami saat menyiapkan tree ini |
| [`tools/check-drift.sh`](tools/check-drift.sh) | Deteksi project yang hanyut dari era LineageOS-UL — penyebab pemblokir build pertama Fase 2 |
| [`tools/apply-legacy-patches.sh`](tools/apply-legacy-patches.sh) | 2 tambalan + 5 penjaga regresi. **Wajib dijalankan ulang tiap habis `repo sync`** |
| `tools/build-kernel-zip.sh` | Bangun kernel + bungkus zip AnyKernel3 — uji kernel tanpa membangun ROM penuh |
| `tools/envsetup-a37.sh` | Bersihkan environment sisa proyek lain lalu `lunch`. Source ini, jangan `lunch` langsung |
| `tools/verify-rom.sh` | Verifikasi ROM **sebelum** flash |
| `tools/qbootimg.py` | Unpack `boot.img` bergaya Qualcomm (header ber-`dt_size`) |
| `research/` | 10 clone referensi + artikel dev.to yang sudah diekstrak |

---

## Lima jangkar bukti

| Jangkar | Sumber | Menjawab |
|---|---|---|
| **A** | [`LineageOS-UL`](https://github.com/LineageOS-UL) `lineage-20.0` | Apa yang sudah disediakan hulu |
| **B** | [`meghs-playground/device_oppo_A37`](https://github.com/meghs-playground/device_oppo_A37) `lineage-20` | Bahwa A13 pernah boot **di A37** ([tulisannya](https://dev.to/meghthedev/booting-modern-android-on-ancient-hardware-how-i-revived-a-dead-device-with-android-13-1581)) |
| **C** | [`acroreiser/android_device_lenovo_a6010`](https://github.com/acroreiser/android_device_lenovo_a6010) `lineage-20.0` | Daftar periksa flag A13 msm8916 |
| **D** | [`retiredtab/LineageOS-build-manifests`](https://github.com/retiredtab/LineageOS-build-manifests) `20/msm8916` | Cara merakitnya |
| **E** | **ROM `lineage-20.0-20260505-UNOFFICIAL-gt58wifi.zip`, dibedah utuh** | **Nilai akhir yang benar-benar jalan** |

### Jangkar E — ROM LineageOS 20 yang terbukti boot di msm8916

Diunduh dan dibedah 5 Agustus 2026; hasilnya di [`ref/evidence/`](ref/evidence/).
Samsung Galaxy Tab A 8.0 (SM-T350) — **device berbeda, chipset dan versi kernel sama**.

```
post-sdk-level  33                                       ← Android 13
Linux version   3.10.108 (gcc 4.9.x) #39 SMP PREEMPT     ← versi kernel identik A37
cmdline         ... buildvariant=userdebug               ← TANPA androidboot.selinux=permissive
```

Yang dijawabnya, dengan nilai yang terbukti dan bukan dugaan:

| | Nilai di ROM yang boot |
|---|---|
| Treble | `ro.treble.enabled=false`, `/vendor` symlink ke `/system/vendor` |
| Userspace | `ro.zygote=zygote32`, `abilist64=` kosong, `ro.vndk.version=current` |
| APEX | **flattened** — `com.android.adbd` direktori, bukan `.apex` |
| sepolicy | `<version>33.0</version>`; `/sepolicy` monolitik di root + `*.cil` di `/system/etc/selinux/` |
| RenderEngine | `debug.renderengine.backend=threaded` (non-Skia) |
| SELinux | **enforcing** — `ro.secure=1`, tidak ada flag permissive |
| Audio HAL | `@2.0` |
| Camera | `camera.provider@2.4` + `camera.vendor.msm8916.so` (pola wrapper yang sama dengan A37) |
| Enkripsi | `cryptfshw@1.0` **dideklarasikan**, tapi fstab `/data` **tanpa `encryptable=`** |

Dan yang membuktikan fork UL bukan cuma teori — string di biner yang dirilis:

```
$ strings adbd | grep legacy
packages/modules/adb/transport_legacy.cpp
packages/modules/adb/daemon/usb_legacy.cpp
$ strings libcameraservice.so | grep -i CameraHardwareInterface
_ZN7android35CameraHardwareInterfaceFlashControl...
```

⚠️ **Batasnya:** tablet ini Wi-Fi-only dan tidak punya `android.hardware.radio` —
**RIL tidak terjawab**. Panel, kamera, dan sensor A37 juga di luar jangkauannya.

### Tiga koreksi yang dipicu jangkar E

Draf pertama rencana ini keliru di tiga tempat, dan bukti ROM membetulkannya:

| Draf pertama | Setelah bedah ROM |
|---|---|
| Audio naik ke `@7.1` | **Tetap `@6.0`.** ROM yang boot pakai `@2.0`; rentang 2.0–7.1 semuanya jalan. Yang wajib: versi manifest **cocok** dengan `-impl` yang dibangun |
| "Cabut FDE" | **Pertahankan `cryptfshw`.** Yang membuat `/data` polos adalah fstab tanpa `encryptable=`, bukan pencabutan HAL — satu baris, bukan tiga berkas |
| Casefold wajib dimatikan | **Defensif saja.** `emulated_storage.mk` tidak di-inherit target nyata mana pun di LOS 20, dan ROM yang boot tidak menyetelnya |

Validasi silang yang tetap berlaku — a6010 sampai pada kesimpulan yang sama persis dengan
yang kita temukan lewat kegagalan di perangkat:

```make
debug.renderengine.backend=gles      # = perbaikan 10.B kita (Skia mati di Adreno 306)
ro.product.first_api_level=21        # = perbaikan 10.A kita (/vendor/ueventd.rc tak dibaca)
```

`GLES` masih ada dan masih jadi `default:` di `RenderEngine.cpp` Android 13 (baru dicabut di
A14), jadi perbaikan 10.B tetap sah. `threaded` milik retiredtab adalah cadangan yang terbukti.

---

## Yang diperbaiki dari tree A37 milik meghs

Tree meghs adalah bukti berharga, tapi **tidak diadopsi sebagai basis**:

| Milik meghs | Masalahnya | Sikap kita |
|---|---|---|
| `product_launched_with_k.mk` → `first_api_level=19` | Mereproduksi bug **10.A** — SurfaceFlinger crash-loop, `/vendor/ueventd.rc` (220 aturan) tak pernah dibaca | `PRODUCT_SHIPPING_API_LEVEL := 21` + `BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true` |
| `android.hardware.audio@5.0-impl` | a6010 memakai `@7.1`; audio meghs **tidak pernah berfungsi** | `@7.1` |
| `manifest.xml` masih deklarasi `IPictureAdjustment` | Persis penyebab **10.C** — Watchdog membunuh `system_server` tiap ~2 menit | Dicabut |
| Bergantung `device/cyanogen/msm8916-common` | Pohon kedua yang harus ikut dirawat | Tree kita **mandiri** sejak 18.1 |
| `KERNEL_TOOLCHAIN := /mnt/data/losul/tc/bin` | Path absolut mesin penulis | `prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9`, sudah ada di tree |

---

## Kernel: hampir tidak ada pekerjaan

Delta diukur dari isi berkas, bukan hitungan commit:

| Berkas | retiredtab 19.1 → 20.0 | **kernel kita 19.1 → retiredtab 20.0** |
|---|---|---|
| `binder.c` | 1363 baris | **233 baris** |
| `binder_alloc.c` | 196 baris | **94 baris** |

Dari 233 baris itu, **satu** yang fungsional: `down_read` → `down_write` pada `mm->mmap_sem`
(perbaikan UAF `alloc->vma` yang balapan dengan `munmap`). Sisanya `CONFIG_BINDER_SHUT_UP`
dan penyenyapan log.

Kernel kita sudah punya `F_SEAL_FUTURE_WRITE`, `RT_GROUP_SCHED` mati, dan
`include/uapi/linux/android/binder.h`. **Android 13 tidak menuntut fitur kernel baru.**

---

## Membangun

```bash
mkdir -p ~/los20 && cd ~/los20
repo init -u https://github.com/LineageOS-UL/android.git -b lineage-20.0 --git-lfs
mkdir -p .repo/local_manifests
cp /path/ke/repo-ini/A37-20.xml .repo/local_manifests/

# JANGAN pakai --no-tags. Remote aosp dipin ke refs/tags/android-13.0.0_r75
# dan --no-tags membuat 1051 project AOSP gagal checkout. Lihat PLAN.md §0.3.
repo sync -c -j8 --force-sync --no-clone-bundle

# Kalau sync pernah terputus:
/path/ke/repo-ini/tools/repo-doctor.sh ~/los20

source /path/ke/repo-ini/tools/envsetup-a37.sh
lunch lineage_A37-userdebug        # userdebug, BUKAN eng — lihat 19.1 §10.F
mka bacon
```

⚠️ **Disk.** Tree 131 GB + `out/` ± 45–50 GB. Sisa 127 GB per 5 Agustus 2026 — cukup,
tanpa margin. Bersihkan sebelum `mka bacon`.

---

## Risiko terbesar yang diakui

**RIL.** Belum pernah berfungsi di 19.1 kita, dan tidak berfungsi di tree meghs
("no signal"). Tidak ada satu pun sumber referensi yang membuktikan RIL jalan di A37 pada
Android 12+. Jangan jadikan RIL kriteria keberhasilan boot pertama.

**`/data` tidak terenkripsi.** fstab `/data` tanpa `encryptable=` — sama seperti ROM msm8916
Android 13 yang boot. FBE di kernel 3.10 adalah proyek tersendiri, di luar lingkup.
Perangkat uji saja, bukan untuk data pribadi.

---

## Lisensi

Dokumentasi dan skrip: bebas dipakai.

Berkas di [`ref/evidence/`](ref/evidence/) adalah potongan konfigurasi hasil ekstraksi dari
ROM turunan LineageOS pihak ketiga (`lineage-20.0-20260505-UNOFFICIAL-gt58wifi`, retiredtab),
disimpan untuk keperluan analisis dan interoperabilitas. ROM-nya sendiri tidak
di-redistribusi — lihat `.gitignore` dan `PLAN.md` Lampiran B untuk cara mengunduh dan
membedahnya ulang.

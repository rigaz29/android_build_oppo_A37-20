# Rencana Porting LineageOS 20 — OPPO A37f (MSM8916)

> **Status:** Rencana. Belum ada fase yang dikerjakan.
> **Target:** LineageOS 20 (Android 13, SDK 33) untuk OPPO A37 / A37f / A37fw
> **Baseline:** LineageOS 19.1 — proyek `/root/a37-19.1`, **boot sampai homescreen di
> perangkat nyata**, kamera depan+belakang dan Bluetooth berfungsi (dijeda 5 Agustus 2026)
> **Chipset:** Qualcomm MSM8916 (Snapdragon 410), kernel 3.10.108, 2 GB RAM, Adreno 306
> **Basis source:** `LineageOS-UL/android` branch `lineage-20.0` — **bukan** `LineageOS/android`
> **Jangkar bukti:** ROM LineageOS 20 pihak ketiga yang **terbukti boot di msm8916 dengan
> kernel 3.10.108**, dibedah utuh (§1.5) — device berbeda, chipset dan versi kernel sama
> Terakhir diperbarui: 5 Agustus 2026

Dokumen ini melanjutkan `/root/a37-19.1/PLAN.md`. Enam kegagalan boot 19.1 (10.A–10.F) sudah
ditemukan akarnya dan diperbaiki di perangkat; seluruh temuannya dibawa ke sini sebagai
modal, bukan diulang dari nol.

---

## 0. Ringkasan eksekutif — apa yang berubah dari 19.1

Delapan keputusan di bawah adalah inti rencana ini. Semuanya diturunkan dari pembacaan
source tree yang sudah di-sync (`/root/los20`, 1215 project, 131 GB) dan dari empat pohon
referensi msm8916 yang di-clone — bukan dari asumsi.

| # | Proyek 19.1 | Rencana 20 ini | Bukti |
|---|---|---|---|
| 1 | `repo init -u LineageOS/android`, lalu **9 repopick** Gerrit ABANDONED + 23 patch kamera + revert `libbfqio`, dijalankan ulang tiap `repo sync` lewat `tools/apply-legacy-patches.sh` | `repo init -u **LineageOS-UL/android** -b lineage-20.0`. **Nol repopick.** 37 fork legacy sudah terpasang di `snippets/losul.xml` | Isi fork diverifikasi satu per satu, §1.1 |
| 2 | Camera HAL1 dipulihkan manual: 22 patch `frameworks/av` + 1 `frameworks/base` + revert `f224255c` (10.D) | **Sudah ada di fork UL.** `CameraProviderManager.cpp:1667` = `case 1: initializeDeviceInfo<DeviceInfo1>` | §1.1 |
| 3 | `adb` mustahil muncul tanpa Gerrit 326385 (§1.6 dok 19.1) | **Sudah ada di fork UL.** `packages/modules/adb/transport_legacy.cpp` ada | §1.1 |
| 4 | Device tree A37 mandiri, di-rebase dari 18.1 | **Tetap mandiri**, di-rebase dari `lineage-19.1-rb` @ `ce39cf5`. **Tidak** mengadopsi tree `meghs-playground` yang menggantung pada `device/cyanogen/msm8916-common` | §2.1, §3.9 |
| 5 | Backport binder = satu-satunya pekerjaan kernel yang benar-benar baru | **Kernel praktis selesai.** `binder.c` kita hanya beda **233 baris** dari kernel LOS 20 retiredtab; delta 19.1→20.0 milik retiredtab sendiri 1363 baris | §3.6, Fase 1 |
| 6 | Enkripsi: FDE aktif (`cryptfshw@1.0`) | **`/data` tidak dienkripsi** — dan yang membuat `/data` polos adalah **tidak adanya `encryptable=` di fstab**. ⚠️ Koreksi Fase 3: ROM gt58wifi yang boot **mendeklarasikan** `cryptfshw@1.0` di VINTF tapi **tidak mengirim binernya**, dan source HAL-nya sudah dicabut hulu di LOS 20 — jadi deklarasi di tree kita ikut dicabut (aturan 10.C), sementara `/data` polos tetap via fstab | §3.7 |
| 7 | Audio HAL `@6.0-impl` + manifest `@6.0` (pasangan konsisten di tree) | **Tetap `@6.0`.** Rekomendasi `@7.1` di draf pertama dokumen ini **dibatalkan** — ROM msm8916 A13 yang boot justru memakai `@2.0`. Tidak ada versi "benar"; yang wajib adalah versi manifest **cocok dengan `-impl` yang dibangun** | §3.8 |
| 8 | `PRODUCT_SHIPPING_API_LEVEL := 21` ditemukan lewat kegagalan 10.A | **Dipertahankan 21.** Selain memperbaiki 10.A, nilai ini secara struktural mematikan gerbang `PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS` (aktif hanya bila ≥ 29) dan `PRODUCT_SET_DEBUGFS_RESTRICTIONS` (≥ 31) — dua pemblokir yang harus di-hack oleh porter lain | `build/make/core/product_config.mk:468-478` |

**Satu kalimat:** 19.1 menghabiskan sebagian besar tenaganya untuk memaksa userspace modern
berjalan di atas perangkat lama; untuk 20 pekerjaan itu **sudah dilakukan hulu oleh
LineageOS-UL**, sehingga fokus bergeser ke hal yang memang khas A37: device tree, VINTF,
blob, dan enam bug yang sudah kita pecahkan sendiri.

---

## 1. Jangkar bukti

### 1.0 Struktur bukti dokumen ini

Rencana 19.1 punya jangkar tunggal yang sangat kuat: ROM 19.1 pihak ketiga yang terbukti
boot **di A37**, dibedah utuh.

Draf pertama dokumen ini menyatakan jangkar setara tidak ada untuk LineageOS 20. **Itu sudah
tidak berlaku.** ROM `lineage-20.0-20260505-UNOFFICIAL-gt58wifi.zip` (retiredtab) sudah
diunduh dan dibedah utuh — **msm8916, kernel 3.10.108, SDK 33** (§1.5). Device-nya berbeda
(Samsung Tab A 8.0), chipset dan versi kernelnya sama persis dengan A37.

Batasnya harus dinyatakan jelas: jangkar itu menjawab pertanyaan **level chipset** dan
**level Android 13**, bukan level A37. Tablet itu Wi-Fi-only, jadi **RIL tetap tidak
terjawab**; panel, kamera, dan sensornya juga berbeda.

Lima jangkar, masing-masing dengan perannya:

| | Sumber | Menjawab |
|---|---|---|
| **A** | LineageOS-UL `lineage-20.0` | Apa yang sudah disediakan hulu (§1.1) |
| **B** | `meghs-playground/device_oppo_A37` `lineage-20` | Bahwa A13 pernah boot **di A37** (§1.2) |
| **C** | `acroreiser/android_device_lenovo_a6010` `lineage-20.0` | Daftar periksa flag A13 msm8916 (§1.3) |
| **D** | `retiredtab` resep `20/msm8916` | Cara merakitnya (§1.4) |
| **E** | **ROM gt58wifi yang boot, dibedah** | **Nilai akhir yang benar-benar jalan** (§1.5) |

Plus modal yang tidak dimiliki proyek 19.1 saat dimulai: **ROM 19.1 kita sendiri yang boot di
perangkat ini**, dengan enam akar masalah yang sudah terbukti.

### 1.1 Jangkar A — LineageOS-UL, dan verifikasi isinya

`LineageOS-UL` (fork "Ultra Legacy" oleh Khalvat-M) menyediakan `android` (manifest) dengan
branch `lineage-20.0`.

⚠️ **Koreksi terhadap draf pertama dokumen ini.** Draf itu menyebut UL "terpelihara sampai
ASB 2026-06, aktif bukan arsip". **Itu salah** — commit tersebut berasal dari checkout
manifest LineageOS hulu yang sempat tercampur saat `repo init` pertama gagal (§0.3). Fakta
yang benar, dibaca dari `.repo/manifests` dan dari HEAD tiap fork di `/root/los20`:

| | Terakhir bergerak |
|---|---|
| `LineageOS-UL/android` branch `lineage-20.0` | **2025-04-04** (`03ea6ac`) |
| ASB terbaru yang dilacak branch itu | **2025-03** (`b76ffb8`) |
| `frameworks/base`, `frameworks/native`, `system/core`, `vendor/lineage` | 2025-04-04 |
| `frameworks/av` | 2024-09-21 |
| `packages/modules/adb` | 2023-06-21 |
| branch `lineage-19.1` dan `lineage-21.0` | **2025-04-04 juga** — ketiganya beku bersamaan |

Jadi per Agustus 2026 seluruh lini UL **beku ± 16 bulan**. Ini tidak membatalkan nilainya —
fungsi legacy yang kita butuhkan sudah ada di dalamnya dan terbukti jalan di ROM gt58wifi
(§1.5) — tapi mengubah dua hal:

1. **Patch keamanan berhenti di ASB 2025-03** untuk komponen yang di-fork UL. Bukan pemblokir
   boot; harus dinyatakan terbuka.
2. **Set patch retiredtab jadi lebih relevan, bukan kurang** (§1.4). ROM gt58wifi bertanggal
   2026-05 dengan `security_patch=2026-05-01` justru karena retiredtab menambal sendiri di
   atas basis UL yang beku.

`.repo/manifests/snippets/losul.xml` memasang **37 project** ke remote `losul`. Nama repo
bukan bukti isinya, jadi setiap fungsi kritis diperiksa langsung:

| Yang dibutuhkan | Di 19.1 didapat dari | Verifikasi di UL `lineage-20.0` | Hasil |
|---|---|---|---|
| adb di FunctionFS kernel 3.10 | repopick 326385 (ABANDONED) | `packages/modules/adb/transport_legacy.cpp`, `daemon/usb_legacy.cpp` | ✅ ADA |
| Camera HAL1 | 22+1 patch retiredtab, revert `f224255c` | `frameworks/av` `CameraProviderManager.cpp:1667` → `case 1: initializeDeviceInfo<DeviceInfo1>` | ✅ ADA |
| " | " | `services/camera/libcameraservice/device1/CameraHardwareInterface.h`, `camera/CameraParameters.cpp` | ✅ ADA |
| Gerbang eBPF kernel < 4.9 | repopick 320591 (W1) | `system/bpf/bpfloader/BpfLoader.cpp` | ✅ ADA |
| Gerbang netd | repopick 320592 (W2) | `system/netd` fork UL | ✅ ADA |
| Gerbang `memfd_create` | repopick 318097 + 287706 | `art`, `external/perfetto` fork UL | ✅ ADA |
| `sepolicy-legacy` | pin manual ke UL | `device/qcom/sepolicy-legacy` @ `lineage-20.0-legacy` | ✅ ADA di tree |

Perintah verifikasi ada di Lampiran B.

`case 1: initializeDeviceInfo<DeviceInfo1>` adalah baris yang paling menentukan. Di
`frameworks/av` hulu, baris itu `ALOGE("Unsupported HIDL device HAL major version 1") ;
return BAD_VALUE;` — persis penyebab bug **10.D** (kamera nol perangkat) yang menghabiskan
23 patch di 19.1. Di fork UL ia sudah kembali.

### 1.2 Jangkar B — `meghs-playground/device_oppo_A37` branch `lineage-20`

Device tree **A37 untuk Android 13** yang penulisnya mendokumentasikan proses boot-nya di
artikel dev.to ("Booting modern Android on ancient hardware"). Ini satu-satunya bukti
langsung bahwa A13 pernah boot di perangkat ini.

Yang dikonfirmasi tree ini dan **kita ikuti**:

- `TARGET_KERNEL_SOURCE := kernel/oppo/msm8939`, `TARGET_KERNEL_ARCH := arm64`,
  `TARGET_KERNEL_CONFIG := lineageos_a37f_defconfig` — **keluarga kernel yang sama persis
  dengan kernel A37 kita.** Tidak ada alasan pindah arsitektur.
- `TARGET_HAS_LEGACY_CAMERA_HAL1 := true`, `USE_DEVICE_SPECIFIC_CAMERA := true`
- `OVERRIDE_TARGET_FLATTEN_APEX := true` — APEX tetap flattened di A13
- `MALLOC_SVELTE := true`, `BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive`
- Camera HAL1 lewat `android.hardware.camera.provider@2.5` instance `legacy/0`
- `vendor.lineage.health-service.default` (Lineage Health HAL, baru di 20)

Yang **tidak** kita ikuti, dan alasannya berbasis bukti:

| Milik meghs | Masalahnya | Sikap kita |
|---|---|---|
| `product_launched_with_k.mk` → `first_api_level = 19` | **Mereproduksi bug 10.A.** `system/core/init/ueventd.cpp` menggerbangi pembacaan `/vendor/ueventd.rc` pada `first_api_level <= __ANDROID_API_S__`; nilai 19 lolos gerbang, tapi 19.1 membuktikan properti ini **kosong saat runtime** kecuali `BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true` dipasang | `PRODUCT_SHIPPING_API_LEVEL := 21` + split ON. a6010 juga memakai `product_launched_with_l.mk` (API 21) |
| `android.hardware.audio@5.0-impl` | a6010 lineage-20.0 memakai `@7.1-impl`. Artikel meghs menyebut audio HAL crash dan tidak pernah selesai | `@7.1`, §3.8 |
| Bergantung `device/cyanogen/msm8916-common` | Satu pohon lagi yang harus dirawat untuk A13 | Tree kita mandiri sejak 18.1 |
| `KERNEL_TOOLCHAIN := /mnt/data/losul/tc/bin` | Path absolut milik mesin penulis | Pakai `prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9` yang **sudah ada di tree** |
| `bluetooth.device.default_name=Redmi 2` | Salinan dari wt88047 | Perbaiki |

### 1.3 Jangkar C — `acroreiser/android_device_lenovo_a6010` branch `lineage-20.0`

Device tree msm8916 A13 paling matang yang ada. acroreiser adalah orang yang membantu meghs
(disebut di artikel). Dipakai sebagai **daftar periksa flag A13**:

```make
TARGET_HAS_MEMFD_BACKPORT := true
TARGET_KERNEL_LLVM_BINUTILS := false        # default-nya true di LOS 20
TARGET_KERNEL_CLANG_COMPILE := false
TARGET_KERNEL_ADDITIONAL_FLAGS := HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"
BOARD_RAMDISK_USE_XZ := true
DISABLE_APEX_TEST_MODULE := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
include device/qcom/sepolicy-legacy/sepolicy.mk
BOARD_KERNEL_CMDLINE += androidboot.memcg=true androidboot.init_fatal_reboot_target=recovery
```

dan properti yang **sama persis dengan kesimpulan 19.1 kita** — validasi silang yang kuat:

```make
debug.renderengine.backend=gles      # = perbaikan 10.B kita
ro.product.first_api_level=21        # = perbaikan 10.A kita
PRODUCT_FS_CASEFOLD := 0             # = temuan §1.3 dok 19.1
PRODUCT_QUOTA_PROJID := 1
external_storage.casefold.enabled=0
external_storage.sdcardfs.enabled=0
ro.config.low_ram=true               # go_defaults_custom.mk
ro.vndk.version=current
```

Dua kesimpulan independen bertemu di titik yang sama. Itu bukti yang jauh lebih kuat
daripada salah satunya sendirian.

### 1.4 Jangkar D — `retiredtab/LineageOS-build-manifests` direktori `20/msm8916`

Resep msm8916 untuk LineageOS 20, dengan instruksi build yang eksplisit. Kalimat
pembukanya menutup perdebatan soal basis manifest:

> *"1. We are using LineageOS-UL for the repos. `repo init -u
> https://github.com/LineageOS-UL/android.git -b lineage-20.0 --git-lfs`"*

`20/msm8916/msm8916-20.xml` juga memberi jawaban untuk qcom-caf (§3.5) dan mengonfirmasi
revert `libbfqio` masih relevan — **tapi periksa dulu**: fork `vendor/lineage` UL mungkin
sudah memuatnya (Fase 2.4).

Resep retiredtab mencantumkan sejumlah `git am` patch besar (`frameworks_av-aug-2024.patch`
1,7 MB, `frameworks-base-june-2024.patch` 746 KB) di `20/UL-patches-2024/`.

⚠️ **Bobotnya naik setelah koreksi §1.1.** Draf pertama menyarankan mengabaikannya karena
"fork UL sudah lebih maju". Basis UL ternyata beku di 2025-04 / ASB 2025-03, sedangkan ROM
gt58wifi bertanggal 2026-05 — selisih itu **justru diisi oleh patch-patch ini**. Jadi:

- Untuk sekadar **boot**: tidak diperlukan. UL apa adanya sudah cukup.
- Untuk **paritas keamanan** dengan ROM gt58wifi: inilah jalannya, dan retiredtab sudah
  mendokumentasikan urutan stash → sync → `git am` di `20-msm8916-build-instructions.txt`.

Tetap jangan diterapkan borongan tanpa membaca — beberapa patch device-spesifik Samsung.
Kerjakan setelah boot pertama berhasil, sebagai fase tersendiri.

### 1.5 Jangkar E — ROM LineageOS 20 yang terbukti boot di msm8916 (dibedah)

Sumber: `https://sourceforge.net/projects/retiredtab/files/SM-T350/20/lineage-20.0-20260505-UNOFFICIAL-gt58wifi.zip`
(616.170.438 byte, diunduh 5 Agustus 2026, `unzip -t` bersih). Hasil bedah di `ref/evidence/`.

```
post-build           samsung/gt58wifixx/gt58wifi:7.1.1/NMF26X/T350XXU1CQJ5:user/release-keys
post-sdk-level       33                      ← Android 13
post-security-patch  2026-05-01
pre-device           gt58wifi,gt58wifixx,SM-T350
```

**Kernel — bukti paling langsung yang ada di dokumen ini:**

```
Linux version 3.10.108 (gcc version 4.9.x 20150123) #39 SMP PREEMPT Mon Nov 17 2025
```

**3.10.108, gcc 4.9, menjalankan SDK 33.** Versi kernel identik dengan A37. Selesai sudah
perdebatan apakah kernel 3.10 sanggup Android 13.

`boot.img` — geometri **identik dengan A37**:

| Field | gt58wifi | A37 |
|---|---|---|
| base / pagesize | `0x80000000` / 2048 | sama |
| ramdisk_offset / tags | `0x01000000` / `0x00000100` | sama |
| dt_size | 356352 (QCDT) | 210944 (QCDT) — sama jenis |
| `init` di ramdisk | ELF **32-bit ARM**, statis | sama |

⚠️ Dua perbedaan yang harus diingat: kernelnya **zImage 32-bit ARM** (A37 arm64 + userspace
32-bit), dan `CONFIG_IKCONFIG` **mati** sehingga `.config` **tidak bisa** diekstrak dari
boot.img. Baca `retiredtab/android_kernel_samsung_msm8916` `lineage-20.0`
`arch/arm/configs/msm8916_sec_defconfig` sebagai gantinya.

**cmdline — perhatikan yang TIDAK ada:**

```
console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F
ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci buildvariant=userdebug
```

**Tidak ada `androidboot.selinux=permissive`.** ROM ini jalan **enforcing**. meghs dan a6010
keduanya permissive; retiredtab membuktikan enforcing bisa dicapai di msm8916 A13.
Dan `buildvariant=userdebug` — sejalan dengan kesimpulan 10.F kita.

**Properti yang menjawab pertanyaan arsitektur** (`ref/evidence/*-build.prop`):

```
ro.build.version.sdk=33          ro.build.version.release=13
ro.treble.enabled=false          ← NON-TREBLE, sama seperti 19.1
ro.vndk.version=current          ← tanpa snapshot VNDK
ro.zygote=zygote32               ro.product.cpu.abi=armeabi-v7a
ro.system.product.cpu.abilist64= ← kosong, userspace 32-bit murni
ro.bionic.arch=arm               ro.bionic.cpu_variant=cortex-a53
debug.renderengine.backend=threaded   ← non-Skia (bukan gles, tapi sama-sama bukan Skia)
ro.opengles.version=196608       debug.hwui.use_buffer_age=false
ro.config.low_ram=false          ro.secure=1  ro.adb.secure=1  ro.debuggable=1
```

**Tata letak — sama polanya dengan 19.1:**

- `/vendor` → **symlink** ke `/system/vendor`. Non-treble.
- `/system/apex/com.android.adbd` adalah **direktori**, bukan `.apex`. **APEX flattened**
  masih dipakai di A13 → aturan lama "loop device wajib" tetap tidak berlaku.
- sepolicy: `/sepolicy` **monolitik di root** (936 KB) + `*.cil` di `/system/etc/selinux/`.
  Ini menjawab langsung pertanyaan "lokasi sepolicy berubah A12→A13" dari artikel meghs.

**VINTF — `ref/evidence/vendor-vintf-manifest.xml`:**

```xml
<sepolicy><version>33.0</version></sepolicy>
```

| HAL | Versi | Catatan untuk kita |
|---|---|---|
| `android.hardware.audio` / `.effect` | **2.0** | jauh di bawah dugaan; §3.8 |
| `android.hardware.camera.provider` | **2.4** | jalur Camera HAL1, bukan 2.5 |
| `graphics.allocator` / `composer` / `mapper` | 2.0 / 2.1 / **2.0** | mapper lebih rendah dari 19.1 A37 (2.1+3.0+4.0) |
| `vendor.qti.hardware.cryptfshw` | **1.0** | **FDE tetap dideklarasikan di A13**; §3.7 |
| `vendor.lineage.livedisplay` | 2.0 | |
| `android.hardware.radio` | **tidak ada** | tablet Wi-Fi-only → **RIL tidak terjawab** |

**Verifikasi biner — fork UL benar-benar dipakai di ROM yang dirilis:**

```
$ strings adbd | grep legacy
packages/modules/adb/transport_legacy.cpp        ← Gerrit 326385 hidup di ROM nyata
packages/modules/adb/daemon/usb_legacy.cpp

$ strings libcameraservice.so | grep -i CameraHardwareInterface
_ZN7android35CameraHardwareInterfaceFlashControl...   ← Camera HAL1 terkompilasi

$ ls /system/vendor/lib/hw/camera*
camera.msm8916.so  camera.vendor.msm8916.so         ← pola wrapper yang sama dengan A37
$ ls /system/vendor/bin/hw/ | grep camera
android.hardware.camera.provider@2.4-service
```

Ini menaikkan §1.1 dari "terverifikasi di source" menjadi **"terverifikasi di biner yang
berjalan di perangkat msm8916 nyata"**.

**fstab first-stage** (`ref/evidence/ramdisk-fstab.qcom`) — baris `/data`:

```
/dev/block/bootdevice/by-name/userdata /data ext4 noatime,nosuid,nodev,barrier=1,noauto_da_alloc \
    wait,check,latemount,reservedsize=128M
```

**Tidak ada `encryptable=` maupun `forceencrypt=`.** Jadi meskipun `cryptfshw@1.0`
dideklarasikan di VINTF dan HAL-nya dibangun, `/data` **tetap tidak terenkripsi**. §3.7.

---

## 2. Sumber daya

### 2.1 Repo kerja (milik proyek)

| Repo | Branch rencana | Basis | SHA basis |
|---|---|---|---|
| `rigaz29/rb_device_oppo_A37` | `lineage-20` (baru) | `lineage-19.1-rb` — **terbukti boot, kamera+BT jalan** | `ce39cf5` |
| `rigaz29/kernel_oppo_msm8939` | `lineage-20` (baru) | `lineage-19.1` — binder A12 + RT_GROUP_SCHED mati | `bf222bf` |
| `rigaz29/rb-vendor_oppo_A37` | `lineage-18.1` (dipakai apa adanya) | tidak berubah sejak 18.1 | `2e5c6f7` |
| repo ini | `A37-20.xml` | manifest lokal | — |

⚠️ Basis device tree adalah **`lineage-19.1-rb`**, bukan `lineage-19.1`. Branch `lineage-19.1`
berhenti di rebase 18.1→19.1; keenam perbaikan 10.A–10.F (`70f62be`, `17287cd`, `f5b96e5`,
`ce39cf5`) hanya ada di `-rb`. Salah pilih basis = mengulang seluruh Fase 10 dari nol.

### 2.2 Repo referensi (dibaca / cherry-pick), sudah di-clone ke `research/`

| Direktori | Sumber | Kegunaan | Status |
|---|---|---|---|
| `ul-manifest/` | `LineageOS-UL/android` `lineage-20.0` | manifest basis; `snippets/losul.xml` | ✅ dibaca |
| `dt-a37-meghs/` | `meghs-playground/device_oppo_A37` `lineage-20` | satu-satunya device tree A13 untuk A37 | ✅ dibaca |
| `common-meghs-20/` | `meghs-playground/device_cyanogen_msm8916-common` `lineage-20` | common tree pasangannya; VINTF `manifest.xml`-nya berguna | ✅ dibaca |
| `dt-a6010-20/` | `acroreiser/android_device_lenovo_a6010` `lineage-20.0` | daftar periksa flag A13 msm8916 | ✅ dibaca |
| `k-acro/` | `acroreiser/android_kernel_lenovo_a6010` | kernel 3.10 msm8916 A13 (32-bit) — rujukan, bukan basis | ✅ clone |
| `k-rt/` | `retiredtab/android_kernel_samsung_msm8916` `lineage-20.0` | **pembanding kernel utama**, riwayat linear | ✅ clone |
| `k-ours/` | `rigaz29/kernel_oppo_msm8939` `lineage-19.1` | basis kita | ✅ clone |
| `dt-a37-ours/` | `rigaz29/rb_device_oppo_A37` `lineage-19.1-rb` | basis kita | ✅ clone |
| `retiredtab/` | `retiredtab/LineageOS-build-manifests` | resep `20/msm8916` | ✅ clone |
| `devto-article.html` | artikel meghthedev | 8 temuan naratif | ✅ diekstrak |

Tidak dipakai tapi layak diingat: `msm8916-mainline` (kernel Linux mainline untuk msm8916).
Menarik secara teknis, **tidak relevan** untuk jalur ini — LineageOS 20 di A37 berdiri di
atas blob vendor Qualcomm 3.10, dan mainline berarti membuang seluruh blob itu. Itu proyek
lain, bukan fase dari proyek ini.

---

## 3. Delta terverifikasi Android 12 → Android 13

Setiap baris di bawah diverifikasi langsung di `/root/los20`, bukan dari catatan orang lain.

### 3.1 Variabel build yang jadi usang

`build/make/core/config.mk` mendeklarasikan 53 `KATI_obsolete_var`. Device tree kita
diperiksa terhadap seluruh daftar itu:

```
❌ BUILD_BROKEN_PHONY_TARGETS   -> BoardConfig.mk
```

**Satu.** Itu saja. (Tree meghs, common meghs, dan a6010 masing-masing 0 — mereka memang
sudah di LOS 20.)

Yang perlu diketahui walau kita tidak terkena: `BOARD_PLAT_PRIVATE_SEPOLICY_DIR` →
`SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS`. Branch `lineage-19.1` memakainya, `lineage-19.1-rb`
sudah pindah ke `BOARD_VENDOR_SEPOLICY_DIRS`. Alasan lain memakai `-rb` sebagai basis.

### 3.2 Lokasi sepolicy — **sudah terjawab oleh ROM**

Artikel meghs menyebut bootloop karena berkas sepolicy terkompilasi pindah tempat dari A12
ke A13. Pembedahan ROM gt58wifi memberi target yang konkret, bukan tebakan:

```
/sepolicy                       936 KB   ← monolitik, di ROOT (system-as-root)
/system/etc/selinux/            plat_sepolicy.cil, plat_file_contexts,
                                plat_property_contexts, plat_seapp_contexts,
                                plat_service_contexts, plat_hwservice_contexts,
                                plat_keystore2_key_contexts, plat_mac_permissions.xml,
                                plat_sepolicy_and_mapping.sha256, mapping/, bug_map
```

Di tree, `system/sepolicy/Android.mk` menggerbangi seluruh blok `precompiled_sepolicy` pada
`ifneq ($(PRODUCT_PRECOMPILED_SEPOLICY),false)` (baris 310, 373, 421, 467) dan menambah
`precompiled_sepolicy.system_ext_sepolicy_and_mapping.sha256`.

Fase 5 membandingkan hasil build kita terhadap daftar di atas
(`ref/evidence/selinux-list/`), bukan terhadap tebakan.

### 3.3 Kernel: gerbang VINTF yang TIDAK menyala untuk kita

Ini temuan yang menghemat pekerjaan paling banyak.

meghs harus meng-hack build system agar mengira "KERNEL_HEADERS sedang dibangun" supaya
pemeriksaan versi kernel dilewati. Rantai sebenarnya:

```make
# build/make/core/product_config.mk:468-474
ifeq ($(PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS),)
  ifdef PRODUCT_SHIPPING_API_LEVEL
    ifeq (true,$(call math_gt_or_eq,$(PRODUCT_SHIPPING_API_LEVEL),29))
      PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := true
```

Gerbangnya **hanya menyala bila `PRODUCT_SHIPPING_API_LEVEL >= 29`.** Kita menyetel **21**
(`lineage_A37.mk:103`), jadi pemeriksaan itu tidak pernah aktif. Tidak perlu hack apa pun.

Bonus dari nilai yang sama: `PRODUCT_SET_DEBUGFS_RESTRICTIONS` bergerbang `>= 31`
(`product_config.mk:476-478`) — juga mati.

Jalan keluar cadangan kalau ternyata tetap menyala, dari `build/make/core/Makefile:4751-4764`
dan pesan di `:4813-4822`: setel `BOARD_KERNEL_CONFIG_FILE` + `BOARD_KERNEL_VERSION` manual,
atau `PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false`. Dua-duanya lebih bersih
daripada hack KERNEL_HEADERS.

### 3.4 Toolchain kernel

`vendor/lineage/config/BoardConfigKernel.mk`:

- `:116` `KERNEL_TOOLCHAIN_arm64 := $(GCC_PREBUILTS)/aarch64/aarch64-linux-android-4.9/bin`
  — **ada di tree**, terverifikasi. Tidak perlu `prebuilts/gcc/.../arm-eabi-7.2` seperti resep
  retiredtab (itu untuk kernel 32-bit Samsung).
- `:29` `TARGET_KERNEL_CLANG_COMPILE` **defaults to true**
- `:33` `TARGET_KERNEL_LLVM_BINUTILS` **defaults to true**
- `:210-212` `LLVM=1 LLVM_IAS=1` hanya ditambahkan bila `CLANG_COMPILE != false`

Device tree kita sudah menyetel `TARGET_KERNEL_CLANG_COMPILE := false`, jadi jalur LLVM
tertutup. **Tetap setel `TARGET_KERNEL_LLVM_BINUTILS := false` secara eksplisit** — a6010 dan
common meghs keduanya melakukannya, dan biayanya nol.

### 3.5 `hardware/qcom-caf/msm8916` dicabut LineageOS

```
$ ls /root/los20/hardware/qcom-caf/
bootctrl bt common msm8953 msm8974 msm8996 msm8998 sdm660 sdm845
sm8150 sm8250 sm8350 sm8450 sm8550 thermal vr wlan
```

Tidak ada `msm8916`. Dan branch `lineage-20.0-caf-msm8916` **tidak ada di hulu**
(`git ls-remote` kosong); yang ada hanya `lineage-19.0-caf-msm8916`. Dipin di
`A37-20.xml` ke tiga SHA yang sama dengan proyek 19.1 (branch tidak bergerak).

### 3.6 Kernel — delta yang diukur

Perbandingan isi berkas, bukan hitungan commit (branch acroreiser di-rebase sehingga
`rev-list` memberi 448.753 commit — angka tanpa arti):

| Berkas | retiredtab 19.1 → 20.0 | **kernel kita 19.1 → retiredtab 20.0** |
|---|---|---|
| `binder.c` | 1363 baris | **233 baris** |
| `binder_alloc.c` | 196 baris | **94 baris** |
| `binder_alloc.h` | 34 baris | **4 baris** |

Backport binder 19.1 kita (`feda02b6`) sudah lebih dekat ke kernel LOS 20 daripada kernel
19.1 retiredtab sendiri. Isi 233 baris itu, setelah dibaca:

1. `CONFIG_BINDER_SHUT_UP` — pembungkus `#ifndef` untuk menyenyapkan log. **Kosmetik**, bukan syarat.
2. `pr_info` → `pr_info_ratelimited`. Kosmetik.
3. **`down_read`/`up_read` → `down_write`/`up_write` pada `mm->mmap_sem`** di
   `binder_update_page_range()`. Ini **fungsional** — perbaikan UAF `alloc->vma` yang balapan
   dengan `munmap()`. Satu-satunya yang wajib.
4. `struct rb_node *n` tidak lagi diinisialisasi di deklarasi; posisi komentar
   `oneway_spam_detected` bergeser. Kosmetik.

Silang-periksa terhadap 18 commit delta retiredtab 19.1→20.0 menunjukkan kernel kita **sudah
memuat** `F_SEAL_FUTURE_WRITE` (`0ae48638`), fix `info->seals` (`278c8c0e`),
`RT_GROUP_SCHED` mati (`bf222bf`), `yylloc` (`5678d021`), dan pembuatan direktori build
(`1cb14b61`). `include/uapi/linux/android/binder.h` juga sudah ada.

**Kesimpulan: tidak ada persyaratan kernel baru dari Android 13.** Konsisten dengan artikel
meghs, yang seluruh masalah kernelnya bersifat build-system, bukan fitur kernel.

### 3.7 Enkripsi — `/data` polos, tapi lewat fstab, bukan lewat mencabut HAL

⚠️ **Koreksi terhadap draf pertama dokumen ini.** Draf itu menyimpulkan "cabut FDE" dari
commit meghs. Pembedahan ROM gt58wifi (§1.5) menunjukkan gambaran yang lebih tepat — dua
porter mengambil jalan berbeda dan **berakhir sama**:

| | meghs A37 | retiredtab gt58wifi (ROM yang boot) |
|---|---|---|
| `TARGET_HW_DISK_ENCRYPTION` | dicabut | **`:= true`** (+ `TARGET_LEGACY_HW_DISK_ENCRYPTION`) |
| `cryptfshw@1.0` di VINTF | dicabut | **tetap dideklarasikan** |
| `encryptable=` di fstab `/data` | dibuang | **tidak ada juga** |
| Hasil akhir `/data` | tidak terenkripsi | **tidak terenkripsi** |

Yang menentukan `/data` terenkripsi atau tidak adalah **flag di fstab**, bukan ada-tidaknya
HAL. retiredtab membangun dan mendeklarasikan HAL-nya, tapi tidak pernah mengaktifkannya.

**Sikap kita — ikuti retiredtab, bukan meghs:** pertahankan `cryptfshw` (sudah ada di tree
19.1 kita, sudah terbukti tidak menghalangi boot) dan cukup pastikan `/data` di fstab
**tanpa `encryptable=`/`forceencrypt=`**. Alasannya: perubahan paling sedikit terhadap tree
yang sudah terbukti boot. Mencabut HAL berarti menyentuh BoardConfig, `device.mk`, dan
`manifest.xml` sekaligus — tiga tempat untuk satu efek yang bisa dicapai di satu baris fstab.

⚠️ **Koreksi kedua terhadap draf ini — Fase 3, 5 Agustus 2026: pertahanan itu tidak lagi
mungkin.** Premisnya ("HAL sudah ada di tree 19.1 kita") tidak berlaku untuk LOS 20:
hulu **mencabut source cryptfshw** setelah 19.1. Di 19.1 modul
`vendor.qti.hardware.cryptfshw@1.0-base` + `-service-qti.qsee` dibangun dari
`hardware/lineage/interfaces/cryptfshw` dan `vendor/qcom/opensource/interfaces/cryptfshw`
(terverifikasi dari log build `bacon4.log:36680-36741`); **kedua direktori tidak ada di
tree LOS 20** (grep seluruh tree: nol definisi modul). ROM gt58wifi yang boot juga
**tidak mengirim biner cryptfshw** (diverifikasi dari system.img-nya) — deklarasinya di
VINTF hanyalah sisa. `TARGET_HW_DISK_ENCRYPTION` tidak dikonsumsi apa pun di LOS 20
(grep `*.mk`/`*.bp`: nol). Jadi di Fase 3: cryptfshw dicabut dari `device.mk` dan
`manifest.xml` (mengikuti meghs yang boot), dan `/data` tetap polos lewat fstab tanpa
`encryptable=` — bagian keputusan yang **tidak** berubah.

Konsekuensi yang harus disebut terang-terangan: **`/data` tidak terenkripsi.** Untuk ROM
eksperimental di perangkat uji ini diterima; jangan dipakai untuk data pribadi.
Catatan: FBE di kernel 3.10 adalah proyek tersendiri dan tetap di luar lingkup.

### 3.8 Audio HAL — **tetap `@6.0`**

⚠️ **Koreksi terhadap draf pertama dokumen ini**, yang merekomendasikan `@7.1`. Pembedahan
ROM gt58wifi membatalkannya.

| Sumber | Versi VINTF | Status |
|---|---|---|
| **ROM gt58wifi LOS 20 (BOOT, dirilis)** | **`@2.0`** | jalan |
| a6010 `lineage-20.0` | `@7.1-impl` | jalan |
| **device tree A37 kita** (`ce39cf5`) | **`@6.0-impl` + manifest `@6.0`** | pasangan konsisten, ikut boot di 19.1 |
| ROM referensi 19.1 A37 | `@7.0` | jalan |
| meghs A37 `lineage-20` | `@5.0-impl` | **audio tidak pernah berfungsi** |

Rentangnya 2.0 sampai 7.1 dan **semuanya jalan** kecuali punya meghs. Jadi versi bukan
variabel yang menentukan. Yang menentukan:

> Versi di `manifest.xml` **harus cocok** dengan modul `android.hardware.audio@N.M-impl`
> yang benar-benar dibangun di `device.mk`.

Diverifikasi di tree LOS 20 — seluruh versi tersedia, jadi tidak ada yang memaksa kita pindah:

```
$ ls /root/los20/hardware/interfaces/audio/
2.0  4.0  5.0  6.0  7.0  7.1          ← -impl tersedia untuk semuanya
$ ls /root/los20/hardware/interfaces/audio/effect/
2.0  4.0  5.0  6.0  7.0               ← tidak ada 7.1
```

**Keputusan: pertahankan `@6.0`.** Tree kita sudah punya pasangan yang konsisten
(`@6.0-impl` + `@6.0-effect` + manifest `@6.0`) dan ikut serta di ROM 19.1 yang boot.
Naik ke 7.1 berarti menambah variabel yang belum teruji di A37, tanpa manfaat yang bisa
ditunjukkan — dan `effect` bahkan tidak punya 7.1 sehingga pasangannya jadi timpang (7.1/7.0).

Kegagalan audio meghs kemungkinan besar **bukan** soal angka versi, melainkan
ketidakcocokan antara versi yang dideklarasikan dan `-impl` yang dibangun. Itu yang harus
diperiksa kalau audio kita bermasalah — bukan langsung menaikkan versi.

### 3.9 Casefold — turun status dari "wajib" jadi "defensif"

Dokumen 19.1 (§1.3) menyebut casefold sebagai *"kandidat kuat penyebab kegagalan diam"* dan
mewajibkan `PRODUCT_FS_CASEFOLD := 0` + tiga properti storage. Diperiksa ulang di tree LOS 20:

```
$ grep -rln emulated_storage --include="*.mk" /root/los20 | grep -v ^./out
device/generic/goldfish/fvp.mk            ← emulator
device/generic/goldfish/vendor.mk         ← emulator
device/generic/goldfish/64bitonly/product/vendor.mk
device/google/cuttlefish/shared/device.mk ← cuttlefish
```

`build/make/target/product/emulated_storage.mk` (yang menyetel `PRODUCT_FS_CASEFOLD := 1`)
**tidak di-inherit oleh satu pun target nyata**, dan `PRODUCT_FS_CASEFOLD` tidak dikonsumsi
di `build/make/core/` sama sekali. ROM gt58wifi yang boot pun **tidak menyetel properti
casefold apa pun**.

**Sikap:** pertahankan baris-baris itu di `device.mk` (harmless, dan mendokumentasikan niat),
tapi **jangan** perlakukan sebagai load-bearing. Kalau ada gejala storage, casefold bukan
tersangka pertama lagi.

### 3.10 Kenapa device tree kita, bukan tree meghs

Tree `lineage-19.1-rb` kita **mandiri** — `msm8916-common` sudah diratakan ke dalamnya sejak
18.1 (jejaknya: komentar `# Sumber: msm8916-common lineage-18.1` di enam tempat
`BoardConfig.mk`). Satu-satunya dependensinya `hardware/sony/timekeep`, yang **sudah ada** di
tree LOS 20.

Tree meghs bergantung pada `device/cyanogen/msm8916-common`, yang berarti pohon kedua yang
harus ikut dirawat, di-rebase, dan didebug.

Ditambah: tree kita membawa enam perbaikan yang terverifikasi di perangkat, dan hanya
memakai satu variabel usang. Tree meghs membawa `first_api_level=19` dan audio `@5.0`.

**Arah kerja: rebase tree kita, pakai meghs+a6010 sebagai daftar periksa delta A13.**

---

## Fase 0 — Persiapan · **PRASYARAT**

- [ ] **0.1 Disk.** Sisa **127 GB** per 5 Agustus 2026, tree 20 sudah menempati 131 GB.
      `out/` butuh ± 45–50 GB. **Cukup, tapi tanpa margin.** Sebelum `mka bacon`:
      hapus `/root/los19` bila masih ada, kosongkan `~/.ccache` lama, atau pindahkan
      artefak dari `/root/a37-dl`. Kegagalan di 95% karena disk adalah kegagalan termahal.
- [ ] **0.2 Sumber sudah tersedia.** `/root/los20` — 1215 project, **0 HEAD kosong**,
      37 fork UL terpasang (diverifikasi). Sync selesai 5 Agustus 2026.
- [ ] **0.3 Jebakan `repo sync` — sudah dialami, jangan diulang.** Dua kegagalan nyata:

      1. **Jangan pakai `--no-tags`.** Remote `aosp` di manifest UL dipin ke
         `refs/tags/android-13.0.0_r75`. Dengan `--no-tags`, 1051 project AOSP gagal
         checkout dengan pesan `checkout <sha>` yang menyesatkan — `<sha>` itu objek
         **tag**, bukan commit.
      2. **Sync yang terputus meninggalkan berkas untracked** di direktori project tanpa
         HEAD. `--force-sync` **tidak** membersihkannya, dan `git checkout` menolak menimpa.
         Gejalanya: sync berikutnya tetap gagal walau perintahnya sudah benar.
         Penawarnya ada di `tools/repo-doctor.sh`.

      Perintah yang benar:
      ```bash
      repo init -u https://github.com/LineageOS-UL/android.git -b lineage-20.0 --git-lfs
      mkdir -p .repo/local_manifests && cp A37-20.xml .repo/local_manifests/
      repo sync -c -j8 --force-sync --no-clone-bundle
      ```
- [ ] **0.4 Branch kerja.** Buat `lineage-20` di tiga repo dari basis §2.1 **sebelum**
      `repo sync` kedua, supaya manifest tidak menunjuk ref yang belum ada.
- [ ] **0.5 Java.** OpenJDK 11 terpasang; LOS 20 memakai JDK dari dalam tree.
      Bersihkan `JAVA_HOME` warisan proyek lain lewat `tools/envsetup-a37.sh`.

---

## Fase 1 — Kernel ✅ **SELESAI di sisi build — 5 Agustus 2026**

Basis: `rigaz29/kernel_oppo_msm8939` `lineage-19.1` @ `bf222bf`.
Hasil: branch **`lineage-20`** @ `8cc1519`, sudah di-push.

- [x] **1.1** Branch `lineage-20` dibuat dari `bf222bf`. ✅
- [x] **1.2** `down_read`/`up_read` → `down_write`/`up_write` pada `mm->mmap_sem` di
      `binder_update_page_range()` — **3 baris**, commit `8cc1519`. ✅

      Terverifikasi berlapis:
      - Fungsi `binder_update_page_range()` kini berbeda **nol baris fungsional** dari
        `retiredtab/android_kernel_samsung_msm8916` `lineage-20.0`. Sisa selisih hanya
        `CONFIG_BINDER_SHUT_UP` dan perutean `pr_err` → `binder_alloc_debug`.
      - **Di biner**, bukan cuma di source: `nm -u out/drivers/staging/android/binder_alloc.o`
        merujuk `U down_write` dan `U up_write` saja — **tidak ada sisa `down_read`/`up_read`**.
- [x] **1.3 dilewati, disengaja.** `CONFIG_BINDER_SHUT_UP` menyembunyikan diagnostik yang
      justru dibutuhkan Fase 9–10. Pasang hanya kalau log binder terbukti membanjiri dmesg. ✅
- [x] **1.4 dilewati, disengaja.** `CONFIG_RD_XZ` + `BOARD_RAMDISK_USE_XZ` adalah pasangan,
      dan pasangannya ada di device tree (Fase 3). Memasang sisi kernelnya sekarang menaruh
      **dua variabel dalam satu uji 1.5** — melanggar metode §0. Kerjakan bersama Fase 3. ✅
- [x] **1.5a Build + paket — SELESAI.** ✅

      ```
      Image    18294392 byte, Linux kernel ARM64 boot executable
      dt.img   210944 byte  — SAMA PERSIS dengan ROM referensi
      zip      A37-kernel-3.10.108-lineageos-lineage-20-8cc1519b65d-20260805-0517.zip
      sha256   b2cc1a4fc2a7904bd9fd8b05d6b2445600cb9be910d8a8af8e0994dac842253d
      ```

      Verifikasi `build-kernel-zip.sh` lolos seluruhnya: `binder_alloc` ter-link (11 simbol
      di System.map), jalur `BINDER_SET_CONTEXT_MGR` (security context A12) ada,
      `SECCOMP_FILTER`/`ANDROID_BINDER_IPC`/`PSTORE_RAM`/`IKCONFIG_PROC` = y, jalur LMK
      punya sumber tekanan.

      Toolchain: `prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9` **dari tree
      LOS 20** — tidak perlu unduh toolchain terpisah (§3.4 terbukti benar).
      Arsip: `/root/a37-dl/` + `SHA256SUMS-kernel-20-20260805.txt`.

- [ ] **1.5b Uji di perangkat — MENUNGGU PEMILIK PERANGKAT.**

      Flash zip di atas ROM **19.1 yang sudah terpasang** (bukan ROM 20 — belum ada).
      Zip memakai `split_boot`: ia mengganti Image + dt.img dan **membiarkan ramdisk apa
      adanya**, jadi satu variabel yang diuji hanyalah kernel.

      | Hasil | Artinya |
      |---|---|
      | Boot normal sampai homescreen | binder tidak regresi di userspace Android nyata → lanjut Fase 2 |
      | Bootloop | tahan Power → recovery → `adb shell cat /sys/fs/pstore/console-ramoops-0`, lalu flash balik kernel lama |

      ⚠️ **Yang TIDAK dibuktikan uji ini:** jalur security context Android 12/13 sendiri.
      keystore2 hanya ada di A12+; A11 memakai keystore1 dan tidak pernah menyetel
      `FLAT_BINDER_FLAG_TXN_SECURITY_CTX`. Boot mulus di 19.1 = **tidak ada regresi**,
      bukan bukti fitur A13-nya benar. Itu baru terjawab di Fase 9.

⚠️ **Yang TIDAK dikerjakan di kernel:** rebase ke 32-bit, ganti basis ke a6010/retiredtab,
backport eBPF/PSI/cgroup-v2/BinderFS. Tidak satu pun dituntut Android 13 (§3.6), dan mengganti
basis kernel membuang bukti "kernel ini boot di perangkat ini".

---

## Fase 2 — Manifest & basis source ✅ **SELESAI 5 Agustus 2026**

Kriteria keluar terpenuhi: **`lunch lineage_A37-userdebug` berhasil.**

```
PLATFORM_VERSION=13            LINEAGE_VERSION=20.0-20260805_100248-UNOFFICIAL-A37
TARGET_PRODUCT=lineage_A37     TARGET_BUILD_VARIANT=userdebug
TARGET_ARCH=arm                TARGET_ARCH_VARIANT=armv8-a  TARGET_CPU_VARIANT=cortex-a53
PRODUCT_SOONG_NAMESPACES=vendor/oppo/A37 hardware/qcom-caf/msm8916 ...
```

- [x] **2.0 Prasyarat 0.4** — branch `lineage-20` dibuat di `rb_device_oppo_A37` dari
      `ce39cf5` (belum disunting; Fase 3 yang menyuntingnya). ✅
- [x] **2.1** Tree sudah di-init ke `LineageOS-UL/android` `lineage-20.0`. ✅
- [x] **2.2** `A37-20.xml` terpasang di `.repo/local_manifests/`. ✅

      ⚠️ **Bug yang ditemukan saat memasang:** manifest gagal diparse karena XML
      **melarang `--` di dalam komentar**, dan draf pertama memakai `--` sebagai tanda
      pisah di beberapa tempat. Sekarang seluruh komentar memakai em-dash. Validasi
      cepat sebelum menyalin ke `.repo/local_manifests/`:
      `python3 -c "import xml.etree.ElementTree as E;E.parse('A37-20.xml')"`
- [x] **2.3** `repo sync` — keenam project A37 masuk, tree tetap sehat (1213 project,
      0 HEAD kosong). ✅

      | path | HEAD |
      |---|---|
      | `device/oppo/A37` | `ce39cf5` |
      | `kernel/oppo/msm8939` | `8cc1519` ← hasil Fase 1 |
      | `vendor/oppo` | `2e5c6f7` |
      | `hardware/qcom-caf/msm8916/{audio,display,media}` | `e0e79d6` / `984ff8f` / `bf62f59` |

- [x] **2.4 Verifikasi apa yang MASIH perlu ditambal — hasilnya menyusut drastis.** ✅

      | Item 19.1 | Status di LOS 20 | Bukti |
      |---|---|---|
      | 9 repopick Gerrit | **tidak perlu** | fork UL, §1.1 |
      | 23 patch Camera HAL1 | **tidak perlu** | `case 1: DeviceInfo1` ada |
      | `sysfs_disk_stat` | **tidak perlu lagi** | platform sendiri yang mendefinisikan di `system/sepolicy/public/file.te:20`. Mendefinisikan ulang di device tree justru **duplikat dan menggagalkan build** |
      | revert `libbfqio` | **MASIH PERLU** | `hardware/qcom-caf/msm8916/display/libhwcomposer/Android.mk:20` masih menautkannya; `vendor/lineage` LOS 20 tidak menyediakannya |
      | guard `qcom-caf/msm8916/Android.mk` | dipasang, paritas | `os_pickup.mk` |

- [x] **2.5 `tools/apply-legacy-patches.sh` ditulis ulang** — dari 4 kelompok besar jadi
      **2 langkah**, plus **5 penjaga regresi** yang memeriksa asumsi yang bisa berubah
      diam-diam (fork UL dipin ke branch): `transport_legacy.cpp`, direktori
      `device1/`, `case 1: DeviceInfo1`, `GLES = 1`, dan `sysfs_disk_stat` platform.
      **Idempotensi diuji** — dijalankan dua kali, jalan kedua nol perubahan. ✅
- [x] **2.6** `tools/envsetup-a37.sh` diadaptasi ke `los20`, `lunch` berhasil. ✅

### 2.7 Temuan besar Fase 2 — **hanyutnya hulu (upstream drift)**

Ini masalah struktural yang tidak terlihat di dokumen mana pun sebelumnya, dan sudah
**terbukti memutus build**, bukan dugaan.

Manifest UL menyematkan project ke **branch**, bukan SHA (`revision="refs/heads/lineage-20.0"`).
Lini UL **beku 2025-04-04**, tapi repo LineageOS hulu **terus bergerak di branch bernama
sama**. Jadi `repo sync` menarik kode yang jauh lebih baru daripada fork UL di sekelilingnya.

**Korban pertama, `external/dng_sdk`:**

```
error: external/dng_sdk/Android.bp:165:1: dependency "libjpeg" of "libdng_sdk"
       missing variant: os:android,...,sdk:sdk,link:shared
```

Rantainya: commit `624d019` *"Crude DNG SDK 1.7.1 upgrade"* (**2025-12-12** — delapan bulan
setelah UL beku) menambahkan `sdk_version: "current"` pada `libdng_sdk` beserta dependensi
ke `libjpeg`. `external/libjpeg-turbo` (AOSP, dipin ke tag `android-13.0.0_r75`) tidak
menyediakan varian `sdk:sdk`. Soong berhenti sebelum sempat menyentuh kode A37 sama sekali.

**Perbaikan:** dipin ke `880b683` (2025-04-17) di `A37-20.xml` lewat
`<remove-project>` + `<project revision="...">`. Setelah itu soong lolos.

**Alat baru: `tools/check-drift.sh`.** Melaporkan project yang bergerak melewati tanggal
batas, memisahkan yang ikut dibangun dari yang tidak. Keadaan sekarang:

```
dipin ke SHA (aman)      : 5
remote aosp / tag (aman) : 939
HANYUT melewati 2025-05-01 : 35  (dibangun: 27)
```

⚠️ **Kebijakan: pin hanya yang terbukti memutus build.** Memin ke-27-nya secara preventif
ikut membekukan perbaikan keamanan aplikasi yang masih sah — dan itu justru memperburuk
posisi kita yang sudah tertinggal di ASB 2025-03 (§1.1).

### 2.8 Pengintaian untuk Fase 3 — `m nothing`

Dijalankan **bukan** sebagai bagian Fase 2, tapi untuk memberi Fase 3 daftar pemblokir yang
konkret. Setelah pin `dng_sdk`, soong lolos dan kati berjalan 6 menit sebelum berhenti di:

```
build/make/core/base_rules.mk:338: error: device/oppo/A37/gps/utils:
MODULE.TARGET.SHARED_LIBRARIES.android.hidl.base@1.0 already defined by hardware/lineage/compat
```

Device tree kita membangun dummy `android.hidl.base@1.0` (`libhidl/Android.mk:18`,
dipasang lewat `device.mk:586`) untuk blob era Oreo. **LineageOS 20 kini menyediakannya
sendiri** di `hardware/lineage/compat/Android.bp:228`.

meghs sudah menyelesaikan ini persis begitu — commit `031a09a`
*Revert "Build a dummy android.hidl.base@1.0 for Oreo blobs"*, membuang 5 baris `device.mk`
dan 29 baris `hidl/Android.mk`. **Masuk sebagai butir pertama Fase 3.1.**

---

## Fase 3 — Device tree

Basis: `lineage-19.1-rb` @ `ce39cf5`. Buat branch `lineage-20`.

### 3.1 Wajib — jangan sampai terlewat

Semua butir di bawah selesai 5 Agustus 2026; `m nothing` exit 0 setelahnya.

- [x] **Buang dummy `android.hidl.base@1.0`** — **pemblokir build yang sudah terbukti**,
      lihat §2.8. `libhidl/Android.mk` dihapus; dua baris (`android.hidl.base@1.0`,
      `android.hidl.manager@1.0`) dibuang dari `device.mk` PRODUCT_PACKAGES. LOS 20
      menyediakan keduanya di `hardware/lineage/compat/Android.bp:228` dan `:236`.
      Sepadan dengan commit meghs `031a09a`.
- [x] `BUILD_BROKEN_PHONY_TARGETS` dibuang (§3.1 — satu-satunya variabel usang kita).
      Sudah dibuang sejak basis 19.1 (sisa: komentar di `BoardConfig.mk:53`).
- [x] `TARGET_KERNEL_LLVM_BINUTILS := false` ditambahkan eksplisit (§3.4).
- [x] Pastikan `PRODUCT_SHIPPING_API_LEVEL := 21` **dan**
      `BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true` tetap ada. Keduanya pasangan
      perbaikan 10.A. Terverifikasi ada: `lineage_A37.mk:103`, `BoardConfig.mk:127`.
- [x] Enkripsi (§3.7 — **koreksi Fase 3**): cryptfshw **dicabut** dari `device.mk`
      (blok PRODUCT_PACKAGES) dan `manifest.xml` (deklarasi HAL) — source-nya sudah
      tidak ada di tree LOS 20 (lihat §3.7 "koreksi kedua"). `TARGET_HW_DISK_ENCRYPTION`
      dipertahankan (tidak dikonsumsi apa pun; retiredtab juga mempertahankan).
      fstab: `encryptable=footer` dibuang dari kedua baris `/data`.
- [x] **Sisa enkripsi di entri SD card** (audit pasca-Fase 3, commit `7938923`):
      `voldmanaged=sdcard1:auto,encryptable=userdata` → `voldmanaged=sdcard1:auto`.
      Baris `/data` sudah dibersihkan lebih dulu, tapi entri ini terlewat. Ia menyuruh
      vold memperlakukan SD sebagai volume terikat kunci userdata padahal FDE sudah
      tidak ada. ROM jangkar gt58wifi memakai baris ini tanpa opsi tersebut
      (`ref/evidence/ramdisk-fstab.qcom`). Bukan pemblokir boot — opsi yang sama ada di
      19.1 yang boot — tapi tidak konsisten dengan keputusan Fase 3.
- [x] `vendor.lineage.health-service.default` ditambahkan + tiga
      `TARGET_HEALTH_CHARGING_CONTROL_*` (baru di 20; meghs & a6010 sepakat).
      Path `/sys/class/power_supply/battery/charging_enabled` **diverifikasi di kernel
      kita**: `qpnp-linear-charger.c:206,1672-1679,1554-1566,3372,3382-3383` +
      `power_supply_sysfs.c:148`.
- [x] Aplikasi kamera: **`Aperture`** (modul ada di `packages/apps/Aperture/app/Android.bp:11`)
      menggantikan `Camera2` — sama dengan meghs dan a6010 untuk LOS 20.

### 3.1b Pemblokir kati tambahan yang ditemukan di Fase 3 (semua selesai)

kati maju satu per satu; semuanya beres, `m nothing` exit 0:

- [x] **`wcnss_service` menautkan QMI** — fork UL `hardware/qcom-caf/wlan`
      `lineage-20.0-caf` menghilangkan gerbang `ifneq ($(QCPATH),)` dari
      `lineage-19.1-caf` (di 19.1 QCPATH kosong → jalur `-DWCNSS_QMI_OSS` + libdl).
      Tanpa gerbang itu, `TARGET_USES_QCOM_WCNSS_QMI := true` memaksa tautan
      `libqmi_cci`/`libqmi_common_so`/`libmdmdetect` — nol definisi di LOS 20.
      Perbaikan: `TARGET_PROVIDES_WCNSS_QMI := true` (meghs `BoardConfig.mk:91`
      memakai yang sama dan boot). Hanya dibaca
      `hardware/qcom-caf/wlan/wcnss-service/Android.mk:15`.
- [x] **Pemeriksaan `enforce-product-packages-exist` — BARU di LOS 20**
      (`vendor/lineage/config/common.mk:104`; 19.1 tidak memilikinya). Menangkap
      entri PRODUCT_PACKAGES yang tidak pernah dibangun — diverifikasi dari log
      build 19.1 (nol baris build/install untuk semuanya): `libgenlock`,
      `libOmxVdecHevc`, `libOmxSwVencHevc`, `sensord`, `accelcal`, `AccCalibration`,
      `textclassifier.bundle1`, `libhidltransport.vendor`, `libhwbinder.vendor`
      (dibuang; varian polos `libhidltransport`/`libhwbinder` dipertahankan — itulah
      yang terpasang di 19.1 dan dipakai a6010/meghs).
- [x] **`android.hardware.drm@1.3-service.clearkey` tidak ada di LOS 20** — tersedia
      `@1.2-` dan `@1.4-service.clearkey`. Diganti `@1.4-service.clearkey` (non-lazy,
      biner yang sama dengan ROM gt58wifi) + fqname manifest dinaikkan ke `@1.4`
      (konsisten dengan fragment VINTF bawaan modul).

### 3.2 Diwarisi dari 19.1 — pertahankan, jangan diutak-atik

Ini yang mahal didapat. Setiap baris punya bug bernomor di belakangnya:

```make
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true   # 10.A
debug.renderengine.backend=gles                  # 10.B  (a6010 sepakat)
# tanpa IPictureAdjustment di manifest.xml       # 10.C
# tanpa servis ppd & livedisplay legacymm        # 10.C
TARGET_HAS_LEGACY_CAMERA_HAL1 := true            # 10.D
TARGET_USES_QTI_CAMERA_DEVICE := true            # 10.D
PRODUCT_FS_CASEFOLD := 0 / PRODUCT_QUOTA_PROJID := 1
external_storage.{casefold,sdcardfs}.enabled=0
ro.config.low_ram=true
TARGET_HAS_MEMFD_BACKPORT := true
DISABLE_APEX_TEST_MODULE := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
androidboot.init_fatal_reboot_target=recovery + ramoops.* di cmdline
```

### 3.3 Kandidat dari a6010 — evaluasi, jangan salin borongan

- `androidboot.memcg=true` — **LEWATKAN (dievaluasi Fase 3, 5 Agustus 2026):** flag ini
  **tidak dikonsumsi siapa pun di Android 13**. lmkd membaca
  `ro.config.per_app_memcg` (`system/memory/lmkd/lmkd.cpp:3728`), dengan default
  `low_ram_device` — yang di tree kita sudah `true` via `ro.config.low_ram=true`
  (`lmkd.cpp:3722`, `device.mk:558`). `/dev/memcg` di-mount otomatis oleh first-stage
  init dari `cgroups.json` (controller `memory`, `Optional: true`) — `CONFIG_MEMCG=y`
  di defconfig kita (`lineageos_a37f_defconfig:18`). Jadi mekanisme memcg **sudah
  aktif tanpa flag apa pun**; `androidboot.memcg=true` milik a6010 adalah peninggalan.
- `TARGET_KERNEL_ADDITIONAL_FLAGS := HOSTCFLAGS=...` — **sudah ada** di tree kita
  (`BoardConfig.mk:198`, diturunkan dari msm8916-common 18.1). Hanya dipakai bila
  build kernel gagal di host.
- `PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true` — **dipertahankan**
  (`device.mk`); 10.C bergantung pada enforcement VINTF aktif agar `getService`
  gagal cepat.
- `HWUI_COMPILE_FOR_PERF`, tuning SurfaceFlinger, `go_defaults` untuk 2 GB — **Fase 11**,
  setelah boot. Bukan sekarang.

---

## Fase 4 — VINTF

Diverifikasi 5 Agustus 2026. **Tidak ada perubahan source yang diperlukan** —
semua butir terpenuhi oleh state tree + mekanisme build, dibuktikan dari
manifest terakit (`out/target/product/A37/system/vendor/etc/vintf/manifest.xml`,
dibangun dengan `m vendor_manifest.xml`).

- [x] **4.1** `<sepolicy><version>` — **terpenuhi otomatis; koreksi terhadap asumsi
      draf ini.** Asumsi "naikkan ke 33.0" keliru: manifest SOURCE tidak perlu
      mendeklarasikan sepolicy sama sekali. `assemble_vintf`
      (`build/make/target/board/Android.mk:54`) mengisinya dari
      `BOARD_SEPOLICY_VERS := $(PLATFORM_SEPOLICY_VERSION)` (`config.mk:851`)
      hanya bila source tidak mendeklarasikannya (`AssembleVintf.cpp:392`,
      `getFlagIfUnset`). Hasil build: manifest terakit =
      `<manifest version="5.0" type="device" target-level="legacy">` +
      `<sepolicy><version>33.0</version></sepolicy>` — **identik dengan ROM
      gt58wifi** (`ref/evidence/vendor-vintf-manifest.xml`).
- [x] **4.2** Audio tetap `@6.0` (§3.8) — pasangan konsisten terverifikasi:
      `manifest.xml` (source + terakit) menyebut audio@6.0 + effect@6.0;
      `device.mk:159-161` membangun `@6.0-impl`, `@6.0-effect-impl`,
      `audio.service`.
- [x] **4.3** Aturan 10.C — sudah diterapkan sejak 19.1: livedisplay hanya
      `IDisplayColorCalibration` (satu-satunya yang terbukti register);
      `IPictureAdjustment` milik meghs **tidak diambil**; `cryptfshw` dicabut
      (Fase 3).
- [x] **4.4** Perbandingan empat daftar HAL (kita, ROM gt58wifi, meghs, a6010) —
      selesai; tiap selisih dijawab dengan *"servisnya ada di tree/blob kita?"*:

      | | Kita (26 HAL) | ROM gt58wifi (17) | meghs (19) | a6010 (30) |
      |---|---|---|---|---|
      | yang kita punya, tak ada di ROM jangkar | radio@1.1+deprecated, keymaster@3.0, perf, iop, power, usb, vibrator, configstore, bluetooth.audio, cameraservice, mapper@2.1, sensors, audio@6.0 | semuanya HAL QCOM/telephony yang **terbukti register di ROM 19.1 kita** — ROM jangkar tablet Wi-Fi-only | — | — |
      | yang tak kita ambil | — | wifi.offload (tidak ada servis di tree A37), cryptfshw (vestigial, Fase 3) | audio@5.0 (gagal, §3.8), camera 2.5 hwbinder, IPictureAdjustment (10.C) | jalur RIL QTI (qtiradio/qcrilhook/radio.am), dolby.dms, btconfigstore, touch, dpm.api, vendor gnss — tidak ada di blob A37 |

      Hasil ekstraksi daftar HAL per tree (tersimpan sementara di `work/fase4-hals/`,
      tidak ikut di-commit karena `work/` ter-ignore) bisa dibuat ulang dengan:
      `python3 -c "import xml.etree.ElementTree as E,sys;r=E.parse(sys.argv[1]).getroot();[print(h.find('name').text+'@'+h.find('version').text if h.find('version') is not None else h.find('name').text) for h in r.findall('hal')]" <manifest.xml>` — bandingkan `manifest.xml` kita, `research/common-meghs-20/manifest.xml`, `research/dt-a6010-20/manifest.xml`, dan `ref/evidence/vendor-vintf-manifest.xml`.
- [x] **4.5** `cryptfshw` dicabut — sudah dikerjakan di Fase 3 (deklarasi
      `manifest.xml` + blok PRODUCT_PACKAGES dibuang).
- [x] **4.6** fqname clearkey ganda — **terjawab, ditoleransi.** `assemble_vintf`
      mendeduplikasi: manifest terakit memuat `@1.4::ICryptoFactory/clearkey`
      dan `@1.4::IDrmFactory/clearkey` **tepat satu kali** (baris 94-95), tanpa
      konflik — sama seperti 19.1 dengan @1.3.

### 4.7 Temuan Fase 4 — `check_vintf_compatible` gagal untuk SEMUA device level legacy

Pemeriksaan `checkDeprecation` (`system/libvintf/VintfObject.cpp:879-882`)
gagal dengan `Cannot find framework matrix at FCM version legacy` karena
framework LOS 20 hanya menyediakan matriks level 3–7 + `device` — **tidak ada
matriks level "legacy"**. Ini **bukan** masalah khusus A37:

- Berlaku identik untuk meghs, a6010, dan gt58wifi (manifest terakitnya juga
  `target-level="legacy"`).
- **Tidak dijalankan oleh `mka bacon`** (Fase 8.1). Diverifikasi lewat query
  ninja: rantai OTA → target-files **tidak** memuat `check_vintf_*`; hanya
  default goal `m`/`droid` yang menjalankannya (`Makefile:4912`
  `droid_targets: $(check_vintf_all_deps)`).
- Tiga pemeriksaan lain (`check_vintf_system`, `check_vintf_vendor`,
  `vintffm`) **lolos** (diuji, exit 0).
- Runtime: tidak relevan — hwservicemanager tidak menjalankan deprecation
  check; itu urusan build/CTS.

**Keputusan: biarkan, jangan lawan.** Satu-satunya "perbaikan" adalah menaikkan
`target-level` ke 3–7 — mengubah semantik level device tanpa bukti perangkat
dan bertentangan dengan ketiga tree referensi. Dicatat supaya tidak dicari
ulang.

---

## Fase 5 — SEPolicy

Selesai 5 Agustus 2026. `m selinux_policy` exit 0; layout hasil build **identik**
dengan ROM yang boot. Tiga pemblokir ditemukan dan dibereskan (5.1b–5.1d).

- [x] **5.1** Basis 19.1 dipakai apa adanya; cacat `sysfs_disk_stat` yatim dari 19.1
      diselesaikan dengan cara berbeda dari 19.1 — lihat 5.1b.
- [x] **5.2** Tidak ada sisa `BOARD_PLAT_PRIVATE_SEPOLICY_DIR` (grep device+ vendor:
      nol). Sejak basis 19.1 sudah memakai `BOARD_VENDOR_SEPOLICY_DIRS` (§3.1).
- [x] **5.3** Layout hasil build vs daftar nyata ROM (diff programatik, IDENTIK
      dua-duanya):
      - `/sepolicy` monolitik di root (961963 B vs 958950 B ROM — beda wajar),
      - `/system/etc/selinux/` 11/11 berkas (termasuk `bug_map`, `mapping/`),
      - `/vendor/etc/selinux/` 14/14 berkas (`precompiled_sepolicy`, `*.cil`, ...).
      Bootloop meghs tidak terulang — lokasinya sama dengan ROM yang boot.
- [x] **5.4** `m selinux_policy` exit 0 (log: `work/fase5-selinux4.log`).
- [x] **5.5** Tetap permissive untuk boot pertama: `androidboot.selinux=permissive`
      (`BoardConfig.mk:185`). Target enforcing pasca-boot stabil — gt58wifi buktinya.

### 5.1b Pemblokir 1: `sepolicy_freeze_test` — inkonsistensi bawaan fork UL

Fork UL `system/sepolicy lineage-20.0` (beku 2024-09-21, HEAD `9c0053142`) membeku
dengan inkonsistensi internal: cherry-pick `a6cfe58e0` (2018) menaruh tipe
`sysfs_disk_stat` di **posisi berbeda** antara `public/private` dan snapshot beku
`prebuilts/api/33.0` (juga `private/compat/29.0/29.0.ignore.cil`). `sepolicy_freeze_test`
(gerebang `PLATFORM_SEPOLICY_VERSION != TOT_SEPOLICY_VERSION`,
`system/sepolicy/Android.mk:359-362`) lalu gagal:

```
Files system/sepolicy/public/file.te and .../api/33.0/public/file.te differ
```

Hulu LineageOS `lineage-20.0` **tidak punya tipe ini sama sekali**; device tree A37 juga
tidak menggunakannya. **Perbaikan:** buang `sysfs_disk_stat` dari 32 berkas
`system/sepolicy` + `device/qcom/sepolicy-legacy/legacy-common/file_contexts` (2 baris
label mmcblk/sdhci) — menyelaraskan fork UL dengan hulu. Setelah itu
`public/ == snapshot 33.0` dan `private/ == snapshot 33.0` (diff exit 0).
Dipasang sebagai **langkah 3** di `tools/apply-legacy-patches.sh` (idempoten, wajib
dijalankan ulang pasca `repo sync`) + penjaga regresi diperbarui.

### 5.1c Pemblokir 2: `healthd_exec` tak dikenal — peninggalan 19.1 di tree kita

`sepolicy/healthd.te` kita memanggil `init_daemon_domain(healthd)`; di LOS 20 platform
hanya mempertahankan **tipe** `healthd` ("kept for backwards compatibility",
`system/sepolicy/public/healthd.te`), `healthd_exec` sudah dicabut. Error checkpolicy:
`unknown type healthd_exec`. Health kini dilayani `android.hardware.health@2.1-service`
(bukan daemon healthd). **Perbaikan:** `sepolicy/healthd.te` dihapus (commit device tree).

### 5.1d Pemblokir 3: `vendor_file_contexts_test` — sepolicy-legacy masih melabeli disk stats

`device/qcom/sepolicy-legacy/legacy-common/file_contexts:87-88` masih menandai
`/sys/.../block/mmcblk[0-9]/stat` dengan `u:object_r:sysfs_disk_stat:s0` — tipe yang
sudah dibuang. `checkfc` menolak: `type sysfs_disk_stat is not defined`. Dibereskan oleh
langkah 3 yang sama (2 baris dihapus).

⚠️ **Yang TIDAK dikerjakan di Fase 5:** enforcing SELinux. gt58wifi membuktikan itu
realistis di msm8916 A13, tapi untuk boot pertama tetap permissive — satu variabel
pada satu waktu. Fase tersendiri setelah stabil.

---

## Fase 6 — Vendor blobs

Selesai 5 Agustus 2026. Set blob 19.1 (320 terpasang) **tidak diubah isinya** —
hanya satu deklarasi VINTF yang dibuang (iop, 6.2). Semua pemeriksaan di bawah
adalah pengukuran, bukan adopsi borongan.

- [x] **6.1** Basis `rb-vendor_oppo_A37` @ `2e5c6f7` — 320 blob via
      `A37-vendor.mk` PRODUCT_COPY_FILES, **nol hilang di disk**. 338 berkas di
      disk; 18 sengaja tidak dipasang (widevine: `libwvhidl.so`,
      `libwvdrmengine.so`, 2× service + rc; IMS: `imscmservice`,
      `imsdatadaemon`, `imsqmidaemon`, `ims.apk`, `imssettings.apk`,
      `imscmlibrary.jar`; sisanya `libTimeService.so`, `libloc_api_v02.so`,
      `libloc_ds_api.so`, `libtime_genoff.so`, `qcrilmsgtunnel.apk`) — warisan
      yang sudah diputuskan dibuang di 19.1 (widevine gagal link karena protobuf
      lama, IMS tidak pernah dipakai).
- [x] **6.2** Triase — bukan lewat diff daftar (format meghs beda: `|sha`,
      banyak `lib64` untuk ROM 32-bit), tapi lewat **pemeriksaan dependensi**:
      1992 `DT_NEEDED` dari 294 blob ELF terpasang diperiksa terhadap {set blob
      kita + pustaka ROM gt58wifi (A13 yang sama)}. 11 tak terpenuhi, ditriase:

      | Dep yang gagal | Putusan | Alasan |
      |---|---|---|
      | `vendor.qti.hardware.iop*` (5 blob) → `android.hidl.base@1.0.so` | **deklarasi HAL dibuang** dari manifest | LOS 20 meletakkan hidl.base di `system_ext/lib` (`hardware/lineage/compat`), namespace linker vendor **tidak** menjangkau system_ext (`system/linkerconfig/contents/namespace/vendordefault.cc:38-45`) → impl passthrough iop mustahil dimuat. Tidak ada konsumen (nol blob lain mereferensikan iop; ROM gt58wifi tidak mengirimnya). Blob tetap terpasang — dorman, nol efek runtime |
      | `libvpplibrary.so` → `libmmsw_{detail_enhancement,opencl,platform,math}.so` | **dibiarkan** | 19.1 mengirim blob yang sama tanpa 4 lib itu dan boot — VPP tidak terdaftar di `media_codecs.xml` → tidak pernah dimuat. Dorman |
      | `lib-imsvt.so` → `libvcel.so` | **dibiarkan** | IMS tidak dipakai (tanpa aplikasi/servis IMS). 19.1 sama, boot. Dorman |
      | `netmgrd` → `librmnetctl.so` | **false positive** | dibangun dari source: `vendor/qcom/opensource/dataservices/rmnetctl` (di SOONG namespaces; log 19.1: "Install", bukan copy blob) |
- [x] **6.3** — **3 blob ELF 64-bit** (`imsqmidaemon`, `imsdatadaemon`,
      `imscmservice`) — semuanya di daftar 18 yang **tidak dipasang** → set yang
      dikirim 100% 32-bit (bug 18.1 10.14 tidak kena). **Protobuf**: hanya
      `libwvhidl.so` + `libwvdrmengine.so` yang butuh `libprotobuf-cpp-lite.so` —
      keduanya tidak dipasang. Tidak ada blob terpasang yang butuh protobuf →
      isu v28/v29 (meghs vs a6010) tidak relevan; `prebuilts/vndk/{v28..v32}`
      tetap tersedia di tree.
- [x] **6.4** `verify-rom.sh` diperluas: cek **blob hilang** (setiap entri
      `A37-vendor.mk` harus ada di image), cek **lokasi sepolicy** (`/sepolicy`
      di root + `plat_sepolicy.cil` + `precompiled_sepolicy` — lihat Fase 5.3),
      dan diadaptasi ke LOS 20 (sdk 33, zip `lineage-20.0-*`, OUT default
      `/root/los20`).
- [x] **6.5** `TARGET_PROCESS_SDK_VERSION_OVERRIDE` — **penawar, tidak dipasang
      preventif**. Tree kita sudah menyetel `mediaserver=22` +
      `mm-qcamera-daemon=22` (BoardConfig.mk:344-346) sejak 19.1; mekanismenya
      tetap dikonsumsi (`vendor/lineage/config/BoardConfigSoong.mk:125`).
      Baris milik retiredtab (audio/camera/sensors =25) ditimbang hanya bila
      HAL tertentu gagal di perangkat.

⚠️ **Yang TIDAK dikerjakan:** menambah blob dari daftar meghs (perfd,
thermal-engine, msm_irqbalance, hci_qcomm_init, lib64 IMS, dll.) — tidak
dirujuk HAL yang kita bangun; 19.1 boot tanpa semuanya. Ditinjau lagi bila
gejala muncul di perangkat.

---

## Fase 7 — Init & rootdir

Selesai 5 Agustus 2026. **Nol perubahan source** — persis seperti yang
diharapkan 7.1. Semua butir diverifikasi, bukan diasumsikan:

- [x] **7.1** Nol perubahan — dibuktikan dengan pengujian, bukan "harapan":
      - `host_init_verifier` (parser init A13) menerima **kelima** rc file kita
        (init.qcom, init.qcom.power, init.qcom.ssr, init.qcom.usb,
        init.target). Peringatan: verifier **tidak** untuk format ueventd —
        menolak juga `system/core/rootdir/ueventd.rc` platform (uji silang,
        false positive).
      - `libinit_msm8916` (TARGET_INIT_VENDOR_LIB) ter-build, exit 0.
      - Rantai import valid di LOS 20: `init.rc:9-10`
        (`import /vendor/etc/init/hw/init.${ro.hardware}.rc`,
        `ro.hardware=qcom` dari `BoardConfig.mk:179`) →
        `init.qcom.rc:28-31` mengimpor power/ssr/usb/target — semua dipasang
        ke `/vendor/etc/init/hw/` (`rootdir/Android.mk:21-59`).
- [x] **7.2** `fstab.qcom` — `encryptable=`/`forceencrypt=` **nol sisa** (hanya
      komentar penjelas di baris 26-30). Dikerjakan di Fase 3 (dua baris
      `/data`) + commit `7938923` (entri SD card). TWRP fstab di luar scope
      (recovery tidak dibangun ulang).
- [x] **7.3** Servis `ppd` **tidak ada** — yang tersisa hanya komentar
      (init.qcom.rc:272-282). Dihapus sejak 19.1 (`f5b96e5`), 10.C.
- [x] **7.4** `ueventd.qcom.rc` — 274 baris (dipasang sebagai `/vendor/ueventd.rc`,
      `rootdir/Android.mk:71-76`); aturan `kgsl-3d0` = `0666 system system` ada.
      Gerbang pembacaan `/vendor/ueventd.rc` **masih terbuka untuk API 21 di
      LOS 20**: `system/core/init/ueventd.cpp:306`
      `GetIntProperty("ro.product.first_api_level", 10000) < __ANDROID_API_T__`
      (A12: `<= __ANDROID_API_S__`; efek sama untuk nilai 21). Pasangan
      `PRODUCT_SHIPPING_API_LEVEL := 21` + `BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED`
      tetap terpasang.
      ⚠️ Konfirmasi terakhir tetap di perangkat (Fase 9):
      `ls -l /dev/kgsl-3d0` harus `crw-rw-rw- system system`.

---

## Fase 8 — Build

Selesai 5 Agustus 2026: **`m -j6 bacon` exit 0** — `lineage-20.0-20260805_185028-UNOFFICIAL-A37.zip`
(588 MB). Log: `work/fase8-bacon10.log`. Tujuh pemblokir dibereskan (8.1a–8.1d).

- [x] **8.1** `m -j6 bacon` (JOBS=6, konvensi 19.1 — RAM 11 GB). Resume inkremental
      antar percobaan lewat ninja; peluncuran memakai `setsid` (sesi terpisah —
      build yang diluncurkan dengan `sleep` panjang dalam satu perintah shell
      sempat kena SIGTERM saat perintah itu selesai).
- [x] **8.2** `verify-rom.sh` — **SEMUA VERIFIKASI LOLOS**: properti (sdk 33,
      zygote32, eBPF false, vndk current), **320 blob lengkap**, lokasi sepolicy,
      adbd FunctionFS legacy, boot.img, paket. Dua bug skrip diperbaiki selama
      Fase 8 (pemetaan path non-treble + lokasi `/sepolicy` di ramdisk).
- [x] **8.3** boot.img: pagesize 2048, kernel_addr 0x80008000, **dt_size 210944
      (identik referensi)**, ramdisk_offset/tags 0x01000000/0x00000100 (via
      `tools/qbootimg.py`).

### 8.1a Pemblokir 1: generator kernel headers (generated_kernel_includes)

Regresi LOS 20: `-fuse-ld=lld` dipindah dari `HOSTCFLAGS` ke `HOSTLDFLAGS`
(`vendor/lineage/config/BoardConfigKernel.mk:167`), padahal rule `host-csingle`
kernel 3.10 (`scripts/Makefile.host:117`, dipakai fixdep) TIDAK memakai
HOSTLDFLAGS → HOSTCC=clang mencari `ld` polos yang tidak ada di PATH sandbox:

```
clang-14: error: unable to execute command: Executable "ld" doesn't exist!
make[2]: *** [scripts/Makefile.host:118: scripts/basic/fixdep] Error 1
```

19.1 lolos karena HOSTCFLAGS memuat `-fuse-ld=lld` (BoardConfigKernel.mk 19.1:140),
dan `TARGET_KERNEL_ADDITIONAL_FLAGS` kita tidak sampai ke generator soong
(ekspor di BoardConfigSoong.mk terjadi sebelum tasks/kernel.mk menggabungkannya).
**Perbaikan:** `HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"`
ditambahkan langsung ke cmd generator (`vendor/lineage/build/soong/Android.bp:24`),
langkah 4 `apply-legacy-patches.sh`. Diverifikasi: headers_install exit 0
(448+35 header).

### 8.1b Pemblokir 2: clang 14 vs kode CAF 2015 (enum-enum-conversion)

LOS 20 memakai clang-r450784d (clang 14); 19.1 memakai clang-r416183b1
(clang 12). Clang 14 menaruh `-Wenum-enum-conversion` di `-Wall`, dan display HAL
memaksa `-Werror` (`hardware/qcom-caf/msm8916/display/common.mk:9`):

```
copybit_c2d.cpp:259: error: bitwise operation between different enumeration types
```

**Perbaikan:** `-Wno-error=enum-enum-conversion` di common.mk display, langkah 5
`apply-legacy-patches.sh`. Tidak bisa via `BOARD_GLOBAL_CFLAGS` — `-Werror` lokal
display datang setelah flag global dan menaikkan lagi peringatan itu.

### 8.1c Pemblokir 3-7: hanyutan hulu (upstream drift) — lima pin baru di A37-20.xml

Pola yang sama berulang: proyek hulu yang bergerak melewati pembekuan UL
(2025-04-04) memakai API/atribut yang tidak ada di fork UL yang beku. Semua
diverifikasi `m <modul>` exit 0 sebelum di-pin:

| Proyek | Pin | Commit | Gejala | Akar |
|---|---|---|---|---|
| `external/skia` | r28 merge | `0c334c1c2f` | `unknown type name 'dng_area_task_progress'` | skia hanyut butuh API dng_sdk 1.7.1; dng_sdk dipin pra-1.7.1 (Fase 2.7); versi dng terbaru memutus libjpeg sdk-variant |
| `packages/services/Mms` | pra-hanyut | `0cc94f1` | `does not override abstract method addMultimediaMessageDraft(String,Uri)` | Mms hulu (fbb2828, 2024-07) menambah callingUser yang tak ada di IMms fork UL |
| `packages/services/Telephony` | r28 merge | `288c28358` | `cannot find symbol isShell(int)` | commit 2026-01-27 memakai method yang tidak ada di fork UL opt/telephony |
| `packages/apps/Trebuchet` | pra-hanyut | `1273734a5f` | `onBackEvent` tidak override | 3560be863c (2025-08) mengubah signature onBackEvent (displayId) |
| `packages/apps/Settings` | r26 merge | `823af438e1` | `cannot find symbol setClassNameIfItIsConfirmDeviceCredentialActivity()` | method itu tidak PERNAH ada di fork UL (BiometricPrompt terakhir berubah 2022) |

Aturan r28/r26 dipilih karena sezaman dengan pembekuan UL (skia/dng_sdk/Mms/
Telephony semua r28); Settings butuh r26 karena r28-nya sudah memakai method
yang tidak ada. Sesuai kebijakan: pin hanya yang terbukti memutus build.

### 8.1d Properti `ro.vndk.version=current` dikembalikan

Hilang saat rebase 19.1→20 (19.1 menetapkannya di `system_prop.mk:65`). Tanpa
nilai ini linkerconfig tidak membangun namespace VNDK
(`system/linkerconfig/modules/environment.cc:27`). ROM 19.1 kita
(system-build.prop:180) dan gt58wifi (system-build.prop:69) sama-sama
`current`. Dipasang via `PRODUCT_PROPERTY_OVERRIDES` di device.mk (bukan
`BOARD_VNDK_VERSION` — itu ikut membangun `vndk_package` yang tidak dipakai).

⚠️ **Belum diuji di perangkat** — semua verifikasi di atas level artifact build.
Langkah berikutnya: protokol Fase 9 (kernel AnyKernel3 dulu).

---

## Fase 9 — Boot pertama & protokol diagnosis

✅ **HOMESCREEN TERCAPAI 6 Agustus 2026** — ROM `lineage-20.0-20260806_001127`
boot sampai homescreen di perangkat nyata. Dua pemblokir boot ditemukan dan
dibereskan (9.6). Log perangkat: `report/` (dmesg, getprop, logcat).

- [x] **9.1** Uji kernel (Fase 1.5b) dan ROM penuh berjalan; variabel dipisahkan.
- [x] **9.2** `androidboot.init_fatal_reboot_target=recovery` bekerja sebagaimana
      dirancang — gejala bootloop yang diamati BUKAN init fatal (tidak jatuh ke
      recovery), sehingga tersangka bergeser ke system_server. Benar: Watchdog.
- [x] **9.3** adb — **prediksi §9.3 terbukti keliru arahnya**: `adb devices` kosong
      di build rilis bukan karena init mati, tapi karena `ro.adb.secure=1`
      (post_process_props.py:33 tidak menambah adb ke persist.sys.usb.config).
      Untuk diagnosis: `WITH_ADB_INSECURE := true` + `sys.usb.config=mtp,adb` dari
      init (commit `0345221`). **Harus dimatikan sebelum rilis.**
- [x] **9.4** Splash/animasi bukan sinyal — benar: animasi jalan penuh selama
      system_server macet.
- [x] **9.5** Penanda keberhasilan: homescreen tercapai. Yang BELUM terverifikasi di
      perangkat: kamera, RIL (risiko terbuka), Wi-Fi, sensor, audio, Bluetooth.

### 9.6 Pemblokir boot yang ditemukan di perangkat

**Bootloop 1 — fitur Lineage Health charging control (Watchdog):**

Gejala: boot animation 2+ menit, reboot berulang, tidak pernah ke recovery.
Logcat (`report/logcat.txt`):

```
WATCHDOG KILLING SYSTEM PROCESS: Blocked in handler on main thread
  at ServiceManager.waitForDeclaredService(...)
  at ChargingControlController.<init>(ChargingControlController.java:145)
  at HealthInterfaceService.onStart(...)
```

Rantai akar:
1. `ChargingControl()` (`hardware/lineage/interfaces/health/aidl/default/
   ChargingControl.cpp:40-52`) ber-loop menunggu node yang writable
   `R_OK|W_OK`.
2. Node sysfs power_supply dibuat 0644 root:root (`power_supply_sysfs.c:257,267`)
   — health-service (user system) tak pernah bisa menulis → loop selamanya.
3. `IChargingControl/default` tak pernah register.
4. `waitForDeclaredService` di main thread system_server menggantung →
   Watchdog membunuh system_server tiap ~2 menit → bootloop.

Perbaikan (commit `e92c32a`): `chmod 0666
/sys/class/power_supply/battery/charging_enabled` di `on fs`
(init.qcom.rc) — loop constructor adalah mekanisme retry 100ms, jadi begitu
chmod masuk, servis register normal dan fitur charging control justru
berfungsi. `SUPPORTS_BYPASS := false` (tidak ada jalur bypass). Catatan:
`SUPPORTS_TOGGLE` TIDAK boleh dimatikan — constructor hanya didefinisikan
di bawah `#ifdef TOGGLE`/`#ifdef DEADLINE`, mematikan keduanya = link error.

### 9.7 Yang belum diuji di perangkat (Fase 10)

Kamera (HAL1), RIL (risiko terbuka terbesar — belum pernah jalan di 19.1),
Wi-Fi, sensor, audio, Bluetooth, charging control (harusnya jalan — verifikasi
via Settings), dan uji stabilitas (boot hangat, sleep/wake).

## Fase 10 — Debug di device: prediksi berbasis bukti

### 10.1 Selesai 6 Agustus 2026 — Wi-Fi diperbaiki

Log perangkat kedua (`report/logcat1.txt`, build `20260806_001127`): boot sehat
(`sys.boot_completed=1` di 68,7s, Launcher tampil, nol Watchdog, nol FATAL),
tapi Wi-Fi mati. Bukti:

```
init: Control message: Could not find 'aidl/android.hardware.wifi.supplicant.
ISupplicant/default' for ctl.interface_start  (898×, error 0x20)
WifiNative.startAndWaitForSupplicantConnection gagal
```

Akar: definisi `service wpa_supplicant` HIDL warisan 19.1 di
`init.qcom.rc:189` membuat definisi AIDL dari
`android.hardware.wifi.supplicant-service.rc` **ditolak** — nama service
duplikat → `service_parser.cpp:690-694` *"ignored duplicate definition of
service 'wpa_supplicant'"* → interface `aidl/...ISupplicant/default` tak
pernah terdaftar di init → lazy start gagal → supplicant tak pernah jalan.

Perbaikan (commit device tree): blok `wpa_supplicant` HIDL dibuang dari
`init.qcom.rc` + baris `restart cameraserver` dibuang (gagal "service not
found" — dengan `TARGET_HAS_LEGACY_CAMERA_HAL1=true`, LOS 20 meng-compile
`-DNO_CAMERA_SERVER` lewat modul soong `no_cameraserver`
(`vendor/lineage/build/soong/Android.bp:306-331`), jadi service `cameraserver`
memang tidak ada — CameraService berjalan di jalur mediaserver/legacy).

Catatan: `cameraserver` tidak ada di image BUKAN bug — by design untuk
konfigurasi HAL1 legacy.

### 10.2 Status per komponen (6 Agustus 2026, belum final)

| Komponen | Status | Bukti |
|---|---|---|
| Boot / homescreen | ✅ | sys.boot_completed=1, Launcher tampil |
| Wi-Fi | 🔧 diperbaiki, **belum diuji** di build `20260806_005310` | §10.1 |
| Kamera | ❓ belum diuji di LOS 20 (jalur mediaserver/legacy; 19.1 terbukti jalan) | — |
| RIL | ❌ rusak (risiko terbuka, sama seperti 19.1) | lazy start IRadio gagal |
| Sensor, audio, BT, charging control | ❓ belum diuji | — |

---

### 10.3 Prediksi awal (diturunkan dari dok 19.1)

Enam bug 19.1 sudah diperbaiki di tree basis dan **tidak diharapkan muncul lagi**. Yang
realistis diantisipasi untuk 20, dengan sumbernya:

| # | Gejala yang diantisipasi | Dasar prediksi | Langkah pertama |
|---|---|---|---|
| A | Bootloop karena lokasi sepolicy | artikel meghs | §3.2, banding ramdisk |
| B | SurfaceFlinger/Skia di Adreno 306 | meghs **dan** 10.B kita | `gles` sudah dipasang dan **masih sah di A13** — `RenderEngineType::GLES = 1` tetap ada dan tetap jadi `default:` di `frameworks/native/libs/renderengine/RenderEngine.cpp` (dicabut baru di A14). Cadangan: **`threaded`**, yang dipakai ROM gt58wifi yang boot — juga non-Skia |
| C | Audio HAL crash | meghs (tidak selesai) | §3.8 — `@7.1`, bukan `@5.0` |
| D | RIL tidak register | **belum selesai di 19.1 kita**, dan meghs juga "no signal" | Bug terbuka terbesar. 18.1 10.6/10.7 punya dua penyebab beruntun yang terdokumentasi |
| E | Touchscreen | meghs (driver salah di kernel) | Kernel kita berbeda dan touchscreen bekerja di 18.1/19.1 — kemungkinan besar tidak kena |
| F | Wi-Fi / sensor | belum diuji di 19.1 | Fase setelah boot |

⚠️ **RIL adalah risiko terbesar yang diakui.** Belum pernah berfungsi di 19.1 kita, dan
tidak berfungsi di tree meghs. Tidak ada satu pun sumber referensi yang membuktikan RIL jalan
di A37 pada Android 12+. Jangan jadikan RIL sebagai kriteria keberhasilan Fase 9.

---

## Risiko yang diakui

| Risiko | Dampak | Mitigasi |
|---|---|---|
| **Jangkar ROM beda device** | gt58wifi menjawab level chipset & Android 13, **bukan** level A37: RIL, kamera A37, panel, dan sensor tidak terjawab | Dinyatakan terbuka di §1.0 dan `ref/evidence/README.md`; untuk hal khas A37 dipakai jangkar B (meghs) dan ROM 19.1 kita sendiri |
| Kernel gt58wifi 32-bit, A37 arm64 | Temuan kernel tidak bisa disalin langsung | Delta kernel diukur terhadap **source** retiredtab (§3.6), bukan terhadap boot.img-nya; `CONFIG_IKCONFIG` mati di ROM itu sehingga `.config`-nya memang tidak tersedia |
| Disk 126 GB tanpa margin | Build gagal di 95% | §0.1 — bersihkan sebelum `mka bacon` |
| Audio | Tidak ada suara | §3.8 — tetap `@6.0`, pasangan yang sudah konsisten. Bukan pemblokir boot |
| **Fork UL beku sejak 2025-04 (ASB 2025-03)** | Userspace tertinggal ± 16 bulan dari ASB terkini | §1.1 — bukan pemblokir boot. Paritas keamanan lewat set patch retiredtab (§1.4), dikerjakan setelah boot pertama |
| Fork UL dipin ke **branch**, bukan SHA, di `snippets/losul.xml` | Kalau UL cair lagi, `repo sync` menarik perubahan tanpa peringatan | Catat SHA tiap fork saat build berhasil; pin SHA repo kita sendiri di `A37-20.xml` |
| RIL | Tidak ada sinyal | Diakui terbuka, bukan kriteria Fase 9 |
| `/data` tanpa enkripsi | Keamanan | Dinyatakan terbuka (§3.7); perangkat uji saja |
| Blob 2016 di framework 2022 | Crash HAL beragam | Triase Fase 6; jangan adopsi daftar blob orang lain borongan |

---

## Yang sengaja TIDAK dikerjakan

| Item | Alasan |
|---|---|
| `msm8916-mainline` | Membuang seluruh blob vendor. Proyek lain, bukan fase proyek ini |
| Adopsi tree meghs sebagai basis | §3.9 — `first_api_level=19`, audio `@5.0`, dependensi common tree |
| Rebase kernel ke 32-bit / a6010 / retiredtab | §3.6 — tidak ada persyaratan kernel baru dari A13; mengganti basis membuang bukti perangkat |
| FBE (file-based encryption) | Kernel 3.10; §3.7 |
| Treble / VNDK snapshot penuh | Non-treble sudah terbukti di 19.1; `ro.vndk.version=current` |
| `git am` patch besar retiredtab borongan | §1.4 — patch bulanan milik retiredtab, bukan syarat umum; cek dulu isinya sudah ada di fork UL |
| repopick apa pun | §1.1 — sudah masuk fork UL |
| Enforcing SELinux di boot pertama | Fase tersendiri setelah stabil |

---

## Urutan pengerjaan

```
Fase 0  Persiapan          ── disk, branch kerja, envsetup
Fase 1  Kernel             ── 1 perubahan fungsional; uji AnyKernel3 di atas ROM 19.1
Fase 2  Manifest & sync    ── UL + A37-20.xml; verifikasi 2.4 sebelum lanjut
Fase 3  Device tree        ── rebase ce39cf5, terapkan §3.1, pertahankan §3.2
Fase 4  VINTF              ── sepolicy 33.0, audio 7.1, aturan 4.3
Fase 5  SEPolicy           ── m selinux_policy harus lolos
Fase 6  Vendor blobs       ── triase 336 baris selisih
Fase 7  Init & rootdir     ── enkripsi dicabut dari fstab
Fase 8  Build              ── mka bacon + verify-rom.sh
Fase 9  Boot pertama       ── AnyKernel3 dulu, lalu ROM; ramoops siap
Fase 10 Debug di device    ── prediksi A-F
```

Fase 1 dan Fase 2–3 bisa berjalan paralel: kernel diuji di atas ROM 19.1 yang sudah ada,
tidak menunggu ROM 20 selesai.

---

## Lampiran A — Berkas di repo ini

| Berkas | Isi |
|---|---|
| `PLAN.md` | dokumen ini |
| `A37-20.xml` | local manifest, seluruh SHA diverifikasi 5 Agustus 2026 |
| **`ref/evidence/`** | **hasil bedah ROM LOS 20 msm8916 yang terbukti boot** (§1.5) — `build.prop`, VINTF, fstab, `init*.rc`, daftar sepolicy, header boot.img |
| `ref/lineage-20.0-*-gt58wifi.zip` | ROM sumbernya (616 MB) |
| `research/` | 12 clone referensi + artikel dev.to yang sudah diekstrak |
| `work/sync20*.log` | log sync, termasuk dua kegagalan §0.3 dan penyelesaiannya |

Dibawa dari `/root/a37-19.1/tools/` (masih berlaku): `build-kernel-zip.sh`,
`envsetup-a37.sh`, `verify-rom.sh`, `verify-device.sh`, `qbootimg.py`, `sdat2img.py`,
`triage.sh`.

---

## Lampiran B — Perintah verifikasi ulang

```bash
# Isi fork UL — inilah yang menggantikan 9 repopick + 23 patch kamera
curl -sf -o /dev/null -w "%{http_code}\n" \
  https://raw.githubusercontent.com/LineageOS-UL/android_packages_modules_adb/lineage-20.0/transport_legacy.cpp
curl -s https://raw.githubusercontent.com/LineageOS-UL/android_frameworks_av/lineage-20.0/services/camera/libcameraservice/common/CameraProviderManager.cpp \
  | grep -A3 "case 1:"

# Variabel usang yang dipakai device tree kita
cd /root/los20 && grep -rhoE "KATI_obsolete_var [A-Z_0-9]+" build/make/core/*.mk \
  | awk '{print $2}' | sort -u > /tmp/obsolete.txt
cd <device-tree> && for v in $(cat /tmp/obsolete.txt); do
  grep -rl "\b$v\b" --include="*.mk" . | grep -v '^./.git' | sed "s|^|$v -> |"; done

# Delta binder terhadap kernel LOS 20 retiredtab
git -C k-ours show lineage-19.1:drivers/staging/android/binder_alloc.c > /tmp/a.c
git -C k-rt   show origin/lineage-20.0:drivers/staging/android/binder_alloc.c > /tmp/b.c
diff -u /tmp/a.c /tmp/b.c

# qcom-caf msm8916 memang tidak ada di LOS 20
ls /root/los20/hardware/qcom-caf/
git ls-remote --heads https://github.com/LineageOS/android_hardware_qcom_audio.git \
  | grep caf-msm8916

# Gerbang VINTF kernel (harus tidak menyala dengan SHIPPING_API_LEVEL=21)
sed -n '468,478p' /root/los20/build/make/core/product_config.mk

# Integritas tree setelah sync
cd /root/los20 && repo forall -c 'git rev-parse --verify HEAD >/dev/null 2>&1 || pwd'

# Bedah ulang ROM jangkar (§1.5) — bisa diulang dari nol
cd ref && unzip -o -q lineage-20.0-*-gt58wifi.zip boot.img system.new.dat.br system.transfer.list
python3 ../tools/qbootimg.py boot.img boot_out          # header Qualcomm dt_size
brotli -d -o system.new.dat system.new.dat.br
python3 ../tools/sdat2img.py system.transfer.list system.new.dat system.img
truncate -s 3145728000 system.img                       # WAJIB: sdat2img menulis blok data
                                                        # saja; mount gagal tanpa ini
mount -t ext4 -o ro,loop system.img sysmnt

# Versi kernel ROM itu (CONFIG_IKCONFIG mati, jadi .config TIDAK bisa diekstrak)
python3 - <<'EOF'
import lzma
d = open('boot_out/kernel.img','rb').read(); p = d.find(b'\xfd7zXZ')
open('kernel.decomp','wb').write(lzma.LZMADecompressor().decompress(d[p:]))
EOF
strings -a kernel.decomp | grep -m1 "^Linux version"

# Bukti fork UL berjalan di biner yang dirilis
strings -a sysmnt/system/apex/com.android.adbd/bin/adbd | grep legacy
strings -a sysmnt/system/lib/libcameraservice.so | grep -i CameraHardwareInterface
```

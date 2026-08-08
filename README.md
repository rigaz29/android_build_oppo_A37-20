# android_build_oppo_A37-20

Rencana dan build kit **LineageOS 20 (Android 13, SDK 33)** untuk
**OPPO A37 / A37f / A37fw** — Qualcomm MSM8916 (Snapdragon 410), kernel 3.10.108,
2 GB RAM, Adreno 306.

> ## Status: **ROM terpasang dan dipakai di perangkat** (8 Agustus 2026)
>
> Boot, **Wi-Fi**, **Bluetooth**, dan **RIL (telepon/SMS/LTE)** berfungsi — dikonfirmasi
> pemilik perangkat.
>
> | | |
> |---|---|
> | ROM terakhir | `lineage-20.0-official-FINAL-BT-RIL-20260807_122340.zip` (615 MB) |
> | Basis | **`LineageOS/android` `lineage-20.0` official** + 135 patch legacy |
> | Device tree | [`rb_device_oppo_A37`](https://github.com/rigaz29/rb_device_oppo_A37) `lineage-20` @ `c5291cc` |
> | Kernel | [`kernel_oppo_msm8939`](https://github.com/rigaz29/kernel_oppo_msm8939) `lineage-20` @ `8cc1519` |
>
> | Fase | Status |
> |---|---|
> | **1 Kernel** | ✅ satu perubahan fungsional (`binder_alloc` mmap_sem), **tidak berubah sejak itu** |
> | **2–7** | ✅ manifest, device tree, VINTF, sepolicy, blob, init |
> | **8 Build** | ✅ `m bacon` rc=0, `verify-rom.sh` lolos |
> | **9 Boot** | ✅ homescreen 6 Agu 2026 |
> | **M0–M6 migrasi basis** | ✅ UL → official, 7 Agu 2026 — lihat [`PLAN-OFFICIAL.md`](PLAN-OFFICIAL.md) |
> | **10 Debug device** | 🔧 berjalan — audio, kamera, sensor |
>
> **Yang masih menunggu:**
> - ⚠️ `WITH_ADB_INSECURE` masih aktif — **matikan sebelum rilis publik**
> - Glitch audio saat buka/tutup app — terdiagnosis, belum ditambal
> - Kamera normal di build basis UL; **paritas di basis official belum diuji ulang**
>
> Pendahulunya: [`a37-19.1`](../a37-19.1) — LineageOS 19.1, boot sampai homescreen,
> kamera depan+belakang dan Bluetooth berfungsi, enam kegagalan boot (10.A–10.F) sudah
> ditemukan akarnya. Seluruh temuannya jadi modal proyek ini.

---

## Bagaimana fungsi legacy didapat — dan kenapa berubah dua kali

Kernel 3.10 pada Android 13 butuh sejumlah fungsi yang sudah dicabut hulu: `adb` di
FunctionFS lama, Camera HAL1, gerbang eBPF/netd untuk kernel < 4.9, gerbang
`memfd_create`, dan `sepolicy-legacy`. Proyek ini menempuh **tiga pendekatan berturut**:

| | Cara | Hasil |
|---|---|---|
| 19.1 | `LineageOS/android` + 9 repopick Gerrit + 23 patch Camera HAL1 manual | boot, tapi tambalan mudah hilang tiap `repo sync` |
| 20 tahap 1 | **`LineageOS-UL/android`** — 37 fork legacy pra-terpasang | **9 repopick + 23 patch → nol.** ROM boot, Wi-Fi/BT/kamera jalan |
| 20 tahap 2 (**sekarang**) | **`LineageOS/android` official + 135 patch** hasil ekstraksi dari fork UL | fungsi legacy yang sama, **plus ASB yang masih berjalan** |

**Kenapa pindah dari UL ke official.** Seluruh lini LineageOS-UL (19.1, 20.0, 21.0) beku
di **2025-04-04**; ASB terakhir yang dilacaknya **2025-03**. Basis official masih menerima
tambalan keamanan. Selisihnya ~15 bulan ASB — dan tidak akan pernah tertutup dari UL.

Pemindahannya diukur, bukan ditebak: **142 commit fungsional wajib** dikategorikan T0/T1/T2,
diekstrak dengan `git format-patch`, disimpan di [`patches/official/`](patches/official/),
dan diterapkan skrip idempoten pasca-sync. Rinciannya di
**[`PLAN-OFFICIAL.md`](PLAN-OFFICIAL.md)**.

Fork UL tetap berharga sebagai **sumber patch** dan sebagai bukti *apa* yang dibutuhkan —
tapi tidak lagi sebagai basis.

⚠️ `device/qcom/sepolicy-legacy` **tetap** diambil dari UL (`lineage-20.0-legacy`) — repo
itu tidak ada di manifest official. Satu-satunya sisa ketergantungan langsung.

---

## Isi

| Berkas | Keterangan |
|---|---|
| **[`HANDOFF.md`](HANDOFF.md)** | **Baca ini pertama.** Keadaan sekarang, keputusan yang sudah diambil, delapan jebakan yang benar-benar pernah menjebak proyek ini |
| **[`PLAN-OFFICIAL.md`](PLAN-OFFICIAL.md)** | **Basis yang berlaku sekarang** — migrasi UL → official, delta terukur per commit, fase M0–M6 (selesai) |
| [`PLAN.md`](PLAN.md) | 10 fase asli di atas basis UL. **Arsip yang masih berlaku** untuk seluruh temuan khas A37 (10.A–10.F, VINTF, sepolicy, blob) |
| [`PLAN-LOS21.md`](PLAN-LOS21.md) · [`PLAN-LOS22.md`](PLAN-LOS22.md) | Studi kelayakan LOS 21 / 22 — keduanya **ALPHA**, belum dikerjakan |
| [`A37-20.xml`](A37-20.xml) | Local manifest: 3 repo proyek, 3 pin qcom-caf msm8916, `sepolicy-legacy` dari UL, + 6 pin anti-hanyut |
| [`patches/official/`](patches/official/) | **135 patch legacy** hasil ekstraksi dari fork UL, per repo |
| **[`ref/evidence/`](ref/evidence/)** | Hasil bedah ROM LOS 20 msm8916 yang terbukti boot — `build.prop`, VINTF, fstab, `init*.rc`, header boot.img |
| `tools/apply-official-patches.sh` | **Terapkan 135 patch. WAJIB tiap habis `repo sync`** |
| `tools/repo-doctor.sh` | Perbaiki kegagalan `repo sync` yang pernah dialami |
| `tools/check-drift.sh` | Deteksi project yang hanyut dari basis |
| `tools/verify-rom.sh` · `tools/test-device.sh` | Verifikasi ROM sebelum flash · uji fungsi di perangkat |
| `tools/build-kernel-zip.sh` | Bangun kernel + zip AnyKernel3 tanpa membangun ROM penuh |
| `tools/envsetup-a37.sh` | Bersihkan environment lalu `lunch`. Source ini, jangan `lunch` langsung |
| `tools/apply-legacy-patches.sh` | ⚠️ **arsip basis UL** — jangan dipakai di tree official |

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

**Basis OFFICIAL, bukan UL.**

```bash
mkdir -p ~/los20 && cd ~/los20

# repo init official MEN-DOWNGRADE .repo/repo ke era Python 2 -> ModuleNotFoundError.
# Karena itu REPO_REV dipaksa di setiap perintah repo. Lihat HANDOFF sec.5 jebakan #7.
REPO_REV=v2.66 repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs

mkdir -p .repo/local_manifests
cp /path/ke/repo-ini/A37-20.xml .repo/local_manifests/

# JANGAN pakai --no-tags: remote aosp dipin ke refs/tags/android-13.0.0_r75,
# dan --no-tags membuat 1051 project AOSP gagal checkout.
REPO_REV=v2.66 repo sync -c -j8 --force-sync --no-clone-bundle

# Kalau sync pernah terputus:
/path/ke/repo-ini/tools/repo-doctor.sh ~/los20

# 135 patch legacy -- WAJIB, dan WAJIB DIULANG tiap habis repo sync
/path/ke/repo-ini/tools/apply-official-patches.sh ~/los20

source /path/ke/repo-ini/tools/envsetup-a37.sh   # sudah lunch userdebug (BUKAN eng, lihat 10.F)
m bacon
```

⚠️ **Disk.** Sisa **29 GB (92% terpakai)** per 8 Agustus 2026, sementara build penuh butuh
45–50 GB. **Periksa `df -h /` dan bersihkan `out/` sebelum rebuild.**

---

## Risiko terbesar yang diakui

~~**RIL.**~~ **TERJAWAB 7 Agustus 2026.** Dokumen ini sebelumnya menyebut RIL sebagai
risiko terbuka terbesar — "tidak ada satu pun sumber yang membuktikannya jalan di A37 pada
Android 12+". Kehati-hatiannya benar, **skalanya salah besar**: penyebabnya properti
`vendor.rild.libpath` yang hilang, dan perbaikannya **satu baris** (`c5291cc`).
Telepon, SMS, dan LTE teruji di perangkat. 16 patch T-RIL dari fork UL tidak diperlukan.

**`WITH_ADB_INSECURE` masih aktif.** Dinyalakan untuk diagnosis Fase 9–10: adb hidup dari
awal boot **tanpa otorisasi**. Aman di meja kerja, **tidak boleh ikut rilis publik**.
Matikan lalu rebuild sebelum membagikan ROM.

**`/data` tidak terenkripsi.** fstab `/data` tanpa `encryptable=` — sama seperti ROM msm8916
Android 13 yang boot. FBE di kernel 3.10 adalah proyek tersendiri, di luar lingkup.
Perangkat uji saja, bukan untuk data pribadi.

**Paritas basis official belum diuji penuh.** Wi-Fi, Bluetooth, dan RIL sudah dikonfirmasi
di perangkat pada build official. Kamera normal di build basis **UL**, tapi belum diuji
ulang setelah pindah basis; sensor dan charging belum diuji sama sekali. Kolom ❔ di
`HANDOFF.md` §2 berarti *belum diuji* — bukan rusak, dan bukan jalan.

**Basis official bergerak.** Berbeda dari UL yang beku, `lineage-20.0` official masih
menerima commit. `repo sync` bisa menarik perubahan yang memutus build kapan saja —
jalankan `tools/check-drift.sh`, dan **selalu** `tools/apply-official-patches.sh` sesudah
sync.

---

## Lisensi

Dokumentasi dan skrip: bebas dipakai.

Berkas di [`ref/evidence/`](ref/evidence/) adalah potongan konfigurasi hasil ekstraksi dari
ROM turunan LineageOS pihak ketiga (`lineage-20.0-20260505-UNOFFICIAL-gt58wifi`, retiredtab),
disimpan untuk keperluan analisis dan interoperabilitas. ROM-nya sendiri tidak
di-redistribusi — lihat `.gitignore` dan `PLAN.md` Lampiran B untuk cara mengunduh dan
membedahnya ulang.

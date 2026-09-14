# PLAN-64BIT — LineageOS 20 userspace **64-bit** untuk OPPO A37

Ditulis **13 September 2026**. Status: **rencana, belum satu langkah pun dikerjakan.**

Dokumen ini berdiri di atas `PLAN-OFFICIAL.md` (basis yang berlaku) dan `PLAN.md`
(temuan khas A37). Yang berubah di sini **hanya arsitektur userspace** — dari
`armeabi-v7a` menjadi `arm64-v8a` dengan arsitektur kedua `arm` — plus kenaikan
kernel ke `lineage-24` dan sejumlah fitur yang dipanen dari proyek LOS 23.2.

Semua angka di bawah hasil pengukuran langsung pada 13 September 2026; perintah
yang menghasilkannya ada di §10.

---

## 0. Vonis di depan

**Kerjakan.** Dan ini pembalikan sikap dibanding `plan-64bit/README.md` proyek 23.2
yang dibuka dengan "kemungkinan besar hasilnya lebih buruk". Tiga alasan, semuanya
bukti baru yang belum ada saat dokumen itu ditulis:

| Kekhawatiran rencana 23.2 | Yang terjadi sebenarnya |
|---|---|
| RAM naik 20–30 % | **1,5 %.** Free RAM 989.525 K (32-bit) → 973.759 K (64-bit), selisih 15 MB — `plan-64bit/fase-5` |
| `system.img` mungkin tidak muat | Muat. Partisi **identik** di kedua proyek (`BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2859466752`, 2.727 MB), dan ROM 23.2 64-bit terbangun serta boot |
| Blob 64-bit belum pernah diuji | Sudah. ROM `23.2-20260906_134257` boot, `qmuxd`/`netmgrd`/`ril-daemon`/`qseecomd` running, SIM LOADED, jaringan LTE |

Ditambah satu hal yang membuat pekerjaannya kecil: **delta device tree untuk 64-bit
hanya 6 berkas / 173 baris** (§2.2). Sisanya sudah dipecahkan orang yang sama, di
perangkat yang sama, enam hari lalu.

**Satu pemblokir yang TIDAK dihadapi proyek 23.2 dan harus dihadapi di sini:**
kamera LOS 20 berjalan lewat **passthrough** ke dalam `cameraserver`, dan
`cameraserver` di build arm64 adalah proses 64-bit yang tidak akan pernah bisa
memuat `camera.vendor.msm8916.so` yang 32-bit. Ini bukan penyetelan — ini
perubahan arsitektur HAL kamera. Rinciannya §4.1, dan **inilah satu-satunya bagian
rencana ini yang benar-benar berisiko**.

Perkiraan total: **30–55 jam**, dengan 8–20 jam di antaranya untuk §4.1 saja.

---

## 1. Titik berangkat

ROM LOS 20 yang sekarang terpasang di perangkat: **userspace 32-bit di atas kernel
arm64**. Kernel tidak perlu disentuh untuk 64-bit — ia sudah 64-bit sejak Fase 1 dan
selama ini menjalankan userspace 32-bit lewat compat layer.

```
TARGET_BOARD_SUFFIX := _32          TARGET_KERNEL_ARCH := arm64     <- sudah 64-bit
TARGET_ARCH := arm                  BOARD_KERNEL_IMAGE_NAME := Image
TARGET_CPU_ABI := armeabi-v7a       TARGET_USES_64_BIT_BINDER := true
```
*(`BoardConfig.mk:135-143, 246-249` cabang `lineage-20`)*

| | Sekarang | Sesudah rencana ini |
|---|---|---|
| Basis | `LineageOS/android` `lineage-20.0` + 135 patch | **tidak berubah** |
| Kernel | `kernel_oppo_msm8939` `lineage-20` @ `2fed964` | `lineage-24` @ `cb52394` |
| Device tree | `rb_device_oppo_A37` `lineage-20` @ `caa9882` | cabang baru `lineage-20-64bit` |
| Vendor | `rb-vendor_oppo_A37` `lineage-18.1` @ `2e5c6f7` | cabang baru `lineage-20-64bit` |
| Userspace | `armeabi-v7a` | `arm64-v8a` + arch kedua `arm` |
| Zygote | `zygote32` | `zygote64_32` (lihat §5 Fase 2 soal `ZYGOTE_FORCE_64`) |

⚠️ **Perbarui dulu satu angka di `HANDOFF.md`:** peringatan "DISK KRITIS: sisa 29 GB"
sudah usang. Terukur hari ini: `df -h /` → **237 GB bebas dari 348 GB (33 % terpakai)**.
Tree `/root/los20` sudah tidak ada dan harus dibangun ulang (HANDOFF §4).

---

## 2. Basis: tiga repo, dipilih dengan angka

### 2.1 Kernel → `lineage-24`

Permintaannya "kernel terbaru", dan kebetulan itu juga pilihan yang paling aman.
Dua fakta yang menentukannya:

```
git rev-list --count origin/lineage-20..origin/lineage-24   ->  399
git rev-list --count origin/lineage-24..origin/lineage-20   ->    0
git log --oneline origin/lineage-23..origin/lineage-24      ->    1 commit
```

**Nol commit di belakang** berarti `lineage-24` adalah *fast-forward* murni dari
`lineage-20` — tidak ada yang perlu di-rebase, tidak ada yang hilang, dan commit
`8cc1519` (`binder_alloc` mmap_sem — satu-satunya perubahan fungsional Fase 1) tetap
menjadi leluhurnya.

**Dan `lineage-24` = `lineage-23` + 1 commit.** Cabang `lineage-23` adalah kernel yang
menjalankan ROM 23.2 harian di perangkat ini. Jadi kernel yang diminta bukan kernel
baru yang belum teruji — ia kernel yang sudah dipakai sehari-hari, kurang satu commit
(`cb52394`, perbaikan trigger torch).

#### Yang dibawa 399 commit itu

| Kelompok | Jumlah | Isi |
|---|--:|---|
| f2fs | 166 | backport perbaikan dan performa |
| ext4 + jbd2 + quota | 66 | termasuk project quota, mbcache2 |
| fscrypt | 36 | prasyarat FBE |
| mm | 26 | workingset/thrash detection, vmacache, shrinker per-node, `lockref` cmpxchg |
| WireGuard | 100 berkas | `net/wireguard`, terintegrasi in-kernel (`be67c444`) |
| PSI | 2 | `/proc/pressure/*` tanpa cgroup — yang dibaca lmkd |
| A37 spesifik | 12 | FBE, Adiantum, RADIO_IRIS, KEYS_COMPAT, torch, `f_fs` FFS_CLOSING, hung-task |

Defconfig `lineageos_a37f_defconfig` bertambah **83 baris**. Yang penting untuk LOS 20:

```
CONFIG_LOG_BUF_SHIFT=19          dmesg 128 KB -> 512 KB (ongkos 384 KB RAM statis)
CONFIG_PSI=y                     prasyarat ro.lmk.use_psi=true  (§6, T-A1)
CONFIG_WIREGUARD=y               prasyarat wireguard-tools      (§6, T-B4)
CONFIG_RADIO_IRIS[_TRANSPORT]=y  /dev/radio0 terbentuk          (§6, T-C2 — baca dulu)
CONFIG_F2FS_FS_ENCRYPTION=y      prasyarat FBE                  (§6, T-B1)
CONFIG_CRYPTO_ADIANTUM=y + ChaCha/NHPoly1305 NEON
```

#### Dua commit yang tampak berbahaya — keduanya sudah dibatalkan di hulu

Diperiksa satu per satu karena keduanya dibuat untuk userspace Android 15/16 dan
akan merusak LOS 20 kalau masih aktif:

| Commit | Kenapa berbahaya bagi LOS 20 | Keadaan di HEAD `lineage-24` |
|---|---|---|
| `13807b6` melepas `vndbinder` dari `CONFIG_ANDROID_BINDER_DEVICES` | LOS 20 **memakai** VNDK (`ro.vndk.version=current`, `551203f`); tanpa `/dev/vndbinder` HAL vendor kehilangan domain binder-nya | **Sudah di-revert** oleh `80535ab`. HEAD berbunyi `"binder,hwbinder,vndbinder"` ✓ |
| `d51dd4a` menempelkan DTB ke Image (`Image-dtb`) | Dibuat karena `mkbootimg` Android 16 membuang opsi `--dt`; LOS 20 masih memakai tabel DT terpisah + `dtbtool/` di device tree | **Sudah di-revert** oleh `e1a4070`. Hanya blok komentarnya yang tertinggal di ekor defconfig — **menyesatkan, hapus saat Fase 3** |

#### Satu konfigurasi yang HARUS dinilai, bukan diterima begitu saja

`CONFIG_ANDROID_TREBLE_SPOOF_KERNEL_VERSION=y` dengan prefix `"3.17"` (`bf6a4c0`)
membuat `uname()` melaporkan `3.17-3.10.108-...` kepada enam proses: `init`,
`zygote`, `system_server`, `bpfloader`, `netbpfload`, `perfetto`.

Itu dibuat untuk LOS 22, tempat basis tidak lagi menyediakan fork `art/`. **LOS 20
menyelesaikan masalah yang sama dari sisi lain** — `patches/official/art/` berisi
satu patch gerbang `memfd_create`, dan `external_perfetto/` satu lagi.

Dua-duanya menambal lubang yang sama dari ujung berlawanan. Yang harus diputuskan
di Fase 3, dengan bukti, bukan selera:

- **Kalau spoof dipertahankan:** patch `art/0001` dan `external_perfetto/0001`
  menjadi redundan. Jangan buru-buru mencabutnya — redundan tidak merugikan, dan
  mencabut patch berarti menyentuh seri yang sudah hijau.
- **Yang wajib diperiksa:** `system_bpf/` (2 patch) dan `system_netd/` (3 patch)
  LOS 20 bergerbang pada versi kernel < 4.9. Prefix `3.17` **masih** di bawah 4.9,
  jadi gerbangnya tetap tertutup dan perilakunya tidak berubah. **Verifikasi ini di
  tree, jangan percaya kalimat ini** — perintahnya di §10.
- Kalau ragu, `# CONFIG_ANDROID_TREBLE_SPOOF_KERNEL_VERSION is not set` mengembalikan
  perilaku kernel `lineage-20` persis, dan seluruh 399 commit lain tetap didapat.

### 2.2 Device tree → basis **`lineage-20`**, bukan `lineage-23-64bit`

Permintaannya "gunakan branch terbaik sebagai base". Kandidatnya dua, dan selisihnya
tidak dekat:

| | Opsi A: `lineage-20` + port 64-bit | Opsi B: `lineage-23-64bit` diturunkan ke A13 |
|---|---|---|
| Yang harus disentuh | **6 berkas, 162 tambah / 11 buang** | **488 berkas, 113.748 tambah / 457 buang** |
| Commit yang harus dinilai ulang | 3 | **119** |
| Titik berangkat | tree yang **boot di A37 dengan Android 13**, Wi-Fi/BT/RIL teruji | tree yang boot di A37 dengan Android 16 |
| Yang salah sejak baris pertama | — | `target-level 5`, camera provider AIDL, vibrator AIDL, `ro.vndk.version` dicabut, Wi-Fi AIDL, `protobuf26/`, HIDL yang dihapus A16 |

Opsi A menang telak. Yang di-port dari `lineage-23-64bit` **bukan commit-nya,
melainkan isinya** — ketiga commit itu menyentuh berkas yang sebagian tidak ada di
`lineage-20` (`Android.bp`, `hidl/radio/Android.bp`), jadi `cherry-pick` akan gagal
dan memang tidak seharusnya dicoba.

Ketiga commit sumbernya:

```
304f179  A37: build 64-bit -- TARGET_ARCH arm64 dengan arsitektur kedua arm
dab653a  A37: shim multiarch -- LOCAL_MULTILIB eksplisit dan libmedia pindah ke lib64
44df9d9  A37: libmedia dua arch, radio HAL 32-bit, ZYGOTE_FORCE_64
```

Dua dari tiga sebagian besar **tidak berlaku** untuk LOS 20:

- `dab653a`/`44df9d9` berputar di sekitar `libandroid_a37_vendor` dan
  `libmedia_a37_vendor` — stub namespace vendor yang lahir di era LOS 22/23. **LOS 20
  tidak punya keduanya**: `libshims/Android.mk` cabang `lineage-20` hanya memuat
  `libshim_camera`, `libcamera_shim`, dan `libril_shim`.
- Dan ketiganya memakai `LOCAL_VENDOR_MODULE := true`, **bukan** `LOCAL_MODULE_PATH`.
  Itu membebaskan LOS 20 dari jebakan yang memaksa `dab653a` ada:
  `shared_library.mk:14-16` menolak `LOCAL_MODULE_PATH` untuk pustaka ketika multilib
  "both" bertemu `TARGET_2ND_ARCH`. Ketiga shim LOS 20 akan terbangun untuk dua arch
  dengan sendirinya, terpasang di `vendor/lib` dan `vendor/lib64`, tanpa satu baris
  perubahan.

Yang benar-benar di-port karena itu praktis hanya `304f179` — §5 Fase 2.

Cabang baru: **`lineage-20-64bit`**, dibuat dari `lineage-20` @ `caa9882`. ROM 32-bit
yang sekarang berjalan tidak boleh tersentuh; kembali ke sana = `git checkout lineage-20`.

### 2.3 Vendor → `lineage-23-64bit` sebagai **sumber**, bukan sebagai isi

> ⚠️ **DIKOREKSI OLEH FASE 0 (13 Sep 2026).** Bagian ini menyimpulkan vendor tree
> harus dirakit dari **dua** sumber. Itu terlalu keras. Dari 52 berkas yang "hanya
> ada di 18.1", **43 sebenarnya ADA di cabang 64-bit sebagai `vendor/lib64/`**
> (pindah arch, bukan hilang) dan **9 sisanya memang tidak pernah dikirim LOS 20**.
> Berkas SET A yang benar-benar absen dalam arch apa pun: **nol**. `lineage-18.1`
> hanya diperlukan bila T-A4 (Widevine) dikerjakan. Rinciannya
> [`plan-64bit/fase-0/README.md`](plan-64bit/fase-0/README.md) §2.
>
> Fase 0 juga membantah basis yang disuruh dipakai §5 Fase 0 di bawah:
> yang benar `A37-vendor.mk` (323 entri), **bukan** `proprietary-files.txt`
> (453 entri, 39 di antaranya menunjuk berkas yang tidak ada).

Permintaannya memakai `rb-vendor_oppo_A37` cabang `lineage-23-64bit`. Cabang itu
memang membawa seluruh 114 pustaka `vendor/lib64`, dan itu bagian yang paling mahal.
Tapi ia **bukan superset** dari yang dipakai LOS 20 sekarang:

```
lineage-18.1      (dipakai LOS 20)   338 berkas
lineage-23-64bit                     400 berkas
hanya ada di 18.1                     52 berkas   <- HILANG kalau cabang itu dipakai apa adanya
```

Ini pengulangan persis temuan Fase 0 proyek 23.2 ("butuh DUA vendor tree"), dengan
pasangan repo yang berbeda. 52 berkas itu bukan hal sepele untuk **Android 13**:

| Kelompok | Berkas | Berlaku di LOS 20? |
|---|---|---|
| Tumpukan IMS (`lib-ims*`, `lib-rtp*`, `lib-rcs*`, `ims.apk`, 3 daemon) | 27 | Dibuang di 23.2 karena `System.arraycopy` privat sejak A11 **dan** karena daemon-nya ELF 64-bit di ROM 32-bit. Di ROM 64-bit **penghalang arsitekturnya hilang** — lihat §6 T-B5 |
| Rantai RenderScript (`libRSDriver_adreno`, `librs_adreno*`, `libllvm-qcom` 19 MB, `libsc-a3xx`, `libllvm-glnext`, `libOpenCL`) | 7 | **YA, dan ini beda nyata.** RenderScript masih hidup di Android 13; ia baru benar-benar dicabut sesudahnya. 23.2 membuangnya karena tidak ada proses aplikasi 32-bit di sana |
| `drm@1.0-service.widevine` + `libwvdrmengine` | 3 | LOS 20 belum memasang Widevine sama sekali (§6 T-A4) — putuskan bersama itu |
| Codec (`libFlacSwDec`, `libI420colorconvert`, `libOmxAlacDecSw`, `libOmxApeDecSw`, `libmm-color-convertor`) | 5 | Periksa terhadap `media_codecs.xml` LOS 20 |
| `flp.default.so` + `libflp.so` | 2 | FLP legacy; LOS 20 masih memilikinya di daftar |
| `TimeService.apk` + `libTimeService.so`, `libqcci_legacy`, `libvoice-svc`, `libmm-disp-apis`, `libCB`, `libimscamera_jni`, `libimsmedia_jni`, 4 varian EGL ESX/RB GLES | 8 | Kasus per kasus; empat EGL terakhir sengaja dibuang 23.2 karena `ro.hardware.egl=adreno` |

Angka sisi baiknya, dan ini yang membuat rencana ini layak:

```
276  pustaka vendor/lib di set LOS 20 sekarang
114  punya padanan vendor/lib64 di cabang 64-bit   -> naik ke 64-bit
162  tidak punya padanan                            -> tetap 32-bit
     125 di antaranya kamera / JPEG
  0  pustaka lib64 yang TIDAK punya padanan 32-bit di set LOS 20
```

Baris terakhir itu penting: **tidak ada satupun blob 64-bit yang asing** bagi set LOS 20.
Seluruh 114 adalah versi 64-bit dari pustaka yang memang sudah dipakai.

Yang tetap 32-bit dan sudah pasti: **seluruh 14 biner `vendor/bin`** (`qmuxd`,
`netmgrd`, `qseecomd`, `mm-qcamera-daemon`, `rmt_storage`, `time_daemon`, …) — cabang
64-bit pun membiarkannya 32-bit. Konsekuensinya rantai pustaka 32-bit harus lengkap,
dan itulah pelajaran termahal fase-5 proyek 23.2 (§3).

Cabang baru: **`lineage-20-64bit`**, dibuat dari `lineage-23-64bit` @ `4048adb`.
Menurut putusan Fase 0 itu **sumber tunggal yang cukup**; `lineage-18.1` @ `a954792`
disentuh hanya bila T-A4 (Widevine) dikerjakan, untuk pasangan
`drm@1.0-service.widevine` + `libwvdrmengine.so` yang hanya ada di sana.

---

## 3. Yang sudah dijawab proyek 23.2 — jangan diukur ulang dari nol

Enam hal berikut sudah dibayar di perangkat yang sama. Memperdebatkannya lagi hanya
menghabiskan waktu; yang boleh membatalkannya cuma bukti baru dari perangkat.

1. **Overhead RAM 64-bit ≈ 1,5 %, bukan 20–30 %.** Prediksi lama salah dan sudah
   dikoreksi penulisnya sendiri.
2. **HAL kamera msm8916 memang 32-bit selamanya.** Qualcomm tidak pernah merilis
   versi 64-bit; ROM LOS 17.1 64-bit A37 pun menjalankannya sebagai proses 32-bit.
   Build ini **wajib** dual-arch.
3. **`SOONG_GOMEMLIMIT` wajib untuk build 64-bit.** Tanpa itu `soong_build` tumbuh ke
   RSS 10,4 GB + swap 30,3 GB dan mesin kehabisan memori setelah 29 menit. Setel
   `SOONG_GOMEMLIMIT=6GiB`; jejaknya turun ke ~20 GB. Menaikkan swap **tidak**
   membantu — Go tidak memperlakukan swap sebagai tekanan memori.
4. **Butuh DUA jenis audit, bukan satu.** `DT_NEEDED` saja melewatkan `librpmb.so`
   yang dimuat `qseecomd` lewat `dlopen("librpmb.so")`. Audit kedua memindai string
   `lib*.so` di dalam biner 32-bit dan menandai yang **punya versi 64-bit tapi tidak
   punya versi 32-bit** — pola khas blob yang tertinggal saat peralihan dual-arch.
   Audit itu menemukan 22 pustaka yang tak satupun terlihat audit pertama.
5. **Mengubah arch sebuah komponen mengubah arch seluruh closure dependensinya.**
   Ini aturan, bukan saran. `libmedia.so` rusak persis karena catatan yang benar saat
   ditulis menjadi salah satu commit berikutnya.
6. **Memeriksa daftar blob tidak cukup; periksa isi image yang benar-benar terbangun.**
   Dua modul dipasang lewat `cc_prebuilt_library_shared` di `Android.bp`, bukan
   `PRODUCT_COPY_FILES`, sehingga menambah barisnya ke `A37-vendor.mk` tidak
   berpengaruh apa pun — dan build tetap sukses tanpa peringatan.

Berkas siap pakai yang bisa langsung dipinjam:
`/root/a37-23/plan-64bit/fase-5/alat/audit-dt-needed.sh`,
`fase-5/blob-baru-32bit.txt` (23 blob + SHA256), `fase-4/rild-Android.bp`.

---

## 4. Pemblokir khas LOS 20 — yang tidak dihadapi proyek 23.2

### 4.1 ⚠️ Kamera: passthrough tidak bisa bertahan di build 64-bit

> ⛔ **SELURUH BAGIAN INI GUGUR (13 Sep 2026).** Ia bertumpu pada `cameraserver`
> yang ternyata **tidak ada di ROM ini** — servis kamera ditaut ke dalam
> `mediaserver`, yang 32-bit karena `compile_multilib: "prefer32"`. Passthrough
> tetap berlaku di build 64-bit. Dipertahankan sebagai arsip; lihat
> [`plan-64bit/fase-4/`](plan-64bit/fase-4/) dan [`plan-64bit/fase-7/`](plan-64bit/fase-7/).

**Ini bagian paling berisiko dari seluruh rencana.** Baca sampai habis sebelum
menyentuh `BoardConfig.mk`.

LOS 20 sekarang menjalankan kamera lewat **passthrough**: `manifest.xml:91` berbunyi
`<transport arch="32+64">passthrough</transport>`, dan `device.mk:292-298` sengaja
**tidak** memasang service binderized:

```
PRODUCT_PACKAGES += android.hardware.camera.provider@2.4-impl camera.device@1.0-impl ...
```

Passthrough berarti `.so` HAL dimuat **ke dalam proses kliennya**, yaitu
`cameraserver`. Di build arm64 `cameraserver` adalah proses 64-bit, dan
`camera.vendor.msm8916.so` hanya ada 32-bit (dikonfirmasi: cabang vendor 64-bit
menyimpannya di `vendor/lib/hw/`, dan `vendor/lib64/hw/` hanya berisi
`flp.default.so`). Proses 64-bit tidak bisa memuat pustaka 32-bit. **Jalur
passthrough karena itu mati secara arsitektural**, bukan karena bug yang bisa
ditambal.

Satu-satunya jalan: **binderized, dengan service yang dipaksa 32-bit**.

Kabar baiknya, AOSP 13 sudah menyediakan modulnya jadi — tidak ada yang perlu ditulis:

```
hardware/interfaces/camera/provider/2.4/default/Android.bp
  :180  name: "android.hardware.camera.provider@2.4-service"
  :182  compile_multilib: "32"                                  <- persis kasus kita
  :183  init_rc: ["android.hardware.camera.provider@2.4-service.rc"]
  :187  name: "android.hardware.camera.provider@2.4-service_64"  (varian 64, JANGAN dipakai)
```

Yang harus dikerjakan:

1. `manifest.xml`: `passthrough` → `hwbinder` untuk `android.hardware.camera.provider`.
2. `device.mk`: tambahkan `android.hardware.camera.provider@2.4-service`; **pertahankan**
   `@2.4-impl` (service binderized itu tetap mencari impl passthrough lewat
   `defaultPassthroughServiceImplementation`, jadi `.so`-nya wajib ada — dan karena
   servicenya 32-bit, `.so` 32-bit itulah yang dipakai).
3. sepolicy: domain `hal_camera_default` untuk proses terpisah. `device/qcom/sepolicy-legacy`
   sudah menyediakannya; **verifikasi, jangan asumsikan**.

**Risiko yang harus diakui di depan.** Kombinasi ini pernah dicoba di proyek ini, di
build 32-bit, dan hasilnya **layar hitam di homescreen** (build `20260803_161352`,
tercatat di `manifest.xml:80-90`). Akarnya tidak pernah ditemukan — jalur passthrough
dipilih justru untuk menghindarinya. Rencana ini memaksa kembali ke jalur itu, tanpa
pilihan lain.

Dua hal yang membedakan percobaan sekarang dari yang gagal dulu:

- **Sekarang ada preseden yang berhasil.** ROM 23.2 64-bit menjalankan camera provider
  sebagai proses 32-bit terpisah dan boot normal. Mekanismenya (binder lintas-arch ke
  HAL kamera 32-bit) terbukti bekerja di perangkat ini.
- **Sekarang ada alat diagnosis yang dulu tidak ada.** Percobaan 2026-08-03 gagal tanpa
  log `cameraserver`/`vendor.camera-provider` — persis yang dikeluhkan `device.mk:560`.
  Kernel `lineage-24` membawa `CONFIG_LOG_BUF_SHIFT=19`, dan `report/` sudah punya
  perkakas logcat.

**Rencana cadangan kalau layar hitam terulang** (Fase 4, §5): adopsi **HAL3on1**
milik acroreiser seperti yang dilakukan proyek 23.2 (`8cd34ba`) — implementasi HAL3
sungguhan dengan HAL1 sebagai backend, yang membuat `frameworks/av` tidak perlu
disentuh sama sekali. Ongkosnya ~2.500 baris adapter + penyesuaian jalur include, dan
penulisnya sendiri menandainya eksperimental. **Jangan mulai dari sini** — HAL1 masih
didukung penuh di Android 13 (itu seluruh alasan 23 patch Camera HAL1 ada di basis
ini), jadi jalur lurus dicoba lebih dulu.

### 4.2 `rild` harus dipaksa 32-bit — dan di LOS 20 letaknya di `Android.mk`

RIL LOS 20 hidup lewat `rild` + `libril` yang men-`dlopen` `libril-qc-qmi-1.so`
(blob 2016) — itulah yang diperbaiki `vendor.rild.libpath` (`c5291cc`). Blob itu
32-bit, jadi `rild` harus 32-bit juga.

Proyek 23.2 menyelesaikannya dengan `compile_multilib: "32"` di `Android.bp`. **Di LOS
20 modulnya masih Android.mk:**

```
hardware/ril/rild/Android.mk    (LineageOS/android_hardware_ril lineage-20.0)
  :42  include $(BUILD_EXECUTABLE)     <- tanpa LOCAL_MULTILIB = "first" = 64-bit
```

Perbaikannya satu baris `LOCAL_MULTILIB := 32` sebelum `BUILD_EXECUTABLE`, disimpan
sebagai patch baru di `patches/official/hardware_ril/` supaya ikut terpasang ulang tiap
`repo sync` (jebakan #5 HANDOFF).

Jangan lupa konsekuensinya menurut aturan §3 nomor 5: seluruh closure `libril-qc-qmi-1.so`
ikut harus tersedia 32-bit — termasuk `libril_shim` (otomatis, karena
`LOCAL_VENDOR_MODULE`) dan pemetaan `TARGET_LD_SHIM_LIBS` yang sudah menunjuk
`/system/vendor/lib/libril-qc-qmi-1.so` (`BoardConfig.mk:466` — **sudah benar**, jalur
32-bit, tidak perlu diubah).

### 4.3 VNDK tetap hidup di LOS 20 — dan itu justru menyederhanakan

Proyek 23.2 mencabut VNDK (`ro.vndk.version` dibuang, `2b1b3e1`). **LOS 20 memakainya**
(`551203f` mengembalikan `ro.vndk.version=current`, dan `TARGET_VNDK_USE_CORE_VARIANT
:= true` di `BoardConfig.mk:330`).

Karena VNDK-nya `current` (dibangun dari sumber, bukan snapshot prebuilt), soong
membangun varian VNDK untuk **kedua** arch dengan sendirinya. Tidak ada pekerjaan
tambahan — tapi ada satu hal yang wajib **tidak** dilakukan: jangan meniru
`4e46fae`/`a7aa39d` (mematikan `vndbinder`) dari cabang 23. Itu pasangan sisi-userspace
dari commit kernel `13807b6` yang sudah di-revert (§2.1), dan LOS 20 justru butuh
`/dev/vndbinder`.

### 4.4 Audit 135 patch legacy terhadap arsitektur

Pemindaian awal bersih:

```
grep -rl "compile_multilib\|TARGET_2ND_ARCH\|LOCAL_MULTILIB\|32_bit" patches/official/
  -> nihil
```

Tidak satupun dari 135 patch menyentuh pemilihan arsitektur. Itu **indikasi kuat**,
bukan bukti — pemblokir 32-bit bisa muncul sebagai asumsi ukuran pointer di dalam kode
yang ditambal, bukan sebagai kata kunci build. Penjaganya adalah Fase 6: `m bacon` yang
lolos, plus 11 penjaga regresi `apply-official-patches.sh` yang harus tetap hijau.

### 4.5 Dua manifest di repo ini saling melengkapi, dan tidak satupun lengkap

Ditemukan saat membaca repo hari ini, dan ini akan menjebak siapa pun yang mengikuti
HANDOFF §4 apa adanya:

| Berkas | Punya 6 pin anti-hanyut | Punya `sepolicy-legacy` + `timekeep` |
|---|---|---|
| `A37-20.xml` (identik dengan `A37-20-ul.xml`) | ✅ | ❌ |
| `A37-20-official.xml` | ❌ (komentarnya bahkan menyatakan keenamnya "DIHAPUS") | ✅ |

Klaim "DIHAPUS" itu **sudah dikoreksi di `PLAN-OFFICIAL.md` §0.2b** (commit `f011515`):
keenam pin dilepas, lalu keenam-enamnya dipasang ulang karena masing-masing terbukti
memutus build di basis official juga. Yang tidak ikut dikoreksi: berkas XML-nya sendiri.

Manifest 64-bit di §7 menggabungkan keduanya. Kalau proyek 32-bit dibangun ulang nanti,
`A37-20-official.xml` perlu diperbaiki dengan cara yang sama.

---

## 5. Fase kerja

Urutannya disusun supaya **setiap fase punya penjaga yang bisa gagal lebih awal**,
dan supaya §4.1 (kamera) tidak menyandera fase-fase murah di depannya.

### Fase 0 — Penyaringan blob (3–5 jam) — ✅ **SELESAI 13 Sep 2026**

> Hasil, keputusan per kelompok, dan penjaganya:
> [`plan-64bit/fase-0/README.md`](plan-64bit/fase-0/README.md).
> Dua klaim bagian ini dibantah di sana (basis daftar, dan "butuh dua vendor tree");
> langkah-langkah di bawah dipertahankan sebagai catatan apa yang direncanakan.
> Fase 1 turun dari 4–6 jam menjadi **2–3 jam**.

Sasaran: mengubah "400 berkas di cabang 64-bit" menjadi daftar dual-arch yang terukur
untuk **Android 13**, bukan untuk Android 16.

1. Ambil `proprietary-files.txt` device tree `lineage-20` sebagai basis. Daftar itu
   sudah terbukti cukup untuk boot, Wi-Fi, BT, dan RIL di A13.
2. Untuk tiap entri `vendor/lib/*`, cek keberadaan `vendor/lib64/` bernama sama di
   cabang `lineage-23-64bit`. **Hasil yang sudah diketahui: 114 punya, 162 tidak.**
3. Triase 52 berkas yang absen dari cabang 64-bit (tabel §2.3) satu per satu. Empat
   keputusan yang harus diambil eksplisit dan dicatat alasannya:
   - **RenderScript** (7 berkas, `libllvm-qcom.so` saja 19 MB): Android 13 masih
     memakainya. **Rekomendasi: pertahankan 32-bit**, karena di `zygote64_32` ada
     proses aplikasi 32-bit yang bisa memuatnya — kebalikan dari alasan 23.2 membuangnya.
     Tinjau ulang kalau `ZYGOTE_FORCE_64` dipilih (§5 Fase 2).
   - **IMS** (27 berkas): pertahankan, lalu lihat §6 T-B5.
   - **Widevine `@1.0-service`**: pertahankan hanya bila §6 T-A4 dikerjakan.
   - **4 varian EGL `libESX*GLES*`/`libRB*GLES*`**: buang, ikuti 23.2 —
     `ro.hardware.egl=adreno` membuat hanya jalur `libEGL_adreno` yang pernah dimuat.
     ⚠️ **`libESXEGL_adreno.so` dan `libRBEGL_adreno.so` (tanpa GLES) WAJIB tetap ada**
     — `eglSubDriverAndroid.so` dan `eglsubAndroid.so` menuntutnya lewat `DT_NEEDED`.
     Ini koreksi yang dibayar 23.2 dengan satu siklus build.
4. Jangan ambil `vendor/bin/hw/*` apa pun dari luar daftar LOS 20 yang sekarang.

**Keluaran:** `proprietary-files-64bit.txt` + tiga berkas pendamping
(`naik-ke-lib64.txt`, `tetap-32bit.txt`, `hanya-di-18.1.txt`).
**Penjaga:** jumlah entri akhir = jumlah entri awal + tambahan yang dicatat alasannya.

### Fase 1 — Vendor tree (4–6 jam) — ✅ **SELESAI 13 Sep 2026**

> Hasil dan tujuh penjaganya:
> [`plan-64bit/fase-1/README.md`](plan-64bit/fase-1/README.md).
> Cabang `lineage-20-64bit` @ `8dcc8a9`, **delta terhadap cabang 23.2 hanya empat
> baris** — `Android.bp` ternyata sudah tepat dan tidak disentuh sama sekali.
> Langkah 3 di bawah (bangkitkan makefile dengan skrip sendiri) **tidak
> diperlukan**; yang dipakai adalah makefile cabang 23.2 dengan delta empat baris.

1. Buat cabang `lineage-20-64bit` di `rb-vendor_oppo_A37` dari `lineage-23-64bit`
   (`4048adb`).
2. Kembalikan berkas hasil triase Fase 0 dari `lineage-18.1` (`a954792`).
3. Bangkitkan `A37-vendor.mk` + `Android.bp`. **`setup-makefiles.sh` tidak bisa
   dijalankan** — ia memanggil `vendor/cm/build/tools/extract_utils.sh` yang sudah
   tidak ada. Pinjam skrip generator proyek 23.2 (Fase 1 di sana memakai pola yang
   sama) atau salin pola `A37-vendor.mk` `lineage-18.1` yang sudah terbukti.
4. Perhatikan **jebakan dua mekanisme** (§3 nomor 6): `libloc_api_v02`, `libloc_ds_api`,
   `libtime_genoff` dipasang lewat `cc_prebuilt_library_shared` di `Android.bp`, bukan
   `PRODUCT_COPY_FILES`. Menambahkannya di `.mk` tidak berpengaruh apa pun.
   `compile_multilib` masing-masing harus benar.

**Penjaga, jalankan sebelum apa pun:**
```bash
# tiap entri PRODUCT_COPY_FILES menunjuk berkas yang ada
# tiap vendor/lib64/*.so benar-benar ELF 64-bit, tiap vendor/lib/*.so benar-benar 32-bit
for f in $(find proprietary/vendor/lib64 -name '*.so'); do file -b "$f" | grep -q 'ELF 64' || echo "SALAH ARCH: $f"; done
for f in $(find proprietary/vendor/lib   -name '*.so'); do file -b "$f" | grep -q 'ELF 32' || echo "SALAH ARCH: $f"; done
```
Salah arch **tidak akan tertangkap saat build** — ia muncul sebagai HAL gagal dimuat
saat boot. Proyek 23.2 memeriksa 114 + 160 berkas dan menemukan 0 salah; ulangi.

### Fase 2 — Device tree dan BoardConfig (2–3 jam) — ✅ **SELESAI 13 Sep 2026**

> Hasil dan penjaganya: [`plan-64bit/fase-2/README.md`](plan-64bit/fase-2/README.md).
> `m nothing` **build completed successfully (19:15)**. Dua temuan yang mengubah
> rencana: vendor 64-bit dan device tree 32-bit tidak bisa hidup bersama, dan
> `SOONG_GOMEMLIMIT` menuntut patch `build/soong` lebih dulu (§3 nomor 3 di bawah
> terlalu ringkas). Zygote dipilih `zygote64_32`, berbeda dari 23.2.

Cabang `lineage-20-64bit` dari `lineage-20` (`caa9882`). Isi `304f179` diterapkan
dengan tangan:

```make
# BoardConfig.mk -- menggantikan baris 135-140
TARGET_BOARD_SUFFIX      := _64
TARGET_ARCH              := arm64
TARGET_ARCH_VARIANT      := armv8-a
TARGET_CPU_ABI           := arm64-v8a
TARGET_CPU_VARIANT       := cortex-a53

TARGET_2ND_ARCH          := arm
TARGET_2ND_ARCH_VARIANT  := armv8-a
TARGET_2ND_CPU_ABI       := armeabi-v7a
TARGET_2ND_CPU_ABI2      := armeabi
TARGET_2ND_CPU_VARIANT   := cortex-a53

TARGET_SUPPORTS_64_BIT_APPS := true
```

`TARGET_KERNEL_ARCH := arm64` (baris 249) **tidak berubah**.
`TARGET_USES_64_BIT_BINDER := true` (baris 143) sudah benar dan boleh tetap.

```make
# lineage_A37.mk -- sebelum baris inherit-product yang lain
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
```

**Keputusan zygote — dan di sini LOS 20 sebaiknya berbeda dari 23.2.**

`build/make/target/product/core_64_bit.mk:30` menyediakan gerbang `ZYGOTE_FORCE_64`.
Proyek 23.2 menyalakannya (`zygote64`, satu zygote) karena tumpukan 32-bitnya tidak
lengkap dan `zygote_secondary` dua kali menyebabkan bootloop. **Mulailah dari
`zygote64_32` (default, tanpa `ZYGOTE_FORCE_64`)**, karena tiga alasan:

1. Alasan 23.2 menyalakannya sebagian sudah hilang: driver EGL 32-bit lengkap sudah
   dibawa cabang vendor `lineage-23-64bit` (13 driver + `libgsl.so` + `libadreno_utils.so`).
2. Android 13 masih menemui banyak aplikasi 32-bit-saja; `zygote64` membuat
   `ro.product.cpu.abilist` berisi `arm64-v8a` saja, dan aplikasi itu **tidak bisa
   dipasang**. Di Android 16 pertukaran itu wajar; di Android 13 tidak.
3. Kalau RAM ternyata tidak cukup, `ZYGOTE_FORCE_64 := true` adalah satu baris untuk
   ditambahkan — arahnya mudah, sebaliknya tidak.

Catat konsekuensinya: dengan `zygote64_32` ada **dua boot image ART** di memori. Itu
variabel yang harus diukur di Fase 8, bukan diasumsikan.

**Penjaga:**
```bash
source tools/envsetup-a37.sh
get_build_var TARGET_ARCH TARGET_CPU_ABI TARGET_2ND_ARCH TARGET_2ND_CPU_ABI TARGET_KERNEL_ARCH
# harapan: arm64 / arm64-v8a / arm / armeabi-v7a / arm64
m nothing            # membaca makefile saja -- lolos != ROM bisa dibangun
```

### Fase 3 — Kernel naik ke `lineage-24` (1–2 jam) — ✅ **SELESAI 13 Sep 2026**

> Hasil dan penjaganya: [`plan-64bit/fase-3/README.md`](plan-64bit/fase-3/README.md).
> Keputusan `TREBLE_SPOOF`: **dimatikan** — setiap konsumen `uname()` di enam proses
> yang disaringnya diperiksa, dan tidak satu pun berubah perilaku; ia bahkan meleset
> dari zygote utama di build 64-bit (comm `"zygote64"`, bukan `"zygote"`). Kernel
> terbangun: `Image` 18,5 MB, 0 galat, `kernel.release` melaporkan 3.10.108 apa adanya.

1. Ubah revision kernel di manifest ke `refs/heads/lineage-24`, `repo sync`.
2. Putuskan `CONFIG_ANDROID_TREBLE_SPOOF_KERNEL_VERSION` (§2.1) — **dengan bukti dari
   tree, bukan dari dokumen ini**.
3. Hapus blok komentar `Image-dtb` yang tertinggal di ekor defconfig; ia menjelaskan
   konfigurasi yang sudah di-revert dan akan menyesatkan pembaca berikutnya.
4. Bangun kernel saja lebih dulu: `tools/build-kernel-zip.sh`.

**Penjaga:** `make ARCH=arm64 lineageos_a37f_defconfig` rc=0, dan
`CONFIG_ANDROID_BINDER_DEVICES` di `.config` hasil **memuat `vndbinder`** (§2.1).

### Fase 4 — Kamera binderized 32-bit — ⛔ **DIBATALKAN 13 Sep 2026**

> **Premisnya salah, dan seluruh §4.1 di bawah ikut gugur.** `cameraserver` tidak ada
> di ROM ini: servis kamera ditaut ke dalam `mediaserver`, yang ber-`prefer32` dan
> karena itu **32-bit bahkan di `TARGET_ARCH=arm64`**. Passthrough tidak pernah mati.
> Dikembalikan ke passthrough (`f490492`).
>
> Rinciannya dan pelajarannya: [`plan-64bit/fase-4/README.md`](plan-64bit/fase-4/README.md).
> Ditemukan oleh audit [`plan-64bit/fase-7/`](plan-64bit/fase-7/).

Ini §4.1. Kerjakan **setelah** Fase 2 lolos `m nothing` tetapi **sebelum** build penuh
pertama, karena perubahannya menyentuh `manifest.xml` yang ikut diperiksa
`check_vintf`.

1. `manifest.xml`: `passthrough` → `hwbinder`, pertahankan `<version>2.4</version>` dan
   `<instance>legacy/0</instance>`.
2. `device.mk`: `+ android.hardware.camera.provider@2.4-service`, **jangan** yang
   `_64`, **jangan** membuang `@2.4-impl`.
3. Perbarui blok komentar `device.mk:276-291` — isinya sekarang menjelaskan keputusan
   yang baru saja dibalik, dan komentar yang salah lebih berbahaya daripada tidak ada.
4. `m android.hardware.camera.provider@2.4-service` lalu **verifikasi arch binernya**:
   `file out/target/product/A37/vendor/bin/hw/android.hardware.camera.provider@2.4-service`
   → harus `ELF 32-bit`.

**Kalau layar hitam terulang**, kumpulkan sebelum menyimpulkan apa pun:
`logcat -b all` untuk `cameraserver`, `vendor.camera-provider-2-4`, `SurfaceFlinger`;
`lshal | grep camera`; `dmesg` (kini 512 KB berkat Fase 3). Baru setelah itu
pertimbangkan HAL3on1 (§4.1, rencana cadangan).

### Fase 5 — RIL 32-bit (1–2 jam) — ✅ **SISI BUILD SELESAI 13 Sep 2026**

> Hasil dan penjaganya: [`plan-64bit/fase-5/README.md`](plan-64bit/fase-5/README.md).
> `rild` terverifikasi `ELF 32-bit`, nol varian 64-bit, dan **nol** pustaka yang hanya
> tersedia 64-bit di closure blob RIL. Temuan sampingan yang penting: `libmedia` tidak
> punya `vendor_available`, tetapi stub ala LOS 23.2 **tidak diperlukan** di sini karena
> `BOARD_VNDK_VERSION` memang tidak disetel — dibuktikan dengan membangun
> `libshim_camera` (modul vendor yang menaut `libmedia`) untuk kedua arch.

Patch `LOCAL_MULTILIB := 32` untuk `hardware/ril/rild/Android.mk` (§4.2), disimpan
sebagai `patches/official/hardware_ril/0001-*.patch` dan didaftarkan di
`tools/apply-official-patches.sh`.

**Penjaga:** `file out/.../vendor/bin/hw/rild` → `ELF 32-bit`, dan
`readelf -d` pada `libril-qc-qmi-1.so` 32-bit tidak menyisakan `DT_NEEDED` yang hanya
tersedia 64-bit.

### Fase 6 — Build (4–8 jam termasuk menunggu) — ✅ **SELESAI 13 Sep 2026**

> Hasil dan penjaganya: [`plan-64bit/fase-6/README.md`](plan-64bit/fase-6/README.md).
> **ROM 64-bit pertama terbangun** — `m -j10 bacon` 01:42:25, zip 721 MB,
> `verify-rom.sh` **SEMUA LOLOS**.
>
> Kekhawatiran ukuran partisi **terbantah**: perkiraan 2.310–2.590 MB dengan sisa
> 130–400 MB; nyatanya **1.725 MB dengan sisa 1.001 MB** — bahkan lebih kecil dari
> ROM 32-bit LOS 23.2 (1.849 MB). Pemblokirnya ternyata patch wlan kita sendiri yang
> arch-dependent (§3 di sana). Aturan OOM `-j10`→`-j6` tidak pernah terpicu.

```bash
export SOONG_GOMEMLIMIT=6GiB          # WAJIB untuk 64-bit (§3 nomor 3)
df -h /                               # butuh 45-50 GB; hari ini bebas 237 GB
source tools/envsetup-a37.sh
tools/apply-official-patches.sh /root/los20      # WAJIB tiap habis repo sync
m bacon
tools/verify-rom.sh <zip>
```

Perluas `tools/verify-rom.sh` dengan dua pemeriksaan baru sebelum dipakai:
- tiap `.so` di `system/vendor/lib64` adalah ELF 64-bit, tiap `.so` di
  `system/vendor/lib` adalah ELF 32-bit;
- `system.img` ≤ 2.859.466.752 byte, dengan sisa ruang dilaporkan angkanya.

### Fase 7 — Audit closure SEBELUM flash (3–6 jam) — ✅ **SELESAI 13 Sep 2026**

> Hasil: [`plan-64bit/fase-7/README.md`](plan-64bit/fase-7/README.md).
> **Audit 1 BERSIH** (11 temuan, kesebelasnya ditriase, nol yang baru); audit 2
> menandai 2 kandidat yang keduanya keputusan sadar Fase 0.
>
> Hasil terpentingnya bukan angka itu: audit ini **membatalkan Fase 4** — `cameraserver`
> ternyata tidak ada di ROM ini, servis kamera ditaut ke dalam `mediaserver` yang
> `prefer32`, jadi passthrough tidak pernah mati. Kamera dikembalikan (`f490492`),
> ROM dibangun ulang (07:54), `verify-rom.sh` **SEMUA LOLOS**.

Fase ini ada karena proyek 23.2 membayar empat siklus build untuk melewatkannya.
Jalankan **dua** audit (§3 nomor 4) atas isi image yang benar-benar terbangun — bukan
atas daftar blob (§3 nomor 6):

```bash
/root/a37-23/plan-64bit/fase-5/alat/audit-dt-needed.sh     # audit 1: DT_NEEDED
# audit 2: string lib*.so di tiap komponen 32-bit, buang yang sudah di DT_NEEDED,
#          tandai yang ADA versi 64-bit tapi TIDAK ada versi 32-bitnya
```

Positif palsu yang sudah diketahui dan **jangan dikejar**: penghuni APEX yang di `out/`
masih berbentuk `.apex` belum terekstrak — `libnativehelper`, `libstats*`, `libicu`,
`libandroidicu`, `libnativeloader`, `libsigchain`, `libnetd_*`, `libadb_pairing_*`.

Ulangi audit sampai tidak ada kebutuhan baru, lalu **simulasikan** isi `vendor/lib`
pasca-perubahan dan cocokkan — jangan menunggu build berikutnya untuk tahu.

### Fase 8 — Verifikasi di perangkat dan gerbang batal (4–8 jam) — ✅ **BOOT BERHASIL 14 Sep 2026**

> Hasil dan buktinya: [`plan-64bit/fase-8/README.md`](plan-64bit/fase-8/README.md).
> **LineageOS 20 userspace 64-bit boot di OPPO A37.** `arm64-v8a`, `zygote64_32`
> dengan **dua zygote hidup berdampingan**, kamera 2 perangkat terdeteksi dan dibuka
> Aperture, RIL LTE dengan IRadio slot1+slot2, `/data` f2fs, nol tombstone, nol
> restart loop.
>
> Tidak satu pun kriteria batal terpicu.

Hanya pemilik A37 yang bisa menjalankan fase ini (batas §8 HANDOFF).

```
getprop ro.product.cpu.abi          -> arm64-v8a
getprop ro.product.cpu.abilist      -> arm64-v8a,armeabi-v7a,armeabi   (zygote64_32)
getprop ro.zygote                   -> zygote64_32
lshal | grep -E "camera|radio"      -> provider dan IRadio terdaftar
dumpsys meminfo | grep "Free RAM"   -> bandingkan dengan build 32-bit
cat /proc/pressure/memory
dumpsys SurfaceFlinger --timestats
```

Uji fungsi memakai `tools/test-device.sh` yang sudah ada, plus yang khas rencana ini:
kamera depan + belakang, telepon/SMS/LTE, Bluetooth, Wi-Fi, audio, pasang satu
aplikasi 32-bit-saja (membuktikan `zygote64_32` bekerja).

**Ukuran keberhasilan bukan "boot", melainkan "tidak lebih buruk dari ROM 32-bit
yang sekarang".** Kriteria batal ada di §8.

---

## 6. Fitur dari proyek LOS 23.2 yang bisa dibawa ke LOS 20

Seluruh kandidat berasal dari 116 commit device tree yang memisahkan `lineage-20`
(`caa9882`) dari `lineage-23` (`bc04b73`); titik pisahnya `15f7975`. Setiap baris
sudah diadu dengan keadaan LOS 20 yang sebenarnya — kolom "Sudah ada?" hasil
pemeriksaan `device.mk`/`fstab.qcom` cabang `lineage-20`, bukan dugaan.

### Tier A — kerjakan; murah, dan hasilnya besar

| # | Fitur | Sumber | Keadaan LOS 20 | Prasyarat | Perkiraan |
|---|---|---|---|---|---|
| **T-A1** | **lmkd pindah ke PSI** — ✅ **SELESAI 14 Sep 2026** (`64c815a`) | `b3ad23d` | — | Komentar lama yang mematikannya **gugur**: premisnya dari kernel `lineage-19.1`. PSI terbukti hidup di perangkat | 15 menit |
| **T-A2** | **zram 256 → 768 MB, swappiness 60 → 100** — ✅ **SELESAI** (`64c815a`) | `4776f85` | — | scheduler **sudah** `deadline`; bagian itu dari commit 23.2 tidak diperlukan | 30 menit |
| **T-A3** | **Thermal HAL 2.0** — ✅ **SELESAI 14 Sep 2026** (`ea262bb`) | `5646c17` | **tidak ada HAL thermal sama sekali** (0 sebutan di `device.mk`); `dumpsys thermalservice` memuat 6 listener menunggu data yang tak pernah datang | ⚠️ Config a6010 **tidak boleh disalin mentah**: `bms` sebagai `SKIN` cuma naik 0,8 °C di bawah beban → status global terkunci `NONE` selamanya. Ditukar ke `pm8916_tz`, dan `SHUTDOWN` dicabut di semua sensor proxy — lihat [`plan-64bit/t-a3/`](plan-64bit/t-a3/) | 1–2 jam → **~3 jam** |
| **T-A4** | **Widevine DRM L3** | `8f4a42d`, `0af1a56` | 0 sebutan di `device.mk`, padahal **blobnya sudah ada** di vendor: `libwvhidl.so`, `drm@1.0-service.widevine`, `drm@1.1-service.widevine` | runtime protobuf yang cocok — **ukur dulu**, lihat catatan di bawah | 2–8 jam |
| **T-A5** | **TRIM/discard di `/data`** — ✅ **SELESAI** (`64c815a`) | `2048679` | — | eMMC diverifikasi di perangkat: `discard_max_bytes` ~2 TB | 15 menit |
| **T-A6** | **Server PSDS untuk GPS** — ✅ **SELESAI 14 Sep 2026** (`5efa89b`) | `dc76af2` | 0 sebutan PSDS | ⚠️ Solusi LOS 23.2 **tidak bisa disalin**: di A13 `config_gnssParameters` nol pembaca dan `DEBUG_PROPERTIES_VENDOR_FILE` tidak ada, jadi satu-satunya jalur `/etc/gps_debug.conf` — yang sudah dimiliki modul Soong AOSP. `PRODUCT_COPY_FILES` diuji dan **menang** tanpa bentrok | 30 menit → **~2 jam** |
| **T-A7** | **Buang FMRadio + libfmjni** — ✅ **SELESAI** (`64c815a`) | `842b0c6` | — | `CONFIG_RADIO_IRIS` + `BOARD_HAVE_QCOM_FM` **dipertahankan** | 10 menit |
| **T-A8** | **`CameraWrapper`: perbaiki `module_api_version` salah bentuk** — ✅ **SELESAI 14 Sep 2026** (`5f422f4`) | `0add9f8` | `camera/CameraWrapper.cpp` ada di LOS 20, baris yang sama | ⚠️ **Laten, bukan perbaikan gejala**: kamera sudah jalan (2 device). A13 tak peduli karena semua pembacaan `>=`/`<` terhadap `2_0` ke atas; satu-satunya `==` terhadap `2_5`, dan `getHalApiVersion()` nol pemanggil. Diverifikasi di biner: `HMI` di `.data` kini 256/256 — lihat [`plan-64bit/t-a8-a9/`](plan-64bit/t-a8-a9/) | 30 menit |
| **T-A9** | **sensors: off-by-one `strlcpy` di `getSensorListInner`** — ✅ **SELESAI 14 Sep 2026** (`5f422f4`) | `6de8c07` | `sensors/NativeSensorManager.cpp` ada di LOS 20, **nomor baris sama persis** | ⚠️ **Laten**: tak pernah meluap sungguhan (entri `node_map` pendek); FORTIFY A13 belum memakai `__builtin_dynamic_object_size` jadi tak menangkapnya. Keempat sensor memang terbukti jalan | 30 menit |

**Catatan T-A4 (Widevine).** Proyek 23.2 harus membangun protobuf **3.0.0** dari sumber
(`protobuf26/`) karena `libwvhidl.so` menuntut 51 simbol dan 21 di antaranya sudah
dihapus dari protobuf 25.8 yang dipakai pohon Android 16. **Pohon Android 13 memakai
protobuf yang jauh lebih tua**, jadi kemungkinan besar sebagian besar simbol itu masih
ada dan pekerjaannya jauh lebih ringan — mungkin nol. Ukur dulu, jangan menyalin
`protobuf26/` tanpa alasan:

```bash
readelf --dyn-syms -W vendor/oppo/A37/proprietary/vendor/lib/libwvhidl.so \
  | awk '$7=="UND" && $8 ~ /protobuf|google/ {print $8}' | sort -u > /tmp/wv-butuh.txt
readelf --dyn-syms -W out/target/product/A37/system/lib/libprotobuf-cpp-lite.so \
  | awk '{print $8}' | sort -u > /tmp/pb-punya.txt
comm -23 /tmp/wv-butuh.txt /tmp/pb-punya.txt      # kosong = tidak perlu protobuf26
```

**Catatan T-A7 (FM).** Yang di-port adalah **pencabutannya**. Aplikasi `FMRadio` di
pohon LineageOS adalah varian MediaTek yang meng-hardcode `/dev/fm`
(`jni/fmr/fm.h:78`), sedangkan Qualcomm memakai `/dev/radio0` lewat V4L2 — ia tidak
akan pernah bekerja di perangkat ini, dan LineageOS membuang dukungan FM Qualcomm
setelah Android 10. Driver kernelnya (`CONFIG_RADIO_IRIS`, ikut datang bersama
`lineage-24`) **tetap dipertahankan**: ongkosnya 36 KB dan ia prasyarat solusi FM apa
pun nanti.

### Tier B — layak, tapi putuskan sadar

| # | Fitur | Sumber | Pertimbangan |
|---|---|---|---|
| **T-B1** | **FBE — enkripsi `/data`** (fscrypt v1, f2fs, Adiantum) | `09e3e2e`, `e2a7a64`, dibatalkan `4da1951` | Kernelnya siap (`lineage-24`). Tapi 23.2 **mematikannya lagi atas permintaan pengguna** setelah mengukur: baca berurutan −38…−40 %, CPU system 2×, tulis 0 % (eMMC ~36 MB/s memang di bawah cipher). Beban sehari-hari lebih dekat ke −8 %. **Mengubahnya menuntut format `/data`.** Keputusan pemilik perangkat, bukan keputusan teknis |
| **T-B2** | **dexpreopt AOT untuk aplikasi berat** | `5630a99` (+koreksi `d8970b1`, `6ff2ec4`, `347a180`) | Terukur ~15 % lebih cepat membuka sub-halaman Settings. **Ongkosnya ruang `system`** — dan di build 64-bit marginnya justru menipis. Kerjakan **setelah** Fase 6 melaporkan sisa ruang `system.img` yang sebenarnya. ⚠️ `d8970b1` mencatat filter `speed` pada jalur boot **menyebabkan bootloop** — jangan lewati koreksinya |
| **T-B3** | **Power HAL: `POWER_HINT_LOW_POWER` + `SUSTAINED_PERFORMANCE`** | `ad6cd94`, `65bf56d`, `79745e2` | LOS 20 punya `power/`. Tiga commit berurutan, yang terakhir mencabut batas pre-emptif. Baca ketiganya sebagai satu kesatuan |
| **T-B4** | **WireGuard** | `1dda093` + kernel `be67c444` | Kernelnya datang gratis bersama `lineage-24`; sisanya memasang `wireguard-tools` di `device.mk` |
| **T-B5** | **Daemon IMS bisa dieksekusi lagi** | temuan Fase 0 23.2 | `imsqmidaemon` (120.464 B) dan `imsdatadaemon` adalah **ELF 64-bit**; di ROM 32-bit keduanya mustahil dijalankan karena hanya ada `/system/bin/linker` 32-bit. Build 64-bit menyediakan `linker64` dan **penghalang arsitekturnya hilang**. ⚠️ Ini **bukan** berarti VoLTE hidup: `ims.apk` bermasalah karena alasan lain (`System.arraycopy` menjadi privat sejak Android 11 — berlaku penuh di A13). Kerjakan **setelah** ROM terbukti boot |
| **T-B6** | Penyetelan audio/GPU: volume digital speaker 86 → 96, matikan sesi suara ganda, `ccodec=0→4`, level istirahat GPU 200 MHz | `2c3ad97`, `9270131`, `08bda34`, `bc04b73` | Masing-masing kecil dan berdiri sendiri. `9270131` ditandai "wajib agar panggilan berbunyi" di 23.2 — periksa apakah gejalanya ada di LOS 20 sebelum menyalin |
| **T-B7** | Perbaikan kecil yang berdiri sendiri: `PinnerService` menunjuk berkas tidak ada, izin `idle_time` di ueventd sebelum composer jalan, deteksi task menggantung dinyalakan ulang | `accf67b`, `e0b82e5`, `fac5f72` | Baca dulu; sebagian mungkin sudah tidak relevan di A13 |
| **T-B8** | Rantai perbaikan kamera 23.2 (FPS metadata, buffer video, SuperPhoto, `libthermalclient`, tunggu `sensorservice`) | `741e895`, `b471185`, `69da1d9`, `bffe6ae`, `e4fb721`, `93b9ebd`, `dfae6a0` | **Sebagian besar bergantung pada HAL3on1**, yang hanya relevan bila rencana cadangan §4.1 ditempuh. Dua yang mungkin berlaku apa adanya: `e4fb721` (cameraserver mati saat berpindah kamera) dan `93b9ebd` (kamera 0 perangkat sesudah boot). Periksa gejalanya dulu |

### Tier C — jangan di-port, dan ini alasannya

Ditulis supaya tidak ada yang mencoba lagi sambil mengira itu perbaikan.

| Fitur 23.2 | Sumber | Kenapa tidak |
|---|---|---|
| Camera provider AIDL LineageOS | `aaf1d62`, `088c14e` | Jalur AIDL itu ada karena Android 15/16 membuang HAL1 dari `frameworks/av`. **Android 13 masih mendukung HAL1 penuh** — itulah seluruh alasan 23 patch Camera HAL1 ada di basis ini. LOS 20 memakai `@2.4-impl`, dan §4.1 hanya memindahkannya ke binderized |
| HAL3on1 acroreiser | `8cd34ba` | Sama. **Rencana cadangan §4.1 saja**, bukan jalur utama |
| Vibrator AIDL | `1ea2fc0` | LOS 20 memakai `android.hardware.vibrator@1.0-impl` (`device.mk:660`) dan HIDL masih hidup di A13. Tidak ada yang dibeli |
| LiveDisplay AIDL sysfs | `76447b4` | LOS 20 **sudah** memasang `vendor.lineage.livedisplay@2.0-service-sysfs` (`device.mk:916`), yaitu HAL yang sama lewat HIDL. ⚠️ Temuan di baliknya tetap layak diverifikasi: tanpa HAL, LiveDisplay memakai `setColorMatrix()`, dan matriks warna non-identitas membuat `HWC2On1Adapter` memasang `HWC_SKIP_LAYER` pada **semua** layer sehingga MDP tidak pernah mengomposisi — terukur jank 97,7 % pada mode AUTO malam hari. Ukur di LOS 20; jangan ubah paketnya |
| `InProcessNetworkStack` → `NetworkStack` | `7a55be6` | Di 23.2 akarnya ketidakcocokan sertifikat antara `InProcessNetworkStack` (platform) dan `TetheringNext` di APEX (networkstack). **LOS 20 memasangkan `InProcessNetworkStack` dengan `com.android.tethering.inprocess`** (`device.mk:393-435`) — pasangan yang cocok, jadi gejalanya kemungkinan besar tidak ada. **Uji tethering di perangkat lebih dulu**; port hanya kalau terbukti rusak |
| Matikan `vndbinder` | `4e46fae` (sudah di-revert `a7aa39d`) | **Berbahaya bagi LOS 20** — §4.3. LOS 20 memakai VNDK |
| `Image-dtb` / penempelan DTB | `f4d18df`, dibatalkan `77b68cb` | Dicoba di 23.2 dan **ditolak bootloader**; mereka kembali ke tabel DT terpisah. LOS 20 sudah memakai tabel terpisah + `dtbtool/`. Sudah benar |
| `target-level` 5, pembuangan HIDL, Wi-Fi AIDL, `protobuf26/`, `ro.vndk.version` dicabut | `517fd60`, `59d9f89`, `0c8c59e`, `2b1b3e1` | Semuanya adaptasi Android 15/16. Menerapkannya di A13 hanya menambah risiko tanpa imbalan |

---

## 7. Manifest — ✅ **[`A37-20-64bit.xml`](A37-20-64bit.xml) ditulis 13 Sep 2026**

Menggabungkan `A37-20.xml` dan `A37-20-official.xml` (§4.5), dengan dua revision
diganti. Terverifikasi: `repo manifest` merakit **1253 project**, keenam pin
anti-hanyut aktif, dan kelima project kunci terpasang dengan revision yang benar.

**Ketiga revision sudah final** (13 Sep 2026): device tree `lineage-20-64bit`
@ `700a8d0`, kernel `lineage-24` @ `cb52394`, vendor `lineage-20-64bit` @ `8dcc8a9`.
Ketiga cabang sudah di-push, dan HEAD lokal masing-masing diverifikasi identik
dengan revisi manifest — `repo sync` aman.

Blok pin anti-hanyut menyusut dari enam menjadi **satu** sesudah uji 13 Sep 2026
([`plan-64bit/uji-pin/`](plan-64bit/uji-pin/)).

```xml
<!-- Yang BERUBAH dari A37-20-official.xml: -->
<project name="rigaz29/rb_device_oppo_A37"  path="device/oppo/A37"
         remote="gh" revision="refs/heads/lineage-20-64bit" upstream="lineage-20-64bit" />
<project name="rigaz29/kernel_oppo_msm8939" path="kernel/oppo/msm8939"
         remote="gh" revision="refs/heads/lineage-24"       upstream="lineage-24" />
<project name="rigaz29/rb-vendor_oppo_A37"  path="vendor/oppo"
         remote="gh" revision="refs/heads/lineage-20-64bit" upstream="lineage-20-64bit" />

<!-- Yang HARUS IKUT dan hanya ada di A37-20-official.xml: -->
<!--   device/qcom/sepolicy-legacy  @ 470e8d88  (LineageOS-UL — tidak ada di official) -->
<!--   hardware/sony/timekeep       @ 11c1535c                                          -->

<!-- Yang HARUS IKUT dan hanya ada di A37-20.xml — keenam pin anti-hanyut,
     masing-masing terbukti memutus build di basis official juga
     (PLAN-OFFICIAL.md §0.2b):
       external/dng_sdk            880b6833f9
       external/skia               0c334c1c2f
       packages/services/Mms       0cc94f1ad6
       packages/services/Telephony 288c28358b
       packages/apps/Trebuchet     1273734a5f
       packages/apps/Settings      823af438e1                                          -->

<!-- Yang TIDAK berubah: tiga pin hardware/qcom-caf/msm8916
     (audio e0e79d62, display 984ff8f2, media bf62f596) — lineage-19.0-caf-msm8916 -->
```

Validasi sebelum dipakai (jebakan #3 HANDOFF — XML melarang `--` di dalam komentar):
```bash
python3 -c "import xml.etree.ElementTree as E; E.parse('A37-20-64bit.xml')"
```

---

## 8. Gerbang keputusan dan kriteria batal

**Sebelum mulai**, satu pertanyaan saja — dan jawabannya berbeda dari proyek 23.2:

> Pengukuran 23.2 sudah membantah kekhawatiran RAM, dan ROM 64-bit 23.2 berjalan di
> perangkat ini. Yang tersisa adalah **risiko kamera** (§4.1). Bersedia menghabiskan
> 8–20 jam di sana, dengan kemungkinan berakhir di HAL3on1 yang penulisnya sendiri
> tandai eksperimental?

Kalau ya, mulai dari Fase 0. Kalau ragu, Fase 0–3 tetap bernilai sendiri: seluruh
Tier A §6 tidak bergantung pada 64-bit sama sekali dan bisa dipanen ke ROM 32-bit yang
sekarang berjalan.

**Batalkan 64-bit (kembali ke `git checkout lineage-20`) bila salah satu terjadi:**

**Hasil 14 Sep 2026: tidak satu pun terpicu.**

| Kriteria | Ambang | Hasil |
|---|---|---|
| Free RAM turun jauh | > 10 % lebih buruk dari ROM 32-bit | Free 896 MB, PSI avg10 0,06 % — tekanan rendah |
| lmkd mulai membunuh aplikasi saat pemakaian normal | ada pembunuhan sama sekali saat idle | 3 pembunuhan, semuanya `oom_score_adj 999` saat boot pertama — bukan idle, bukan pemakaian normal. **Dipantau** |
| ~~`system.img` tidak muat~~ **GUGUR 13 Sep 2026** | Terukur di Fase 6: isi system **1.725 MB dari 2.727 MB, sisa 1.001 MB** | — |
| ~~Kamera tidak bisa dipulihkan~~ **GUGUR 14 Sep 2026** | — | 2 kamera terdeteksi, dibuka Aperture, provider di `mediaserver` pid 443. HAL3on1 tidak diperlukan |

**Yang TIDAK boleh dijadikan alasan batal:** satu HAL gagal dimuat. Itu hampir selalu
blob yang tertinggal saat peralihan dual-arch, dan jawabannya Fase 7, bukan pembatalan.

---

## 9. Jebakan

Delapan jebakan `HANDOFF.md` §5 **semuanya tetap berlaku** — terutama #5 (skrip patch
wajib dijalankan ulang tiap `repo sync`) dan #7 (`REPO_REV=v2.66`). Yang di bawah ini
tambahan khusus rencana ini, semuanya sudah benar-benar menjebak seseorang:

1. **Salah arch tidak terlihat saat build.** Ia muncul saat boot sebagai HAL yang gagal
   dimuat. Audit `file` di Fase 1 adalah satu-satunya penjaga yang menangkapnya lebih awal.
2. **`DT_NEEDED` saja tidak cukup.** `dlopen("librpmb.so")` hanya ada sebagai string di
   dalam biner. Butuh audit kedua (§3 nomor 4).
3. **Mengubah arch satu komponen mengubah arch seluruh closure-nya.** Jalankan ulang
   audit sesudah setiap perubahan arch — termasuk terhadap catatan yang Anda tulis
   sendiri satu commit sebelumnya.
4. **Daftar blob bukan isi image.** Dua modul dipasang lewat `Android.bp`, bukan
   `PRODUCT_COPY_FILES`; menambahkannya ke `.mk` tidak berpengaruh dan build tetap
   sukses tanpa peringatan.
5. **`SOONG_GOMEMLIMIT` wajib**, dan menaikkan swap justru memperburuk.
6. ~~**Cabang 64-bit vendor bukan superset.**~~ **Dikoreksi Fase 0:** untuk set yang
   benar-benar dikirim LOS 20, cabang itu **cukup** — nol berkas absen dalam arch apa
   pun. Yang tetap berlaku: jangan membaca `proprietary-files.txt` sebagai daftar
   kerja; yang dibaca build adalah `A37-vendor.mk` (§2.3, fase-0 §3).
7. **Dua manifest di repo ini masing-masing tidak lengkap** (§4.5). Penggantinya
   [`A37-20-64bit.xml`](A37-20-64bit.xml).
8. **Pin anti-hanyut bisa berbalik jadi penyebab.** Basis official bergerak, jadi pin
   yang dulu memperbaiki bisa menjadi yang merusak tanpa ada yang menyadarinya. Diuji
   13 Sep 2026: dari enam pin, dua sudah **merusak** build, dua sudah tidak perlu, satu
   masih wajib. Uji ulang berkala, jangan diwarisi — `plan-64bit/uji-pin/`.
9. **`SOONG_GOMEMLIMIT` tidak berlaku tanpa menambal soong.** `soong_build` dijalankan
   dengan `env -i` dan `build/soong` Android 13 nol sebutan `GOMEMLIMIT`. Patchnya kini
   T0 di `tools/apply-official-patches.sh`.
10. **Repo sepolicy qcom official tidak menggantikan yang legacy.** Kedua cabangnya
   punya 0 berkas msm8916 dan 0 `sepolicy.mk`; `SEPolicy.mk:33` bergerbang
   `sdm660 msm8937 msm8953 msm8996 msm8998`. Jalan lepas dari LineageOS-UL adalah
   **memindahkan kepemilikan** (fork), bukan mengganti sumber — sudah dikerjakan
   13 Sep 2026 ke `rigaz29/android_device_qcom_sepolicy` `lineage-20.0-legacy`.
11. **Mengubah nama repo sebuah project memindahkan `.repo/project-objects`.**
   `repo sync` melaporkan `error: hooks is different in ... vs ...` lalu tetap
   *finished successfully*. Isi project benar; kalau mengganggu, hapus dua direktori
   itu dan sync ulang (jebakan #8 HANDOFF).
12. **Jangan `set -u` di skrip yang men-`source build/envsetup.sh`.** envsetup menyentuh
   banyak variabel tak terdefinisi; shell mati seketika, dan kalau stdout dibuang,
   matinya tanpa jejak.
8. **Komentar yang menjadi salah lebih berbahaya daripada tidak ada komentar.** Tiga
   tempat yang akan menyesatkan sesudah rencana ini: blok kamera `device.mk:276-291`,
   blok `passthrough` `manifest.xml:80-90`, dan ekor defconfig kernel soal `Image-dtb`.
   Perbarui ketiganya di fase yang mengubahnya.

---

## 10. Jejak bukti — perintah yang menghasilkan angka di dokumen ini

Semua dijalankan 13 September 2026. Klon berumur pendek; pakai `--filter=blob:none`.

```bash
# Kernel: lineage-24 fast-forward murni dari lineage-20, dan = lineage-23 + 1
git clone --filter=blob:none --no-single-branch \
  https://github.com/rigaz29/kernel_oppo_msm8939.git kernel && cd kernel
git rev-list --count origin/lineage-20..origin/lineage-24     # 399
git rev-list --count origin/lineage-24..origin/lineage-20     #   0
git log --oneline origin/lineage-23..origin/lineage-24        #   1
git diff origin/lineage-20..origin/lineage-24 -- arch/arm64/configs/lineageos_a37f_defconfig
git log --oneline -S'CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder"' origin/lineage-24 \
  -- arch/arm64/configs/lineageos_a37f_defconfig               # revert 80535ab terlihat
git show origin/lineage-24:arch/arm64/configs/lineageos_a37f_defconfig | grep BINDER_DEVICES

# Device tree: opsi A lawan opsi B
git clone --filter=blob:none --no-single-branch \
  https://github.com/rigaz29/rb_device_oppo_A37.git dt && cd dt
git diff --shortstat origin/lineage-23..origin/lineage-23-64bit     # 6 berkas, 162/11
git diff --shortstat origin/lineage-20..origin/lineage-23-64bit     # 488 berkas, 113748/457
git rev-list --count origin/lineage-20..origin/lineage-23-64bit     # 119
git merge-base origin/lineage-20 origin/lineage-23                  # 15f7975

# Vendor: cabang 64-bit bukan superset
git clone --filter=blob:none --no-single-branch \
  https://github.com/rigaz29/rb-vendor_oppo_A37.git vendor && cd vendor
git ls-tree -r --name-only origin/lineage-18.1     | sed 's|^A37/proprietary/||' | grep -v '^A37/' | sort > v18.txt
git ls-tree -r --name-only origin/lineage-23-64bit | sed 's|^A37/proprietary/||' | grep -v '^A37/' | sort > v64.txt
comm -23 v18.txt v64.txt | wc -l                                    # 52
grep '^vendor/lib64/' v64.txt | sed 's|vendor/lib64/||' | sort > lib64.txt
grep '^vendor/lib/'   v18.txt | sed 's|vendor/lib/||'   | sort > lib18.txt
comm -12 lib64.txt lib18.txt | wc -l                                # 114 naik ke 64-bit
comm -13 lib64.txt lib18.txt | wc -l                                # 162 tetap 32-bit
comm -23 lib64.txt lib18.txt | wc -l                                #   0 blob 64-bit asing

# Modul 32-bit yang sudah disediakan AOSP 13
curl -sL https://raw.githubusercontent.com/LineageOS/android_hardware_interfaces/\
lineage-20.0/camera/provider/2.4/default/Android.bp | grep -nE 'name:|compile_multilib'
curl -sL https://raw.githubusercontent.com/LineageOS/android_build/\
lineage-20.0/target/product/core_64_bit.mk | grep -n ZYGOTE_FORCE_64
curl -sL https://raw.githubusercontent.com/LineageOS/android_hardware_ril/\
lineage-20.0/rild/Android.mk | grep -n BUILD_EXECUTABLE

# Keadaan LOS 20 yang diadu dengan kandidat fitur §6
git -C dt show origin/lineage-20:device.mk    | grep -inE 'ro.lmk|thermal|widevine|FMRadio|livedisplay|vibrator'
git -C dt show origin/lineage-20:rootdir/etc/fstab.qcom | grep -nE 'zram|/data'
```

---

## 11. Rujukan

| | |
|---|---|
| Rencana 64-bit LOS 23.2 (induk) | `/root/a37-23/plan-64bit/README.md` |
| Hasil per fase, termasuk audit dan koreksinya | `/root/a37-23/plan-64bit/fase-0`, `fase-1`, `fase-2`, `fase-5` |
| Skrip audit `DT_NEEDED` siap pakai | `/root/a37-23/plan-64bit/fase-5/alat/audit-dt-needed.sh` |
| 23 blob 32-bit + SHA256 + asal | `/root/a37-23/plan-64bit/fase-5/blob-baru-32bit.txt` |
| `rild` 32-bit versi Android.bp (pola) | `/root/a37-23/plan-64bit/fase-4/perubahan-aosp/rild-Android.bp` |
| Basis LOS 20 yang berlaku | `PLAN-OFFICIAL.md` |
| Temuan khas A37 (10.A–10.F, VINTF, sepolicy, blob) | `PLAN.md` |
| Keadaan, keputusan, dan delapan jebakan | `HANDOFF.md` |

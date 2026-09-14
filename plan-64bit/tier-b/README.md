# Tier B — T-B3 sampai T-B7

Dikerjakan **14 September 2026**, device tree `ba712d2`.

---

## 0. Ringkasan putusan

Rencana secara eksplisit menyuruh **memeriksa apakah gejala LOS 23.2 memang ada
di LineageOS 20 sebelum menyalin**. Aturan itu dipakai untuk setiap sub-item,
dan hasilnya: dari sembilan sub-item, **lima dikerjakan**, **tiga gugur karena
gejalanya tidak ada**, dan **satu terhalang karena blobnya tidak ada**.

| item | putusan | dasar |
|---|---|---|
| **T-B3** Power HAL | ✅ dikerjakan | mekanisme belum ada; nilai diukur ulang di ROM ini |
| **T-B4** WireGuard | ✅ dikerjakan, **terbukti jalan di perangkat** | kernel siap, alat userspace hilang |
| **T-B5** daemon IMS | ⛔ **terhalang** | blobnya tidak ada di cabang mana pun repo vendor |
| **T-B6** speaker volume | ✅ dikerjakan, **di berkas berbeda dari 23.2** | gejala terkonfirmasi di `mixer_paths_mtp.xml` |
| **T-B6** GPU pwrlevel | ✅ dikerjakan | `default_pwrlevel = 1`, gpuclk 310 MHz saat idle |
| **T-B6** `ccodec` 0→4 | ❌ **gugur** | A13 masih punya 37 codec termasuk decoder audio |
| **T-B6** MULTI_VOICE_SESSIONS | ❌ **ditunda** | akar masalah 23.2 (stub `libmedia`) tidak ada di sini |
| **T-B7** PinnerService | ✅ dikerjakan, **temuan lebih luas** | 5 dari 9 entri salah, bukan 4 |
| **T-B7** hung task | ✅ sebagian | timeout dinyalakan; `panic` sengaja tidak disentuh |
| **T-B7** ueventd `idle_time` | ❌ **gugur** | composer sehat, nol tombstone |

---

## 1. T-B3 — Power HAL: `LOW_POWER` dan `SUSTAINED_PERFORMANCE`

Ketiga commit rujukan (`ad6cd94`, `65bf56d`, `79745e2`) dibaca sebagai satu
kesatuan, seperti yang diminta rencana. Hasil bersihnya: `LOW_POWER` 800000 kHz,
`SUSTAINED_PERFORMANCE` 1209600 kHz (sama dengan puncak; mekanisme pembatasan
dipertahankan utuh supaya mudah disetel ulang).

### Empat prasyarat, diverifikasi bukan diasumsikan

| fakta | bukti |
|---|---|
| enum hint ada di A13 | `hardware/libhardware/include/hardware/power.h:64-65` |
| satu domain frekuensi | `related_cpus = 0 1 2 3` di perangkat |
| HAL berhak menulis | HAL berjalan sebagai `system` (pid 358); `scaling_max_freq` milik `system:system` |
| semantik `data` non-NULL | `hardware/interfaces/power/1.0/default/Power.cpp:47-54` — **baris yang sama** dengan rujukan 23.2 |

### Nilai 1209600 diukur ulang, tidak disalin percaya saja

Beban penuh 4 inti, 3 menit, di ROM ini:

```
detik   scaling_max_freq   cur_freq   tsens4   tsens5
    0            1209600    1209600       39       38
   60            1209600    1209600       62       60
  120            1209600    1209600       65       63
  180            1209600    1209600       66       64   <- mendatar
```

`scaling_max_freq` **tidak pernah diturunkan**, bahkan setelah suhu melewati 60.
Jadi batas pre-emptif memang tidak dibenarkan oleh pengukuran — kesimpulan 23.2
terkonfirmasi independen.

**Dua koreksi komentar warisan:** mode berkas `0660` (bukan 0664), dan perangkat
ini **kini punya HAL thermal** (T-A3) walau itu hanya melaporkan sehingga
alasannya tidak berubah.

Diverifikasi pada varian yang benar-benar dimuat, yaitu **lib64** — servisnya
ELF 64-bit: `strings` memuat `800000` dan `1209600`, dan tidak memuat `1094400`
maupun `998400`.

---

## 2. T-B4 — WireGuard

Prasyaratnya terbukti **hidup**, bukan sekadar dikonfigurasi:

```
CONFIG_WIREGUARD=y                    lineageos_a37f_defconfig:138
/sys/module/wireguard                 ada
ip link add dev wgtest type wireguard BERHASIL, interface terbentuk
/system/bin/wg                        TIDAK ADA
```

Jadi yang hilang hanya alat userspace-nya. `wireguard-tools/` (56 berkas, 532 KB)
dipindahkan ke device tree dan `wg` didaftarkan di `device.mk`.

### Diuji ujung ke ujung di perangkat

Bukan sekadar dibangun — biner didorong ke `/data/local/tmp` dan dipakai:

```
wireguard-tools va998407
wg show wgtest:  public key: xocqOcDrJFoK1suc+q/NCza80dC6+77xLvoMsRAB+SI=
wg genkey|pubkey: xocqOcDrJFoK1suc+q/NCza80dC6+77xLvoMsRAB+SI=   <- cocok
```

Biner 83.640 byte, ELF 64-bit aarch64 (23.2: 47.452 byte karena 32-bit).

---

## 3. T-B5 — daemon IMS: **terhalang, premisnya gugur**

Rencana menyatakan `imsqmidaemon` (120.464 B) dan `imsdatadaemon` adalah ELF
64-bit yang mustahil dijalankan di ROM 32-bit, dan build 64-bit menghapus
penghalang arsitekturnya.

Penghalang arsitekturnya memang hilang — `/system/bin/linker64` ada. Tetapi
**binernya sendiri tidak ada:**

```
find vendor/oppo/A37/proprietary -name "ims*daemon*"   -> nihil
git ls-tree seluruh remote refs                        -> nihil
vendor/bin/ berisi 11 biner                            -> tak satu pun IMS
```

Yang ada hanya **pustaka** IMS (`lib64/lib-imss.so`, `lib-imscamera.so`, dan
seterusnya), bukan daemonnya. Temuan Fase 0 itu berasal dari vendor tree proyek
**LOS 23.2**, bukan dari cabang `lineage-20-64bit` yang kita pakai.

T-B5 baru bisa dikerjakan kalau blobnya ditarik dari dump stock atau dari
cabang vendor lain.

---

## 4. T-B6 — penyetelan audio/GPU

### 4.1 Volume digital speaker — dikerjakan, tapi di berkas yang berbeda

**Ini nyaris menjadi no-op.** Commit 23.2 menyunting `mixer_paths.xml` dan
`mixer_paths_mtp.xml`. Di sini pola jalur `speaker` hanya cocok di
`mixer_paths.xml`, jadi suntingan pertama masuk ke sana — lalu pemeriksaan
menunjukkan berkas itu **tidak pernah dibaca perangkat ini**:

```
/proc/asound/cards       ->  msm8x16-snd-card-mtp
platform.c:838-841       ->  nama itu dipetakan ke MIXER_XML_PATH_MTP
```

Suntingan itu dibatalkan dan dipindahkan ke `mixer_paths_mtp.xml`.

Gejalanya terkonfirmasi di berkas yang benar:

| baris | jalur | nilai |
|---|---|---|
| 25 | default global | **86** |
| 505 | `speaker` | **tidak menyetel apa pun** |
| 525 | `handset` | 84 |
| 563 / 572 / 581 / 592 | lain-lain | 90 / 84 / 84 / 78 |

`tinymix` melaporkan **86** di perangkat, cocok dengan default global. Jadi
sesudah menelepon (handset = 84) volume speaker turun sendiri dan tidak kembali
sampai boot berikutnya — volume yang bergantung riwayat pemakaian.

Nilai 96 berasal dari uji dengar 23.2 pada perangkat yang sama. Yang diperbaiki
terutama **ketidakpastiannya**, terlepas dari angka.

> ⚠️ Jebakan XML `--` menggigit untuk **ketiga kalinya** di proyek ini (setelah
> dua kali di manifest). `xmllint` di jalur build yang menangkapnya. Komentar
> ditulis ulang memakai em dash.

### 4.2 Level istirahat GPU — dikerjakan

Gejala terukur di perangkat: `default_pwrlevel = 1`, `gpuclk = 310000000` saat
menganggur. Indeksnya 0=400, 1=310, 2=200 MHz, jadi GPU memang tidak pernah
turun ke 200 MHz.

Disetel ke 2 di `on property:sys.boot_completed=1`, dan `sepolicy/init.te`
diberi izin `write` pada `sysfs_kgsl` — terverifikasi di policy terkompilasi:
`(allow init_33_0 sysfs_kgsl (file (read write open)))`.

`min_pwrlevel`/`max_pwrlevel` sengaja tidak disentuh: GPU tetap bebas naik ke
400 MHz saat beban menuntut. **Dampak baterainya belum terbukti** — yang terukur
hanya waktu di tiap frekuensi.

### 4.3 `ccodec` 0 → 4 — **gugur**

Gejala 23.2: **nol** decoder audio, karena Android 16 sudah membuang codec
software OMX sehingga `ccodec=0` menyisakan kekosongan.

Android 13 masih mengirimnya. Di perangkat: **37 codec terdaftar**, termasuk
`OMX.google.aac.decoder`, `mp3.decoder`, `flac.decoder`, `opus.decoder`,
`amrnb/amrwb`, `g711`, `gsm`. Alasan perubahan itu tidak ada di sini, dan
mengubah jalur codec tanpa gejala hanya menambah risiko regresi pemutaran.

### 4.4 MULTI_VOICE_SESSIONS — **ditunda, bukan ditolak**

Akar masalah 23.2 sangat spesifik: `/vendor/lib/libmedia.so` di sana adalah
**stub buatan mereka sendiri** (`libshims/stub/libmedia_stub.cpp`), yang ada
karena blob RIL 2016 menuntut simbol yang sudah dicabut dari libmedia modern.
Stub itu menelan parameter `vsid` + `call_state` dari RIL, sehingga
`voice_extn_start_call()` tidak pernah melihat `state.new == CALL_ACTIVE`.

Di LineageOS 20 stub itu **tidak ada**: `libshims/stub/` tidak ada di device
tree, dan `/vendor/lib/libmedia.so` tidak ada di perangkat. `BoardConfig.mk:377`
masih menyalakan `AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS`, sama seperti
titik awal 23.2 — tetapi mekanisme yang merusaknya di sana belum tentu ada di
sini.

**Panggilan suara belum pernah diuji di ROM ini.** Mengubah konfigurasi sesi
suara sekarang berarti menebak, dan kalau panggilan ternyata sudah berbunyi,
perubahan itu justru bisa merusaknya. Uji panggilan dulu; kalau bisu dua arah,
terapkan `9270131`.

---

## 5. T-B7 — perbaikan kecil

### 5.1 PinnerService — dikerjakan, temuan lebih luas dari 23.2

**Lima** dari sembilan entri menunjuk berkas yang tidak ada, bukan empat:

| entri | masalah di LOS 20 64-bit |
|---|---|
| `oat/arm/services.odex` | hilang; `system_server` 64-bit, odexnya di `oat/arm64/` |
| `/system/lib/libsurfaceflinger.so` | tidak ada di `lib` **maupun** `lib64` — A13 tidak mengirimnya terpisah |
| `product/priv-app/SystemUI/SystemUI.apk` | ada di `system_ext`, bukan `product` |
| dua entri `/data/dalvik-cache/...SystemUI...` | mustahil: SystemUI **dipreopt di image** |

Kedua entri dalvik-cache **dibuang, bukan diperbaiki** seperti 23.2 — dua alasan
terpisah, masing-masing sudah cukup. Selain mustahil (dalvik-cache tidak memuat
entri SystemUI sama sekali), keduanya memang **tidak perlu**:
`PinnerService.java:315-336` otomatis mencari dan mem-pin artefak kompilasi
setiap entri berakhiran `.jar`/`.apk`. Terbukti hidup di perangkat — `dumpsys
pinner` memuat `boot-framework.oat` dan `.vdex` **arm64** yang tidak ada di
daftar, diturunkan dari entri `framework.jar`.

**Ongkos RAM, diukur:**

```
sebelum                        68,8 MB ter-pin (dumpsys pinner)
+ services.odex arm64          33,1 MB
+ SystemUI.apk + odex + vdex   47,9 MB
= sekitar                     150   MB  pada perangkat 1886 MB  (~8% RAM)
```

Entri statis dikunci **penuh tanpa plafon** (`PinnerService.java:305` memakai
`Integer.MAX_VALUE`), tidak seperti aplikasi kamera/home yang punya batas.

Itu pertukaran nyata di perangkat 2 GB: pinning membantu justru saat memori
tertekan, tetapi RAM terkunci juga paling menyakitkan saat itu. **Kalau terasa
memperburuk, hapus dua entri terakhir**, bukan seluruh daftar — lima entri
framework di atasnya sudah benar dan murah. Caranya juga ditulis di komentar
overlay.

### 5.2 Deteksi task menggantung — dikerjakan sebagian

Gejala terukur: `hung_task_timeout_secs = 0`, ditulis `init.rc` AOSP baris 295
di blok `on init`. Blok `on post-fs` berjalan sesudahnya, jadi menimpanya dengan
**90** (nilai yang sudah ada di `defconfig:46-47`) menyalakan kembali detektor.

`hung_task_panic` **sengaja tidak ditulis**, dan ini keputusan sadar.
`BoardConfig.mk:267` meminta `hung_task_panic=1` lewat cmdline sebagai jaring
pengaman boot, dan parameter itu **memang sampai** — terbaca di `/proc/cmdline`.
Tetapi sysctl-nya terbaca **0**, padahal `kernel/hung_task.c:51-57` punya
`__setup("hung_task_panic=")` dan satu-satunya penulis sysctl lain (init.rc
AOSP) hanya menyentuh timeout.

Percanggahan itu **belum terjelaskan** — butuh `dmesg` boot yang segar, dan
buffer di perangkat sudah berputar. Menulis nilai apa pun akan mengubur
pertanyaannya: menulis 0 mematikan permanen niat BoardConfig, menulis 1
mempersenjatai reboot yang selama ini tidak pernah aktif. Dibiarkan apa adanya,
sehingga menyalakan detektor hanya menambah **pelaporan**.

> Catatan: klaim di `init.target.rc:174` bahwa task menggantung "ditangani
> `hung_task_panic=1` di BoardConfig.mk" **tidak benar di perangkat** — jaring
> pengaman itu tidak aktif.

### 5.3 ueventd `idle_time` — **gugur**

Gejala 23.2: `android.hardware.graphics.composer@2.1-service` SIGABRT tiap boot,
tersimpan sebagai tombstone.

Di sini tidak ada gejalanya: composer (pid 351) berjalan sejak boot sebagai user
`system`, **nol tombstone**, dan **nol** galat `qdutils`/`IdleInvalidator`/
`MDPComp` di logcat. `idle_time` sudah `system:graphics` mode 0664. Menambahkan
aturan ueventd untuk masalah yang tidak ada hanya menambah berkas yang harus
dirawat.

---

## 6. Masuk ROM 20260914_125924

Dibangun dan diverifikasi 14 September 2026. `verify-rom.sh` diberi bagian
**Tier B** dan lolos seluruhnya:

```
T-B3 batas frekuensi 800000 dan 1209600 ada di power HAL lib64
T-B4 wg terpasang, 64-bit (83640 byte)
T-B6 volume digital speaker 96 ada di mixer_paths_mtp.xml
T-B6 GPU default_pwrlevel 2 (level istirahat 200 MHz)
T-B7 hung_task_timeout_secs 90 (init.rc AOSP menyetel 0)
T-B7 daftar pinner di RRO: 6 entri, services.odex sudah arm64
```

Entri pinner dibaca dengan `aapt2 dump resources` dari
`framework-res__auto_generated_rro_vendor.apk` **hasil build**, bukan dari
sumber overlay — itu membuktikan overlaynya benar-benar terkompilasi dan
terpasang, bukan sekadar tertulis.

### 6.1 Dua kegagalan build, keduanya milik saya sendiri

**Tanda hubung ganda XML, untuk ketiga dan keempat kalinya.** Setelah
`mixer_paths_mtp.xml` ditangkap `xmllint`, overlay `config.xml` gagal lagi di
`aapt2` dengan `xml parser error: not well-formed`. Penyebabnya tiga `--` lagi
di komentar yang baru ditulis; pemeriksaan pertama saya hanya melaporkan
kemunculan **pertama per komentar** sehingga dua sisanya lolos. Kini
dibersihkan menyeluruh dengan verifikasi mandiri, dan **seluruh 39 berkas XML**
device tree dilewatkan `xmllint`.

**`bacon-retry.sh` salah menyebut galat itu OOM, delapan kali.** Ini lebih
serius daripada XML-nya. Pola galat "nyata" di skrip hanya mengenali
`berkas:baris:kolom: error:`, sedangkan `aapt2` menulis `berkas:0: error:`
tanpa kolom. Kegagalan itu lalu jatuh ke cabang "FAILED tanpa galat kompilator"
dan dibaca sebagai kehabisan memori — skrip mengulang delapan kali dan bahkan
**menurunkan ke `-j6`** sesuai aturan pengguna, untuk kegagalan yang sama
sekali tidak berhubungan dengan memori.

Diperbaiki dua lapis:

| perbaikan | isi |
|---|---|
| pola diperluas | `berkas:baris: error:`, `berkas: error:`, `error: file failed to compile`, `ninja: error:`, `FAILED: *.xml` |
| plafon mutlak | `MAKS_PERCOBAAN=8`, lalu berhenti dan menyuruh dibaca manusia |

Pola baru diuji terhadap log yang gagal itu dan mengenalinya. Setelah kedua
perbaikan, build lolos **percobaan pertama dengan `-j10`** dalam 6 menit 18
detik.

---

## 7. Belum diverifikasi di perangkat

Semua perubahan di atas **belum masuk ROM mana pun** kecuali `wg`, yang diuji
lewat push manual. Setelah ROM berikutnya di-flash:

```bash
# T-B3 — hint hanya bereaksi saat battery saver / sustained mode aktif
adb shell cmd power set-mode 1          # battery saver
adb shell cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq   # harus 800000
adb shell cmd power set-mode 0
adb shell cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq   # harus pulih

adb shell which wg && wg --version                    # T-B4
adb shell tinymix | grep "RX1 Digital Volume"         # T-B6a, harus 96
adb shell cat /sys/class/kgsl/kgsl-3d0/default_pwrlevel   # T-B6d, harus 2
adb shell dumpsys pinner | tail -3                    # T-B7a, total dan isi
adb shell cat /proc/sys/kernel/hung_task_timeout_secs # T-B7c, harus 90
```

Yang paling perlu diperhatikan setelah pemakaian sehari-hari: **total pinner**
(§5.1) dan apakah GPU 200 MHz terasa pada animasi.

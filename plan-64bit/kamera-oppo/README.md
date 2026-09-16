# Rencana: mendekatkan kualitas kamera ke bawaan OPPO

Disusun 16 Sep 2026, setelah menyisir apa yang SUDAH ada di perangkat.
Rencana ini sengaja **tidak** berpusat pada mem-port aplikasi kamera ColorOS,
dan alasannya ada di bagian akhir.

## Fase 0 — Apa yang ternyata sudah kita punya

Ini harus disebut lebih dulu supaya rencananya tidak mengejar bayangan.

| yang sering diduga hilang | kenyataan |
|---|---|
| data penyeteleran ISP/3A | **sudah ada** — 59 pustaka `libchromatix_*` |
| blob sensor & EEPROM | **sudah ada** — 112 berkas kamera total, dari firmware OPPO yang sama |
| pustaka HDR & pengolahan citra | **sudah ada** — `libmmcamera_hdr_lib`, `libmmcamera_hdr_gb_lib`, `libmmcamera_imglib`, `libmmcamera_faceproc` |
| akses API Camera1 | **sudah ada** — Aperture MAUPUN Open Camera tersambung lewat `Camera API version 1` |

Jadi yang hilang bukan data, bukan pustaka, dan bukan akses API.

## Yang sebenarnya hilang: tidak ada yang MEMAKAI kemampuannya

HAL mengekspos **235 kunci parameter Camera1**, di antaranya yang langsung
menentukan kualitas gambar:

```
ae-bracket-hdr        auto-hdr-enable     denoise-on / denoise-off
scene-detect          selected-auto-scene iso-values
max/min-contrast      max/min-saturation  max/min-sharpness
face-beautify-hdr     redeye-reduction    histogram-values
```

Dan HAL membaca **53 properti `persist.camera.*`**, termasuk:

```
persist.camera.auto.hdr.enable    persist.camera.stillmore.enable
persist.camera.CDS                persist.camera.feature.cac
persist.camera.Lnoise             persist.camera.Lsharpen
persist.camera.Lcolor             persist.camera.Lcontrast
persist.camera.tintless           persist.camera.set.afd
persist.camera.snapshot.number    persist.camera.zsl.queuedepth
```

Dari 53 itu, **kita hanya menyetel dua**, dan keduanya soal debug/kompatibilitas:

```
device.mk:355   persist.camera.cpp.duplication=false
device.mk:356   persist.camera.hal.debug.mask=0
```

Aplikasi kamera bawaan ColorOS-lah yang dulu menyalakan semua itu. Aperture,
yang ditulis dengan semangat CameraX/Camera2, tidak pernah menyentuhnya.

---

## Fase 1 — Properti `persist.camera.*` (paling murah, tanpa kode)

**Kenapa didahulukan:** bisa diuji LANGSUNG dengan `setprop` + restart layanan
kamera. Tanpa build, tanpa flash, dan bisa dibatalkan seketika.

Kandidat berdampak, diurutkan menurut dugaan imbalan:

1. `persist.camera.stillmore.enable` — StillMore, peredam derau multi-bingkai
   Qualcomm. Secara konsep paling dekat dengan HDR+ yang tidak bisa kita dapat
   dari GCam. **Kandidat tunggal paling menjanjikan.**
2. `persist.camera.auto.hdr.enable` — Auto HDR
3. `persist.camera.CDS` — chroma denoise
4. `persist.camera.feature.cac` — koreksi aberasi kromatik
5. `persist.camera.tintless` — koreksi tint/lens shading
6. `persist.camera.Lnoise` / `Lsharpen` / `Lcolor` / `Lcontrast`
7. `persist.camera.set.afd` — deteksi kedip otomatis

**Cara kerjanya:** satu properti per putaran, foto pembanding pada adegan yang
sama, `setprop` lalu `killall mm-qcamera-daemon`. Yang terbukti membaik masuk
`device.mk`; yang tidak, dibuang.

**Risiko:** rendah. Properti yang tidak dikenali HAL diabaikan. Yang perlu
diawasi hanya ZSL dan `snapshot.number` — keduanya menambah pemakaian memori,
dan perangkat ini 2 GB.

---

## Fase 2 — Baca apa yang disetel aplikasi bawaan (DI SINI firmware berguna)

Firmware `A37fEX_11_A.38_190711` berguna, tetapi **bukan untuk mem-port
aplikasinya** — melainkan untuk membaca pilihannya.

Yang diambil:

1. **APK kamera ColorOS** — dibongkar, dicari pemanggilan
   `Camera.Parameters.set(...)`. Itu memberi daftar persis parameter mana yang
   dinyalakan OPPO dan dengan nilai apa. Jauh lebih kecil daripada mem-port.
2. **`/system/etc/camera/*.xml`** kalau ada — berkas konfigurasi fitur per
   perangkat yang kadang dibaca HAL.
3. **`build.prop` stok** — daftar `persist.camera.*` yang OPPO setel sendiri.
   Ini jawaban langsung untuk Fase 1, tanpa perlu menebak.

**Hambatan yang harus diakui:** tautan MediaFire memulangkan halaman HTML,
bukan berkas; unduhannya perlu mengambil tautan langsung dari halaman itu.
Lalu `.rar` -> citra OFP/OZIP OPPO -> perlu alat pembongkar khusus. Bukan
mustahil, tetapi bukan satu perintah. Dikerjakan HANYA kalau Fase 1 sudah
memberi hasil dan kita ingin daftar yang pasti alih-alih coba-coba.

---

## Fase 3 — Parameter yang hanya bisa disetel dari aplikasi

Sebagian kunci di daftar 235 itu tidak punya padanan properti, jadi harus
disetel lewat `Camera.Parameters`. Pilihan, dari yang paling ringan:

- **Tambal Aperture** supaya menyetel parameter vendor pada jalur Camera1-nya.
  Aperture sudah tersambung sebagai Camera API 1, jadi tidak perlu mengubah
  arsitekturnya — cukup menambahkan parameter sebelum `startPreview`.
- **Aplikasi Camera1 kecil** khusus, kalau menambal Aperture ternyata melawan
  arus CameraX.

Open Camera **tidak** dipakai di sini: jalur tangkapnya terbukti membuat blob
HAL1 gagal (lihat `plan-64bit/open-camera/`).

---

## Yang TIDAK akan dikerjakan: mem-port aplikasi kamera ColorOS

Bukan karena malas, melainkan karena rantai ketergantungannya putus:

1. APK-nya menyasar **SDK 22** (Android 5.1.1) dan berjalan di **SDK 33**.
2. Ia bergantung pada kelas kerangka OPPO (`com.color.*`, `com.oppo.*`) yang
   hidup di `oppo-framework.jar` — bukan pustaka biasa, melainkan tambahan
   pada kerangka Android itu sendiri. Membawanya berarti menambal
   `framework.jar` Android 13 dengan kerangka Android 5.1.
3. Ia memanggil layanan sistem OPPO yang tidak ada di AOSP.
4. Pembatasan API tersembunyi, penyimpanan terlingkup, dan SELinux Android 13
   semuanya menghadang aplikasi sistem berusia satu dekade.

Dan yang terpenting: **imbalannya kecil.** Aplikasi itu sendiri tidak
mengandung algoritma pencitraan — algoritmanya ada di `libmmcamera*` dan
`libchromatix*`, yang **sudah kita bawa**. Aplikasinya hanya memilih
parameter. Fase 1 dan 2 mengejar pilihan itu tanpa memikul kerangka ColorOS.

---

## Urutan yang disarankan

1. **Fase 1** sekarang — nol build, nol flash, bisa dibatalkan seketika.
   Mulai dari `stillmore.enable`.
2. Kalau Fase 1 memberi perbaikan yang terlihat, **Fase 2** untuk mengganti
   tebakan dengan daftar pasti dari firmware.
3. **Fase 3** hanya untuk sisa parameter yang tidak punya padanan properti.

---

# Fase 1 dijalankan (16 Sep 2026) — mekanismenya TERBUKTI, sisanya belum

## Hasil utama: properti `persist.camera.*` benar-benar bekerja

Dibuktikan dengan A/B terkendali, bukan dugaan. Alat ukurnya bukan foto
melainkan **daftar parameter yang dilaporkan kamera sendiri**, diambil dari
blok `Latest set parameters:` milik kamera 0 di `dumpsys media.camera`, dengan
waktu mengendap 20 detik yang sama di kedua putaran:

| putaran | `auto-hdr-enable` |
|---|---|
| `persist.camera.auto.hdr.enable` kosong | `disable` |
| `persist.camera.auto.hdr.enable=1` | **`1`** |

Dan selisihnya **tepat satu baris** — 156 parameter di kedua putaran, tidak
ada efek samping:

```
~ 10 auto-hdr-enable: disable → auto-hdr-enable: 1
```

Properti juga terbukti berlabel SELinux dengan benar:
`vendor_property_contexts: persist.camera.  u:object_r:camera_prop:s0`.

## Peluang yang ditemukan dari daftar parameter sesungguhnya

```
auto-hdr-supported: true          <- DIDUKUNG
auto-hdr-enable:    disable       <- tapi MATI secara baku
zsl-hdr-supported:  true
ae-bracket-hdr-values: Off,AE-Bracket
scene-mode-values:  auto,asd,landscape,...,night,hdr
iso-values: auto,ISO_HJR,ISO100..ISO3200      <- HJR = hand jitter reduction
denoise: denoise-on                            <- sudah menyala
tintless: enable                               <- sudah menyala
```

## KOREKSI: StillMore kemungkinan besar mati di sensor ini

Saya menyebutnya "kandidat tunggal paling menjanjikan" di rencana. **Itu
terlalu jauh.** Daftar parameter memuat `still-more: off` tetapi **tidak ada
`still-more-values`** — bandingkan dengan `denoise-values`,
`ae-bracket-hdr-values`, dan `scene-detect-values` yang semuanya ada. HAL
tidak mengiklankan satu pun mode StillMore yang didukung, jadi menyetel
propertinya kemungkinan besar sia-sia.

## Yang BELUM terbukti, dan kenapa

**Lima properti lain belum teruji.** Putaran pengujiannya gagal: siklus cepat
`force-stop` + `killall mm-qcamera-daemon` + luncur ulang, lima kali beruntun,
membuat Aperture ANR ("Kamera tidak menanggapi") dan seluruh pembacaan
mengembalikan nol. Bukan kameranya yang rusak -- `qcamerasvr` tetap `running`
dan tidak ada satu pun `camera_open failed`. Alat ukurnya yang roboh.

**Dampak ke kualitas gambar sama sekali belum terukur.** Ponselnya tergeletak
menempel di meja kayu sepanjang pengujian: foto acuan sepenuhnya di luar
fokus, permukaan rata tanpa detail (`mean=111.7 stddev=27.8`). Perbedaan
peredam derau atau HDR mustahil terlihat pada adegan seperti itu.

## Pelajaran metode, supaya tidak terulang

1. **Blok parameter di `dumpsys` harus diambil per batas seksi, dan kedua
   putaran harus diberi waktu mengendap yang sama.** Dua perbandingan pertama
   saya TIDAK SAH: yang satu membandingkan 182 lawan 163 parameter, yang lain
   156 lawan 145, dan selisihnya penuh hal seperti `focus-mode:
   continuous-picture` lawan `auto` serta `zsl: on` lawan `off` -- itu kamera
   yang belum mengendap, bukan efek properti. Baru setelah keduanya sama-sama
   156 parameter angkanya bisa dipercaya.
2. **Jangan menyiklus kamera dengan cepat.** Beri jeda, dan periksa aplikasi
   benar-benar mendapat fokus sebelum membaca.
3. **Periksa `mCurrentFocus`.** Nilai `null` berarti pembacaan tidak sah --
   bisa layar terkunci, bisa dialog ANR menutupi.

## Yang dibutuhkan untuk melanjutkan

Adegan yang bisa dinilai. Sandarkan ponsel menghadap sesuatu yang berdetail --
tulisan, tekstur kain, rak buku -- pada jarak fokus wajar dan cahaya ruangan
biasa, lalu biarkan diam. Dengan itu Fase 1 bisa diselesaikan: `auto-hdr`
dinyalakan, foto dibandingkan pada adegan yang sama, dan keputusannya
berdasar bukti.

Perangkat ditinggalkan bersih: seluruh properti percobaan dikosongkan,
sudah di-reboot, `qcamerasvr running`, 4 HAL device, 0 oops.

---

# Fase 1 SELESAI (16 Sep 2026) — hasilnya negatif, dan itu tetap berharga

Dituntaskan pada adegan yang layak: meja berisi charger, kabel, dan ponsel —
bertekstur, fokus benar, cahaya ruangan.

## `auto-hdr`: tidak ada perbaikan yang terukur

Tiga foto per kondisi, adegan sama, Aperture, HAL di-restart di antaranya.

| | mean | stddev | entropi | highlight terpotong |
|---|---|---|---|---|
| HDR mati | 131,33 ± 0,11 | 72,32 ± 0,02 | 0,8634 | **7,699% ± 0,007** |
| HDR hidup | 130,55 ± 0,60 | 72,90 ± 0,60 | 0,8565 | **8,271% ± 0,72** |

Highlight yang terpotong justru **naik**, entropi **turun**, dan ragamnya
melonjak 100 kali lipat.

Penjelasannya bukan "HDR memperburuk", melainkan **HDR tidak pernah menyala**:
nol baris log HDR sepanjang penangkapan. Selisih angka di atas adalah AE yang
bergoyang, dan itu justru sesuai dengan ragam yang membengkak. Rentang
adegannya `min=7,86 max=255` — sorotan memang terpotong, tetapi bayangannya
sehat, jadi pemicu Auto HDR tidak terpenuhi.

**Tidak diadopsi.** Properti dikosongkan kembali.

## Kenapa tidak ada properti lain yang layak dikejar

Daftar parameter kamera menunjukkan yang penting **sudah menyala secara baku**:

```
denoise:  denoise-on      <- sudah
tintless: enable          <- sudah
zsl:      on              <- sudah (kamera 0)
```

Dan yang masih mati **tidak punya properti pengendali sama sekali**:

```
scene-detect:   off    (ASD)          -- hanya lewat Camera.Parameters
ae-bracket-hdr: Off                   -- hanya lewat Camera.Parameters
still-more:     off                   -- tidak diiklankan HAL, mati
```

Satu-satunya properti bertema HDR yang ada adalah `auto.hdr.enable` (sudah
diuji, nihil) dan `hdr.outcrop` (kosmetik, memotong hasil HDR).

## Kesimpulan Fase 1

**Tidak ada kemenangan gratis di tingkat properti.** Bawaan HAL sudah masuk
akal. Yang saya duga di rencana — bahwa aplikasi ColorOS menyalakan banyak
hal lewat properti yang kita biarkan mati — **tidak terbukti**.

Ini mengubah nilai fase berikutnya:

- **Fase 2 turun nilainya sebagai sumber properti**, karena properti yang ada
  tidak mengendalikan fitur yang masih mati. Nilainya bergeser sepenuhnya ke
  membaca **pilihan parameter** aplikasi bawaan.
- **Fase 3 naik menjadi satu-satunya jalur nyata.** `scene-detect` (ASD) dan
  `ae-bracket-hdr` hanya bisa disetel dari aplikasi, dan keduanya mati.

## Yang terbukti tetap berharga

Mekanismenya sahih dan alat ukurnya sekarang ada: A/B terkendali dengan
pembacaan parameter dari `dumpsys`, plus metrik citra objektif (mean, stddev,
entropi, persentase sorotan/bayangan terpotong) yang cukup peka — sebaran
kondisi "mati" hanya ±0,007% pada highlight. Perubahan sekecil apa pun di
Fase 3 akan terlihat.

---

# Fase 1 diulang dengan metode aman (16 Sep 2026) — sebabnya kini diketahui

Pengulangan ini menjawab pertanyaan yang tertinggal dari putaran pertama:
bukan sekadar "tidak ada beda", melainkan **kenapa**.

## Metode baru: tanpa membunuh apa pun

Putaran sebelumnya memakai `force-stop` + `killall mm-qcamera-daemon` dan itu
tiga kali merusak kamera perangkat. Metode pengganti:

```
input keyevent KEYCODE_HOME
tunggu sampai `dumpsys media.camera` melaporkan "Device 0 is closed"
setprop persist.camera.auto.hdr.enable <0|1>
am start ... ; endapkan 20 detik ; potret
```

Terbukti berhasil DAN aman: properti tetap berbalik (`disable` -> `1`) tanpa
daemon disentuh, dan setelah **enam siklus penuh** hasilnya
`unusable device = 0`, `tombstone = 0`, kedua layanan `running`.

Properti selalu diisi nilai sah `0` atau `1` — **jangan pernah string kosong**.
Properti Android tidak bisa dihapus, hanya diisi, dan `persist.*` tersimpan di
`/data/property/persistent_properties` sehingga string kosong ikut bertahan
melewati dirty flash.

## Adegan uji kali ini layak

Headphone, DAC, kabel, dinding bertekstur, sudut gelap: `min=1,43 max=255`.
Berbeda jauh dari meja rata di luar fokus pada putaran pertama.

## Hasil: derau AE menenggelamkan segalanya

| kondisi | mean tiap jepretan | rata-rata |
|---|---|---|
| off | 133,14 / 129,18 / 150,13 | 137,5 ± 11,2 |
| on | 122,38 / 152,42 / 147,82 | 140,9 ± 16,1 |

Ragam **di dalam** tiap kondisi (±11–16) jauh melampaui selisih **antar**
kondisi (3,4). Tidak ada efek yang bisa dideteksi.

## Dan inilah sebabnya

```
auto-hdr-enable: 1        <- izin diberikan
ae-bracket-hdr:  Off      <- sakelar eksekusinya TETAP MATI
scene-mode:      auto     <- bukan hdr
```

Nol baris log HDR sepanjang enam penangkapan.

`auto-hdr-enable` hanya membuat HAL **bersedia** memilih HDR sendiri.
Penangkapan HDR yang sesungguhnya menuntut `ae-bracket-hdr: AE-Bracket` atau
`scene-mode: hdr`, dan keduanya **hanya bisa disetel aplikasi** lewat
`Camera.Parameters`. Tidak ada properti untuk keduanya — satu-satunya properti
bertema HDR adalah `auto.hdr.enable` (ini) dan `hdr.outcrop` (kosmetik).

## Kesimpulan Fase 1, sekarang dengan mekanismenya

`persist.camera.auto.hdr.enable` **tidak mungkin** menghasilkan HDR sendirian.
Ia membuka izin untuk pintu yang tidak pernah dibuka siapa pun. Konsisten di
dua adegan yang sangat berbeda, jadi ini sifat sistemnya, bukan kebetulan
adegan.

**Fase 3 bukan sekadar "jalur yang tersisa" — ia satu-satunya jalur yang
mungkin.** Yang perlu disetel aplikasi: `ae-bracket-hdr`, `scene-detect` (ASD),
dan `scene-mode`.

---

# Fase 3 (16 Sep 2026) — rencananya salah, jalurnya ada, HDR akhirnya bekerja

## Rencana Fase 3 saya keliru sejak awal

Rencana menyebut "tambal jalur Camera1 Aperture". **Aperture tidak punya jalur
Camera1.** Ia memakai CameraX dengan implementasi camera2
(`androidx.camera:camera-camera2`) dan mengimpor `android.hardware.camera2.*`.

Baris `CameraService::connect ... Camera API version 1` yang saya jadikan dasar
ternyata bukan bukti aplikasinya memakai Camera1 — itu **CameraService sendiri**
yang membuka HAL1 untuk menyusun metadata shim (terlihat sebagai
`initializeShimMetadata` dan `Camera1 API shim is using parameters:` di
`dumpsys`). Aplikasinya bicara Camera2; CameraService yang menerjemahkan.

Akibatnya `ae-bracket-hdr` **tidak terjangkau dari Aperture**: ia parameter
Camera1, dan Camera2 tidak punya padanannya. Dikonfirmasi di sisi HAL juga --
`setAEBracket` hanya terjangkau lewat `KEY_QC_AE_BRACKET_HDR`, dan satu-satunya
properti bertema HDR tetap `auto.hdr.enable` + `hdr.outcrop`.

## Jalur yang benar: HDR perangkat lunak Open Camera

Open Camera memakai Camera1 sungguhan dan membawa mode pengolahan sendiri:

```
photo_mode_hdr               photo_mode_noise_reduction
photo_mode_dro               photo_mode_expo_bracketing
photo_mode_fast_burst        photo_mode_focus_bracketing
```

Semuanya diolah aplikasi — **tidak bergantung pada `ae-bracket-hdr` milik HAL
sama sekali**, jadi kebuntuan di atas tidak berlaku.

Mode disetel lewat preferensi, tanpa meraba UI:

```
kunci  : preference_photo_mode
nilai  : preference_photo_mode_{std,hdr,noise_reduction,dro,...}
berkas : /data/data/net.sourceforge.opencamera/shared_prefs/
         net.sourceforge.opencamera_preferences.xml
```

## Terbukti bekerja

`IMG_20260916_203517_HDR.jpg` — sufiks `_HDR` dari aplikasinya sendiri, dan log
memperlihatkan `imx179_fill_exposure_array` berulang, yaitu sensor digerakkan
untuk bracketing.

Adegan sama, mode ditukar:

| mode | mean | stddev | entropi | highlight | shadow |
|---|---|---|---|---|---|
| std | 113,52 | 58,53 | 0,7757 | 0,006% | **0,057%** |
| **hdr** | 118,53 | **44,45** | 0,7750 | **0,000%** | **0,000%** |

Pemotongan di **kedua** ujung histogram hilang sama sekali, dan `stddev`
menyusut — kompresi tonal, tanda tangan tonemapping. Bandingkan dengan
`persist.camera.auto.hdr.enable` yang sama sekali tidak mengubah apa pun.

Ongkosnya: pemrosesan ~8–16 detik per foto di perangkat ini. Nyata, dan perlu
disebut.

## Metode uji, tanpa merusak apa pun

Enam siklus properti + empat siklus mode aplikasi, dan hasilnya
`unusable device = 0`, `tombstone = 0`, kedua layanan `running` sepanjang
waktu. Kuncinya: jangan pernah `force-stop` saat kamera sedang menyambung.
Urutan aman: `KEYCODE_HOME` -> tunggu `Device 0 is closed` di `dumpsys` ->
baru ubah apa pun.

## Keadaan akhir perangkat

Open Camera ditinggalkan pada mode HDR. `persist.camera.auto.hdr.enable`
bernilai `0` (sah, bukan kosong).

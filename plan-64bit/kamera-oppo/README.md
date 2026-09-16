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

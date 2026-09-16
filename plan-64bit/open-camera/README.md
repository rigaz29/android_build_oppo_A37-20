# Open Camera di A37: preview jalan, tangkap foto mematikan kamera

Diuji 16 Sep 2026. Open Camera 1.56.2 (F-Droid, versionCode 96, sha256
`ca5672ca8c7174554ca0b07b5b26e505817a05142f571cf2abe67e790c30249c`).

## Yang berhasil

- Terpasang tanpa masalah: minSdk 23, hanya menuntut `android.hardware.camera`
  (tidak menuntut level Camera2), jadi cocok untuk perangkat LEGACY ini.
- **Memilih Camera API 1 sendiri** -- persis yang dibutuhkan HAL1:
  ```
  CameraService::connect call ("net.sourceforge.opencamera", camera ID 0)
      for HAL version default and Camera API version 1
  ```
- **Preview hidup.** Dibuktikan dengan tangkapan layar, bukan dugaan: aliran
  frame terlihat, lengkap dengan slider zoom, tombol rana, ikon galeri.
- UI ter-render penuh: `take_photo`, `exposure`, `exposure_lock`,
  `switch_camera`, `switch_video`, `zoom_seekbar`, `settings`.

## Yang gagal, dan gagalnya keras

Menekan rana **mematikan seluruh tumpukan kamera** sampai reboot:

```
QCamera2HWI: camera_open failed.            (berulang tiap ~5 detik)
init.svc.qcamerasvr = restarting
```

## Uji kontrol yang memisahkan sebab

Tanpa pembanding, temuan di atas tidak bisa dibedakan dari "kamera perangkat
ini memang rapuh". Jadi dari keadaan kamera yang SEHAT dan baru di-boot:

| aplikasi | tangkap foto | keadaan kamera sesudah |
|---|---|---|
| **Aperture** (bawaan) | **berhasil** -- `/storage/emulated/0/DCIM/Camera/2026-09-16-07-23-59-061.jpg` | `running`, 0 galat |
| **Open Camera** | gagal, tidak ada berkas | `restarting`, 3x `camera_open failed` |

Keduanya memakai Camera API 1. Jadi bukan soal API, melainkan jalur tangkap
Open Camera yang tidak dicerna blob HAL1 ini.

## Rantai sebabnya, dari bawah ke atas

1. **Kernel** -- sesi lama dari klien yang crash tidak dibersihkan:
   ```
   camera_v4l2_open : posting of NEW_SESSION event failed
   camera_v4l2_open : Line 607 rc -19        (-19 = ENODEV)
   ```
2. **Blob vendor** -- `QCamera2Factory` memulangkan SUKSES padahal
   `camera_open` gagal, meninggalkan device tanpa `priv` yang sah.
3. **AOSP** -- `CameraDevice::open()` memeriksa `rc != OK` (jadi lolos), lalu
   memanggil `mDevice->ops->set_callbacks` dan mati:
   ```
   Cmdline: /system/bin/mediaserver   SIGSEGV, fault addr 0x40
   #00 camera.msm8916.so          camera_set_callbacks+46
   #01 camera.device@1.0-impl.so  CameraDevice::open+558
   #05 libcameraservice.so        ProviderInfo::addDevice
   #11 libcameraservice.so        CameraService::onFirstRef
   ```
   Karena crash-nya terjadi saat **enumerasi di startup**, mediaserver mati
   lalu dihidupkan lagi lalu mati lagi -- lingkaran, bukan kegagalan sekali.

## Yang bisa kita perbaiki

Blob vendor tidak bisa disentuh. Tetapi langkah 3 milik kita:
`hardware/interfaces/camera/device/1.0/default/CameraDevice.cpp:666-677`
sudah memeriksa `rc != OK`, tetapi TIDAK memeriksa `mDevice` maupun
`mDevice->ops`. Menambahkan pemeriksaan itu mengubah kegagalan HAL menjadi
galat bersih ("kamera tidak tersedia") alih-alih lingkaran crash mediaserver.

Itu berharga terlepas dari Open Camera: HAL apa pun yang berperilaku buruk
tidak lagi bisa membuat perangkat terjebak.

## Kesalahan metode saya, dicatat supaya tidak diulang

Wedge yang PERTAMA saya sebabkan sendiri: mengirim `KEYCODE_CAMERA` saat Open
Camera sedang memegang kamera, sehingga aplikasi bawaan ikut meminta kamera
dan keduanya bentrok. Itu bukan bukti apa-apa tentang Open Camera.

Kesimpulan di atas hanya bertumpu pada uji terakhir, yang dimulai dari kamera
sehat, tanpa aplikasi lain, dan dengan rana ditekan lewat koordinat tombol
`take_photo` yang diambil dari `uiautomator dump` -- bukan keyevent.

## Status perangkat

Open Camera MASIH TERPASANG. Preview-nya aman, tetapi menekan rana akan
mematikan kamera sampai reboot. Sebaiknya dicopot kecuali sedang diuji.

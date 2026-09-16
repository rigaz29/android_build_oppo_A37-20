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

---

# Sisir lengkap jalur kamera, HIDL sampai kernel (16 Sep 2026)

Dilakukan atas permintaan sebelum flash. Empat lapisan.

## KOREKSI PENTING atas penjelasan saya sebelumnya

Saya sempat menulis bahwa kernel meninggalkan "sesi basi" yang tidak pernah
dibersihkan. **Itu tidak benar.** `camera_v4l2_close()` membersihkannya secara
eksplisit, dan komentarnya bahkan menyebut kasus crash:

```c
/* This should take care of both normal close and application crashes */
msm_destroy_session(pvdev->vdev->num);
```

Mekanisme yang sebenarnya adalah **balapan saat startup**, bukan kebocoran.
`msm_post_event()` di `msm.c:702`:

```c
	if (!msm_eventq) {
		...
		return -ENODEV;          /* inilah rc -19 di log */
	}
```

`msm_eventq` diisi ketika **mm-qcamera-daemon** membuka node config
(`msm.c:875`) dan dikosongkan ketika ia mati (`msm.c:827`). Jadi ketika daemon
belum sempat mendaftar -- atau baru saja mati -- setiap `camera_v4l2_open`
memulangkan -ENODEV.

Rantai lengkapnya:

1. mm-qcamera-daemon belum terdaftar -> `msm_post_event` = -ENODEV
2. `camera_v4l2_open` gagal rc -19
3. blob vendor mencatat "camera_open failed" tetapi **memulangkan SUKSES**
4. `CameraDevice::open()` lolos `rc != OK`, memanggil `set_callbacks` pada
   device tak sah -> SIGSEGV
5. mediaserver mati **saat enumerasi startup** -> init menghidupkannya lagi ->
   balapan yang sama terulang -> **lingkaran**

**Fix 1 memutus lingkaran di langkah 4**, dan itulah perbaikan yang esensial.

**Fix 2 tetap benar tetapi BUKAN mekanisme kasus ini.** Kebocoran sesi di
jalur galat `DeviceInfo1` adalah bug sungguhan yang layak diperbaiki, hanya
saja bukan dia yang menyebabkan lingkaran yang kita amati. Saya menyebutnya
"sebab" di commit sebelumnya; itu terlalu jauh.

## Lapisan 1 - `CameraDevice.cpp` (implementasi HIDL HAL1)

| metode | keadaan |
|---|---|
| `open()` | **DIPERBAIKI** -- tidak memvalidasi `mDevice`/`mDevice->ops` |
| `dumpState()` | aman, dijaga `if (mDevice != nullptr)` |
| `closeLocked()` | aman, dijaga `if (mDevice)` |
| sisanya | semua dijaga `if (!mDevice) return OPERATION_NOT_SUPPORTED` |

## Lapisan 2 - `CameraProviderManager.cpp`

- **DIPERBAIKI**: `DeviceInfo1::DeviceInfo1` -- dua `return` sesudah `open()`
  berhasil tanpa `close()`.
- **DITEMUKAN TAPI MATI**: `openHal1Device` memanggil `saveRef()` sebelum
  `open()`, dan hanya memanggil `removeRef()` pada galat transaksi. Kalau
  transaksi sukses tetapi HAL menolak membuka (`status != Status::OK`),
  referensinya bocor.

  **Tidak ditambal, dan itu disengaja**: `saveRef`/`removeRef` keduanya
  dibuka `if (!kEnableLazyHal) return;`, sedangkan `kEnableLazyHal` berasal
  dari `ro.camera.enableLazyHal` yang **tidak disetel** di perangkat ini.
  Jadi keduanya no-op. Menambal kode mati hanya menambah selisih terhadap
  hulu tanpa imbalan.

## Lapisan 3 - kernel

- `camera_v4l2_open()`: tangga `goto` unwinding-nya **benar** --
  `post_fail` -> `command_ack_q_fail` -> `session_fail` -> `vb2_q_fail` ->
  `fh_open_fail`, masing-masing membatalkan tepat apa yang sudah dikerjakan.
- `camera_v4l2_close()`: **benar**, termasuk untuk kasus crash.
- **BUG DITEMUKAN, BELUM DIPERBAIKI**: `pm_relax()` tidak seimbang.

  `pm_stay_awake()` hanya dipanggil di cabang pembukaan PERTAMA
  (`if (!atomic_read(&pvdev->opened))`). Tetapi cabang `else` -- pembukaan
  stream berikutnya -- ketika `msm_create_command_ack_q()` gagal melakukan
  `goto session_fail`, dan label itu memanggil `pm_relax()`.

  Akibatnya wakelock yang dipegang pembukaan pertama DILEPAS padahal
  stream-nya masih terbuka, sehingga perangkat bisa suspend saat kamera masih
  dipakai. Pemicunya sempit (kegagalan alokasi ack-queue pada stream kedua
  atau seterusnya), tetapi bug-nya nyata.

## Lapisan 4 - shim dan properti

`libshim_camera` hanya memasok satu simbol yang hilang untuk
`libmmcamera2_stats_algorithm.so`; tidak menyentuh jalur buka/tutup. Properti
kamera yang kita setel hanya `persist.camera.cpp.duplication=false` dan
`persist.camera.hal.debug.mask=0` -- keduanya tidak berpengaruh ke jalur ini.

## Kesimpulan untuk pertanyaan "aman di-flash?"

Ya. Dua perbaikan yang ada di ROM menyempitkan kerusakan, tidak melebarkannya:
keduanya hanya menambah pemeriksaan dan pembersihan pada jalur GALAT, dan
tidak menyentuh jalur sukses sama sekali. Satu bug tersisa (`pm_relax`) ada di
kernel dan sudah ada sebelum semua ini -- bukan regresi baru.

---

# Terverifikasi di perangkat (16 Sep 2026, ROM `g4517287a0ae`, clean install)

## Hasilnya melampaui perkiraan saya

Saya menulis, dua kali, bahwa perbaikan ini "tidak akan membuat Open Camera
bisa memotret" dan hanya menyempitkan kerusakannya. **Itu ternyata keliru —
Open Camera sekarang berfungsi penuh.**

```
QCamera2HWI: take_picture(...)  mParameters.getSceneMode :0, iso_value = 516
mm-jpeg-intf: process_sensor_data:327] new aperture = 2.275007
MediaProvider: Moving .pending-...IMG_20260916_170936.jpg
             -> /storage/emulated/0/DCIM/OpenCamera/IMG_20260916_170936.jpg
```

Berkasnya nyata: 2448x3264, 1,55 MB, dan gambarnya tajam, fokus tepat,
eksposur benar.

## Uji yang menentukan: kamera bawaan setelahnya, TANPA reboot

Dulu, sekali Open Camera menyentuh rana, seluruh tumpukan kamera mati sampai
perangkat di-boot ulang — Aperture ikut mati. Sekarang:

```
Aperture: Photo capture succeeded: content://media/external/images/media/1000000021
init.svc.qcamerasvr = running
tombstone = 0
camera_open failed = 0
```

| pemeriksaan | sebelum | sesudah |
|---|---|---|
| `qcamerasvr` sesudah rana Open Camera | `restarting` | **`running`** |
| `camera_open failed` | 3+ beruntun | **0** |
| tombstone mediaserver | bertambah | **0** |
| Aperture setelahnya | mati sampai reboot | **berhasil memotret** |
| Open Camera sendiri | tidak menghasilkan berkas | **berkas 1,55 MB** |

## Batas kejujuran soal atribusi

Dua hal berubah sekaligus antara uji yang gagal dan uji ini: **ketiga
perbaikan** DAN **clean install**. Saya tidak bisa memisahkan keduanya
sepenuhnya tanpa memasang ROM lama di atas clean install, dan itu tidak
sepadan dikerjakan.

Yang bisa dikatakan: kegagalan dulu terulang dari keadaan kamera yang SEHAT
sesudah reboot bersih, jadi ia tidak bergantung pada kotoran yang menumpuk.
Itu membuat perbaikan menjadi penjelasan yang jauh lebih masuk akal daripada
clean install semata — tetapi bukan bukti yang terisolasi.

# Crash kamera: mediaserver mati, kedua kamera, sebab di kernel

Ditelusuri 16 Sep 2026 di ROM pemulihan (`05aa3980d`, kernel `g4517287a0ae`).

## Gejala

Kamera dipakai beberapa saat, lalu mediaserver mati berulang dan kamera tidak
bisa dibuka sampai perangkat di-reboot.

**Mengenai KEDUA kamera**, bukan hanya depan — dikoreksi pemilik perangkat
setelah saya sempat menduga ini khas kamera depan.

## Rantai sebabnya, dari bawah

### 1. Kernel: probe sensor gagal

```
MSM-SENSOR-INIT msm_sensor_driver_cmd:80 failed: msm_sensor_driver_probe rc -22
MSM-SENSOR-INIT VIDIOC_MSM_SENSOR_INIT_CFG failed
```

`-22 = EINVAL`. Ini **sebabnya**, bukan akibat.

Perhatikan kontrasnya: saat boot kedua sensor probe dengan sukses
(`imx179 probe succeeded`, `ov5648_front probe succeeded`), dan chromatix
keduanya lengkap (14 berkas imx179, 20 berkas ov5648). Jadi perangkat keras
dan data penyeteleran sehat. Yang gagal adalah init sensor per-sesi yang
diminta HAL.

### 2. HAL: gagal tapi melapor sukses

`QCamera2HardwareInterface::openCamera()` gagal, tetapi
`QCamera2Factory::camera_device_open` tetap memulangkan 0 dengan
`camera_device.priv` NULL.

### 3. AOSP: mati di `set_callbacks`

```
#00 camera.msm8916.so          camera_set_callbacks+46   SIGSEGV @ 0x40
#01 camera.device@1.0-impl.so  CameraDevice::open+640
```

Karena ini terjadi di jalur enumerasi saat mediaserver menyala, kematiannya
berulang: init mediaserver membuka KEDUA kamera untuk metadata.

## Kenapa penjagaan `priv` tidak menyelesaikannya

Sudah dicoba dan **di-revert** (lihat `plan-64bit/open-camera/`). Ia memang
mencegah crash, tetapi blob sudah membocorkan sumber dayanya sendiri
(`mm_jpeg_new_client: num of clients reached limit`), dan `close()` tidak
menolong karena `camera_device_close` mengambil objeknya dari `priv` yang
NULL lalu pulang dengan `BAD_VALUE` tanpa membebaskan apa pun.

Tanpa penjagaan, crash-nya justru berfungsi sebagai pembersih tak sengaja:
proses mati, kernel merebut semuanya, restart berikutnya bersih.

## Kecurigaan berikutnya: lapisan compat 32/64

Seluruh tumpukan kamera perangkat ini **32-bit di atas kernel 64-bit**:

```
/vendor/bin/mm-qcamera-daemon : ELF 32-bit LSB arm
/vendor/lib64/hw/camera.vendor.msm8916.so : TIDAK ADA
```

Jadi setiap ioctl sensor melewati jalur compat. Dan `msm_sensor_driver_probe`
memang membuka dengan cabang compat:

```c
#ifdef CONFIG_COMPAT
    if (is_compat_task()) {
        struct msm_camera_sensor_slave_info32 setting32;
        ...
```

`msm_camera_sensor_slave_info32` memuat
`struct msm_sensor_power_setting_array32` — dan array power setting berisi
pointer, yaitu tempat ketidakcocokan 32/64 paling sering menggigit.

**Tetapi ini BARU HIPOTESIS, dan ada satu hal yang tidak cocok dengannya:**
kesalahan terjemahan struct yang statis akan gagal KONSISTEN, sedangkan yang
kita amati adalah kamera bekerja sesudah boot lalu rusak kemudian. Pola itu
lebih berbau penumpukan keadaan daripada salah terjemah. Jadi jangan
memperlakukan kecurigaan ini sebagai temuan.

## Yang perlu dikerjakan berikutnya

1. Tentukan **apa yang memicu peralihan** dari bekerja ke rusak. Sejauh ini
   selalu muncul setelah beberapa siklus buka/tutup, tetapi belum ada
   pengukuran yang memisahkan jumlah siklus dari peristiwa tertentu.
2. Baru setelah itu menilai apakah compat benar-benar terlibat.

## Cara menguji tanpa merusak

Lihat `plan-64bit/kamera-oppo/` bagian Fase 3. Ringkasnya: jangan pernah
`force-stop` saat kamera sedang menyambung; `KEYCODE_HOME` lalu tunggu
`Device 0 is closed` di `dumpsys` sebelum mengubah apa pun.

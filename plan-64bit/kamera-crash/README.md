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

---

# LANJUTAN: sebab sesungguhnya ada di kode kita (17 Sep 2026)

Seluruh analisis di atas mengejar dari lapisan yang salah. Ini koreksinya.

## Crash-nya BUKAN di blob vendor

Tombstone menunjuk `/system/lib/hw/camera.msm8916.so` — **8,9 KB**. Blob
vendornya `/vendor/lib/hw/camera.vendor.msm8916.so` — **7,4 MB**. Dua berkas
berbeda, dan yang mati adalah yang kecil.

Yang kecil itu dibangun dari **`device/oppo/A37/camera/CameraWrapper.cpp`** —
device tree kita sendiri. Bukan shim simbol melainkan **HAL wrapper**: ia
mengekspor `HAL_MODULE_INFO_SYM`, memuat HAL vendor, dan meneruskan tiap
panggilan lewat `VENDOR_CALL`.

```c
#define VENDOR_CALL(device, func, ...) ({ \
    __wrapper_dev->vendor->ops->func(...); \   /* tanpa memeriksa vendor */ \
})
```

`ops` berada di offset **0x40** dalam `camera_device_t`, karena `hw_device_t`
di depannya 64 byte. Jadi `vendor` NULL menghasilkan `fault addr 0x00000040` —
angka yang muncul di SETIAP tombstone. Tanda tangan, bukan kebetulan.

Blob memulangkan `rv == 0` tanpa mengisi `camera_device->vendor`, dan struktur
itu dialokasikan `malloc` sehingga isinya tak terinisialisasi.

## Perbaikan yang bertahan

| berkas | isi |
|---|---|
| `CameraWrapper.cpp` | `calloc` menggantikan `malloc`; tolak `vendor == NULL` setelah open |
| `CameraWrapper.cpp` | gelung retry juga mengulang saat `rv == 0` tetapi `vendor` NULL |
| `CameraWrapper.cpp` | batas `cameraid` diperbaiki; `get_camera_info` memulangkan galat; kebocoran dan pointer menggantung `fixed_set_params` |
| `CameraWrapper.cpp` | ZSL hanya untuk kamera belakang |
| `CameraProviderManager.cpp` | tutup device HAL1 di jalur galat `DeviceInfo1` |

Kenapa di wrapper dan bukan di `hardware/interfaces`: label `fail:` di
`camera_device_open` membebaskan `camera_device` dan `camera_ops` lalu
menyetel `*device = NULL`. Lapisan HIDL tidak mengalokasikan apa pun sehingga
tidak punya apa-apa untuk dibersihkan — penjagaan di sana justru membocorkan
sumber daya dan mengubah crash yang sembuh-sendiri jadi kerusakan permanen.

## Dua perbaikan yang DI-REVERT, dan pelajarannya

**Penjagaan `priv` di `CameraDevice::open`** — mencegah crash tetapi
membocorkan sumber daya blob (`mm_jpeg_new_client: num of clients reached
limit`) sampai kamera mati permanen melewati clean install.

**`rc = 0` menggantikan `-EINVAL` di `msm_sensor_driver_probe`** — cabang itu
memulangkan sukses tanpa memanggil `msm_sensor_fill_sensor_info()`.
`-EINVAL` milik OPPO ternyata perlindungan, bukan kelalaian.

## Kesalahan diagnosis yang perlu dicatat

Ketika orientasi menjadi 0 dan kedua kamera dilaporkan menghadap belakang,
saya menyalahkan perubahan kernel dan meminta pemilik perangkat mem-flash
kernel revert. **Itu tidak menolong, karena bukan itu sebabnya.**

Penyebabnya justru penjagaan `vendor == NULL` saya sendiri: `DeviceInfo1`
mengisi info kamera HANYA kalau `open()` berhasil, jadi kegagalan bersih saat
enumerasi membuat facing, orientation, dan flash tetap pada nilai baku.

Petunjuk yang seharusnya langsung ditangkap: **`Has a flash unit: false`**
padahal `lm3642` probe sukses di kernel. Tiga nilai baku sekaligus bukan
gejala orientasi melainkan tanda blok info tak pernah dijalankan. Kalau
beberapa nilai salah bersamaan, curigai jalur yang tidak dieksekusi, bukan
nilai yang salah dihitung.

Perbaikannya memakai mekanisme yang sudah ada: gelung retry di wrapper semula
`retry = --retries > 0 && rv`, sehingga kegagalan yang menyamar sebagai sukses
lolos tanpa satu pun percobaan ulang. Enumerasi berlomba dengan
`mm-qcamera-daemon` yang belum mendaftarkan antrean peristiwanya; retry
memberi daemon waktu.

Sesudah perbaikan: `Back/90/flash true` dan `Front/270`.

## Yang masih terbuka

Kamera depan pada mode HDR Open Camera mati di dalam blob:

```
SIGSEGV @ fault addr 0x00000190
#00 camera.vendor.msm8916.so  VDSuperPhoto_AddFrame+0
#01 [anon:.bss]
```

`VDSuperPhoto` jalur multi-bingkai vendor. Hipotesis yang sedang diuji: ZSL
memberi makan jalur itu, dan `params.set("zsl", "on")` dipaksakan pada KEDUA
kamera — baris yang terbawa apa adanya dari impor wrapper Lenovo a6020
(`caff279`), tidak pernah disetel untuk A37. Kini ZSL hanya untuk kamera
belakang.

Ditulis sebagai hipotesis: crash-nya di dalam blob dan tidak bisa ditelusuri
lebih jauh dari luar.

# T-A8 + T-A9 — dua perbaikan laten dari LOS 23.2

Dikerjakan **14 September 2026**, commit device tree `5f422f4`.

---

## 0. Sifat keduanya: laten, bukan perbaikan gejala

Ini yang paling penting untuk dicatat. Di proyek LOS 23.2 kedua bug ini
**fatal** — nol kamera terdeteksi, dan `system_server` mati 16 kali dalam 300
detik. Di LineageOS 20 keduanya **tidak menimbulkan gejala apa pun**.

Itu bukan dugaan. ROM 64-bit yang sedang terpasang sudah membuktikan keduanya
sehat sebelum perubahan ini disentuh:

- `dumpsys media.camera` → `Number of camera devices: 2`, Aperture membuka
  device 0 dan 1, torch jalan
- keempat sensor hidup di Fase 8, nol tombstone

Jadi yang dikerjakan di sini adalah **membuang ranjau**, bukan memadamkan api.
Aturan proyek dipakai terbalik arah: sebelum menyalin patch dari 23.2, buktikan
dulu bug-nya memang ada **dan** apa akibatnya di rilis ini.

---

## 1. T-A8 — `module_api_version` yang salah bentuk

Referensi 23.2: `0add9f8`. Berkas: `camera/CameraWrapper.cpp`.

### 1.1 Kesalahannya

```c
.version_major = 1,
.version_minor = 0,
```

`hardware.h:112` mendefinisikan `version_major` **sebagai** `module_api_version`,
dan `:130` mendefinisikan `version_minor` sebagai `hal_api_version` — keduanya
alias kompatibilitas sumber yang, menurut komentarnya sendiri, akan dibuang.
Jadi baris di atas menyetel:

| medan | nilai lama | nilai benar |
|---|---|---|
| `module_api_version` | `1` | `CAMERA_MODULE_API_VERSION_1_0` = `(1<<8)|0` = **256** |
| `hal_api_version` | `0` | `HARDWARE_HAL_API_VERSION` = **256** |

### 1.2 Kenapa Android 13 tidak peduli

Ditelusuri, tidak ditebak. Seluruh pembacaan nilai itu di pohon kamera A13:

| berkas | baris | bentuk |
|---|---|---|
| `CameraModule.cpp` | 259 | `>= CAMERA_MODULE_API_VERSION_2_4` |
| `CameraModule.cpp` | 280 | `< CAMERA_MODULE_API_VERSION_2_0` |
| `CameraModule.cpp` | 371 | `>= CAMERA_MODULE_API_VERSION_2_0` |
| `CameraModule.cpp` | 393 | `< CAMERA_MODULE_API_VERSION_2_3` |
| `CameraModule.cpp` | 419, 439, 471 | `>= 2_1`, `>= 2_4`, `>= 2_5` |
| `LegacyCameraProviderImpl_2_4.cpp` | 353 | `>= CAMERA_MODULE_API_VERSION_2_0` |

Semuanya `>=` atau `<` terhadap **512 ke atas**, dan 1 maupun 256 sama-sama di
bawahnya — sisi yang sama, hasil yang sama. Satu-satunya perbandingan `==` di
seluruh `hardware/interfaces/camera/` dan `frameworks/av/services/camera/`
adalah `LegacyCameraProviderImpl_2_4.cpp:246` terhadap `2_5`. Dan
`getHalApiVersion()` (`CameraModule.cpp:566`) punya **nol pemanggil** — hanya
deklarasi di header dan definisinya.

Karena itu perubahan ini terbukti netral perilaku di A13.

### 1.3 Kenapa Android 16 sangat peduli

Di sana `device@1.0` sudah tidak ada, jadi HAL1 harus lewat adapter HAL3on1,
yang memilih cara membuka device dari nilai yang sama persis:

```
== CAMERA_MODULE_API_VERSION_1_0 (256)  ->  methods->open()
>= CAMERA_MODULE_API_VERSION_2_3 (515)  ->  open_legacy()
selain itu                              ->  -EINVAL
```

Dengan nilai `1` keduanya meleset → `Failed to open HAL1 device` →
`Camera info query failed!` → `ICameraProvider/legacy/0` tidak pernah naik →
nol kamera. Backend-nya sendiri sehat sepanjang waktu.

### 1.4 Verifikasi di biner, bukan di sumber

Simbolnya bernama **`HMI`** (itulah `HAL_MODULE_INFO_SYM` setelah `#define`),
di seksi `.data`, 176 byte:

```
tag                = 0x48574d54   'H','W','M','T'  (HARDWARE_MODULE_TAG)
module_api_version = 256          (dulu 1)
hal_api_version    = 256          (dulu 0)
```

`camera.msm8916.so` terpasang di `system/lib/hw/`, ELF 32-bit ARM — sesuai
`prefer32`, karena di port 64-bit ini kamera menaut ke `mediaserver`.

---

## 2. T-A9 — off-by-one batas `strlcpy`

Referensi 23.2: `6de8c07`. Berkas: `sensors/NativeSensorManager.cpp`,
fungsi `getSensorListInner()`. Nomor barisnya **sama persis** dengan di 23.2.

```c
857   strlcpy(filename, de->d_name, PATH_MAX - strlen(SYSFS_CLASS));
858   nodename = filename + strlen(de->d_name);
859   *nodename++ = '/';
862   strlcpy(nodename, node_map[i].node,
              PATH_MAX - strlen(SYSFS_CLASS) - strlen(de->d_name));   // <- kurang -1
```

`SYSFS_CLASS` = `"/sys/class/sensors/"` = **19 karakter** (`sensors/sensors.h:48`),
`devname[PATH_MAX]` = 4096 (`:834`).

Ruang nyata di `nodename` adalah `PATH_MAX - 19 - strlen(d_name) - 1`, karena
`'/'` di baris 859 sudah memakan satu byte. Batas di baris 862 tidak
menghitungnya. Baris 857 sendiri sudah pas: `4096 - 19 = 4077`.

Aritmetikanya cocok persis dengan pesan abort 23.2: dengan
`strlen(d_name) = 12`, ruang nyata 4064 sementara yang diklaim 4065. Dan
perangkat ini memang punya dua nama sensor tepat 12 karakter — **`lis3dh-accel`**
dan **`mmc3416x-mag`**.

### Kenapa tidak menggigit di Android 13

Tidak pernah ada luapan sungguhan: semua entri `node_map` berupa string pendek
(`enable`, `poll_delay`, dan sebangsanya), jadi `strlcpy` tidak pernah benar-benar
mencapai batasnya. Yang salah adalah **batas yang diklaim**.

FORTIFY Android 16 memakai `__builtin_dynamic_object_size`, sehingga sanggup
menghitung offset runtime ini dan menolaknya di muka:

```
FORTIFY: strlcpy: prevented 4065-byte write into 4064-byte buffer
  #02 sensors.msm8916.so  NativeSensorManager::getSensorListInner()+242
  #01 libc.so             __strlcpy_chk+32
```

FORTIFY Android 13 belum sekuat itu dan tidak menangkapnya — sesuai dengan
keempat sensor yang terbukti jalan tanpa tombstone di Fase 8.

`sensors.msm8916.so`: ELF 32-bit ARM, 53.972 byte.

---

## 3. Belum diverifikasi di perangkat

Seperti T-A3, keduanya **belum masuk ROM mana pun**. Karena sifatnya laten,
verifikasi setelah flash bukan mencari perbaikan melainkan memastikan **tidak
ada yang rusak**:

```bash
adb shell dumpsys media.camera | head -8      # harus tetap 2 device
adb shell dumpsys sensorservice | head -20    # harus tetap 4 sensor
adb logcat -d -b crash | tail                 # harus tetap kosong
```

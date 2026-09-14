# T-A3 — HAL thermal 2.0

Dikerjakan **14 September 2026**, commit device tree `ea262bb`.

---

## 1. Kenapa dikerjakan

A37 tidak punya HAL thermal **sama sekali** — nol sebutan di `device.mk`.
Akibatnya seluruh API termal framework mati:

- `PowerManager.getCurrentThermalStatus()`
- listener status termal (`addThermalStatusListener`)
- thermal headroom (`getThermalHeadroom`)

Terukur di perangkat sebelum perubahan: `dumpsys thermalservice` memuat **enam
listener terdaftar** yang menunggu data yang tidak pernah datang.

**Yang TIDAK dikerjakan HAL ini: proteksi panas.** Mitigasi tetap sepenuhnya di
kernel — tiga thread `msm_thermal` (`hot`/`fre`/`the`) yang terlihat di `ps -A`.
Yang ditambahkan murni **pelaporan status ke framework**.

---

## 2. HIDL 2.0, bukan AIDL — dan di Android 13 itu jalur utama

Di Android 16 (proyek LOS 23.2) HIDL sudah jadi jalur mundur. Di Android 13
kebalikannya. `ThermalManagerService.java`:

| baris | isi |
|---|---|
| 141 | `ThermalHal20Wrapper` — **dicoba pertama** |
| 146 | `ThermalHal11Wrapper` — mundur |
| 151 | `ThermalHal10Wrapper` — mundur |

Tidak ada `ThermalHalAidlWrapper` sama sekali di rilis ini; ia baru muncul di
Android 14. Jadi HIDL 2.0 di sini **lebih kuat** posisinya ketimbang di 23.2.

---

## 3. Sumber berkas

`hidl/thermal/` (15 berkas) diambil dari device tree **a6010** — msm8916, SoC
sama — lewat cabang `lineage-23` repo ini:

```bash
git checkout gh/lineage-23 -- hidl/thermal configs/thermal_info_config.json
```

Pendaftaran lewat **VINTF fragment** di dalam modul
(`android.hardware.thermal@2.0-service.msm8916.xml`, mendeklarasikan versi 1.0
dan 2.0), bukan suntingan `manifest.xml`.

`sepolicy/file_contexts` butuh entri sendiri: AOSP hanya melabeli
`android.hardware.thermal@1.[01]-service` dan `thermal-service.example`
(`system/sepolicy/vendor/file_contexts:115-116`), jadi biner `@2.0` kita tidak
terlabeli tanpa itu.

---

## 4. `thermal-engine.conf` sengaja TIDAK disalin

Berkas itu ikut dari a6010, tetapi daemon pembacanya
`/vendor/bin/thermal-engine` **tidak ada di A37** — bukan di blob vendor
(`find proprietary -iname "*thermal*"` hanya memberi `libthermalclient.so`),
bukan pula di ROM yang sedang berjalan. HAL sendiri hanya membaca
`thermal_info_config.json` lewat properti `vendor.thermal.config`
(`thermal-helper.cpp:52`), dan tidak menaut `libthermalclient`.

Menyalinnya hanya menambah berkas dengan **nol pembaca**. Ini penerapan aturan
proyek: *"dibaca" bukan "dipakai"*.

---

## 5. Config sensor diukur ulang, bukan disalin mentah

Inilah bagian terpenting. Config a6010 memuat tebakan yang **salah untuk A37**.

### 5.1 Pengukuran

Beban 4 core, 70 detik, di perangkat sungguhan:

| zona | tipe kernel | idle | 70 s | delta |
|---|---|---|---|---|
| zone0–4 | `tsens_tz_sensor0/1/2/4/5` | 37–40 °C | 53–62 °C | **+20** |
| zone5 | `pm8916_tz` | 35,9 | 46,6 | **+10,7** |
| zone6 | `battery` | 32,9 | 33,6 | +0,7 |
| zone7 | `bms` | 42,8 | 43,6 | **+0,8** |

Satuannya memang campur — itu sebabnya `Multiplier` berbeda: tsens derajat
bulat (`1`), sisanya milli-derajat (`0.001`). `tsens_tz_sensor3` memang tidak
ada di perangkat ini.

### 5.2 Dua fakta framework yang menentukan segalanya

`ThermalManagerService.java`:

- **`:205`** — dalam `onTemperatureMapChangedLocked()`, **hanya** sensor
  bertipe `SKIN` yang menaikkan status termal global. Tipe lain tidak ikut
  sama sekali.
- **`:269-288`** — `shutdownIfNeeded()`: status `THROTTLING_SHUTDOWN` pada tipe
  `CPU`/`GPU`/`NPU`/`SKIN` memanggil `powerManager.shutdown(SHUTDOWN_THERMAL_STATE)`,
  dan `BATTERY` memanggil `shutdown(SHUTDOWN_BATTERY_THERMAL_STATE)`.
  **`USB_PORT` tidak ada di switch** — dan memang nol pembaca di seluruh
  `services/core/` dan `core/java/`.

### 5.3 Tiga koreksi

| # | perubahan | alasan terukur |
|---|---|---|
| 1 | `bms`: `SKIN` → `UNKNOWN`, semua ambang `NAN` | Naik cuma **0,8 °C** di bawah beban penuh. Sebagai `SKIN` ia akan mengunci status global di `NONE` selamanya — HAL terpasang tetapi tidak melaporkan apa pun. Ia juga **bukan** suhu baterai: baterai sungguhan 32,9 sementara `bms` 42,8, sepuluh derajat lebih panas, karena itu die BMS/PMIC |
| 2 | `pm8916_tz`: `USB_PORT` → `SKIN`, ambang `[–, –, 55, 62, 70, 80, –]` | Satu-satunya sensor tingkat-papan yang responsif (+10,7 °C), dan tipe lamanya toh nol pembaca |
| 3 | `SHUTDOWN` dicabut di semua sensor proxy: 4× tsens CPU (dulu **85**) dan `pm8916_tz` (dulu **120**) | Konsisten dengan sifat HAL ini — mitigasi milik kernel. Puncak terukur 62 °C pada tsens berarti beban berkelanjutan di hari panas bisa menyentuh 85 dan **mematikan perangkat tanpa sebab nyata** |

`battery` **mempertahankan** `SHUTDOWN` 70 °C: pembacaan langsung dan akurat
(cocok persis dengan `/sys/class/power_supply/battery/temp` = `329`), bergerak
hanya 0,7 °C di bawah beban, dan baterai 70 °C memang peristiwa keselamatan.

Trip kernel sendiri jauh di atas rentang nyata, jadi tidak ada jaring pengaman
ganda yang hilang: `pm8916_tz` critical 145 °C / hot 125 / hot 105; zona tsens
tidak punya trip shutdown sama sekali (hanya `configurable_hi/low`).

### 5.4 Hasil akhir config

```
tsens_tz_sensor0/1/4/5  CPU      ×1      [–, –, 65, 70, 75, 80, –]
tsens_tz_sensor2        GPU      ×1      [–, –,  –, 62,  –,  –, –]
pm8916_tz               SKIN     ×0.001  [–, –, 55, 62, 70, 80, –]
battery                 BATTERY  ×0.001  [–, –,  –,  –,  –, 50, 70]
bms                     UNKNOWN  ×0.001  [–, –,  –,  –,  –,  –, –]
```

Urutan `NONE, LIGHT, MODERATE, SEVERE, CRITICAL, EMERGENCY, SHUTDOWN`.
Parser menolak ambang yang menurun (`config_parser.cpp:128-140`), dan
monotonisitas keempat baris sudah diuji.

`UNKNOWN` sah: `getTypeFromString()` (`config_parser.cpp:41`) menelusuri
`hidl_enum_range<TemperatureType>` dan mencocokkan `toString()`, sementara
`UNKNOWN = -1` ada di `thermal/1.0/types.hal:22`.

---

## 6. Verifikasi build

```
biner   vendor/bin/hw/android.hardware.thermal@2.0-service.msm8916
        ELF 64-bit LSB pie executable, ARM aarch64        106.464 byte
rc      vendor/etc/init/…rc                                  260 byte
vintf   vendor/etc/vintf/manifest/…xml                       349 byte
config  vendor/etc/thermal_info_config.json                3.067 byte  (0644)
```

`rc` menjalankannya sebagai `class hal`, `user system`, mendeklarasikan
`interface` untuk `@1.0::IThermal` dan `@2.0::IThermal`.

---

## 7. Hasil di perangkat (14 September 2026)

Diverifikasi setelah flash. **Berfungsi penuh.**

```
HAL Ready: true
ThermalHAL 2.0 connected: yes
```

Delapan suhu mengalir ke framework, dengan tipe persis seperti yang ditetapkan
dari pengukuran:

```
Temperature{mValue=36.7,  mType=2,  mName=battery}       BATTERY
Temperature{mValue=46.7,  mType=-1, mName=bms}           UNKNOWN   <- bukan lagi SKIN
Temperature{mValue=42.28, mType=3,  mName=pm8916_tz}     SKIN      <- penggantinya
Temperature{mValue=47.0,  mType=0,  mName=tsens_tz_sensor0}  CPU
...
Thermal Status: 0
```

Ambang yang dilaporkan HAL juga persis seperti keputusan §5.3 — slot ketujuh
(`SHUTDOWN`) `NaN` di seluruh sensor proxy, dan hanya `battery` yang memilikinya:

```
{.type = BATTERY, .name = battery,   .hotThrottlingThresholds = [NaN,NaN,NaN,NaN,NaN,50.0,70.0]}
{.type = UNKNOWN, .name = bms,       .hotThrottlingThresholds = [NaN,NaN,NaN,NaN,NaN,NaN,NaN]}
{.type = SKIN,    .name = pm8916_tz, .hotThrottlingThresholds = [NaN,NaN,55.0,62.0,70.0,80.0,NaN]}
{.type = CPU,     .name = tsens_*,   .hotThrottlingThresholds = [NaN,NaN,65.0,70.0,75.0,80.0,NaN]}
```

Dan yang paling penting: **listener kini menerima data**. Sebelum T-A3,
`dumpsys thermalservice` memuat enam listener terdaftar menunggu data yang tidak
pernah datang. Sekarang 2 `ThermalEventListeners` + 2 `ThermalStatusListeners`
terhubung ke HAL yang hidup.

---

## 7.6 Ambang SKIN dikoreksi — tebakan saya terbantah

Peringatan termal muncul **tiap kali kamera dibuka**. Sumbernya Aperture:
`CameraActivity.kt:437-440` menampilkan snackbar mulai
`THERMAL_STATUS_MODERATE`, lewat `PowerManager.addThermalStatusListener`.

Sebelum T-A3 perangkat ini tidak punya HAL thermal sama sekali, sehingga
`getCurrentThermalStatus()` selalu `NONE` dan peringatan itu mustahil muncul.
**Jadi penyebabnya memang perubahan ini.**

Ambang lama `[–, –, 55, 62, 70, 80, –]` adalah **tebakan**, diambil dari
pengukuran 70 detik saja (§5.1: 35,9 → 46,6 °C). Pengukuran yang lebih panjang
membantahnya:

| | |
|---|---|
| idle, charger tercolok | 35 – 42 °C |
| beban 4 inti, mendatar | **57 °C** (melewati 55 hanya dalam 60 detik) |
| trip kernel sensor ini | hot 105 °C, critical **145 °C** |

Framework meneriakkan MODERATE saat perangkat keras belum mendekati batasnya,
dengan margin hanya **2 °C** di atas dataran beban penuh.

Ambang baru **`[–, –, 65, 72, 80, 90, –]`** memberi ~8 °C di atas dataran
terukur.

### Sifat sensor yang sebelumnya luput

`pm8916_tz` adalah **die PMIC**, dan PMIC menangani pengisian daya. Terukur saat
CPU idle dengan charger tercolok, ia duduk ~9 °C di atas suhu baterai, dan kurva
pendinginannya berhenti di 42 °C — bukan kembali ke 35 °C:

```
detik    pm8916   battery
    0     48,3      39,5
  120     44,0      38,6
  240     42,1      38,0    <- masih turun pelan
```

Jadi ia **bukan proxy kulit yang murni**; sebagian panasnya datang dari mengisi
daya, bukan dari beban. Itu tetap diterima karena ia satu-satunya sensor
tingkat-papan yang responsif di perangkat ini (§5.1), tetapi sekarang tercatat.

Ambang tsens CPU **sengaja tidak disentuh** walau juga terlewati saat beban
penuh (65/70 versus puncak 70). Sensor bertipe CPU tidak menentukan status
termal global — hanya SKIN yang menentukannya
(`ThermalManagerService.java:205`) — sehingga tidak memicu peringatan apa pun,
dan slot `SHUTDOWN`-nya sudah `NAN` sejak awal.

Masuk ROM `20260914_164631`, dan **terbukti di perangkat** 14 September 2026.

Kamera dibuka 60 detik pada perangkat yang sedang hangat:

```
detik    pm8916(SKIN)   tsens0   Thermal Status
    0       57,1 C        65        0
   30       59,0 C        68        0
   45       60,1 C        70        0     <- puncak
   60       59,6 C        69        0
```

Nol pemanggilan snackbar termal di logcat. Dengan ambang lama 55 C, **seluruh
rentang itu** akan berstatus MODERATE — persis gejala yang dilaporkan.

⚠️ Marginnya memang tidak lebar: puncak 60,1 C versus ambang 65 C, jadi sekitar
5 C. Perangkat saat pengukuran itu sedang hangat (baru factory reset, dexopt
GApps, dan beberapa uji beban). Di ruangan panas dengan perekaman panjang ia
masih bisa menyentuh 65 — tetapi itu memang kondisi yang pantas diperingatkan,
bukan pemakaian biasa.

---

## 8. Perintah verifikasi ulang

T-A3 **belum masuk ROM mana pun**. Setelah ROM berikutnya di-flash:

```bash
adb shell getprop | grep thermal
adb shell lshal | grep -i thermal          # harus binderized, bukan N/A
adb shell dumpsys thermalservice | head -40
adb shell cmd thermalservice override-status 3   # uji listener tanpa memanaskan
adb shell cmd thermalservice reset
```

Yang harus terlihat: `dumpsys thermalservice` memuat **daftar suhu**, bukan
hanya daftar listener; `pm8916_tz` muncul sebagai `SKIN`; dan status global
ikut naik saat perangkat benar-benar panas.

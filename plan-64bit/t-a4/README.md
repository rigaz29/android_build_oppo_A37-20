# T-A4 — Widevine DRM L3

Dikerjakan **14 September 2026**. Device tree `3b4a37d`, vendor tree `3978bf9`.

Item Tier A terbesar, dan satu-satunya yang rencananya sendiri menyuruh
**mengukur dulu sebelum menyalin**. Pengukuran itu membalikkan dua keputusan
desain proyek LOS 23.2.

---

## 1. Titik awal

Ketiga blob sudah lama ada di vendor tree tetapi **sengaja tidak dipasang**:

```
vendor/bin/hw/android.hardware.drm@1.1-service.widevine
vendor/etc/init/android.hardware.drm@1.1-service.widevine.rc
vendor/lib/libwvhidl.so
```

Alasannya tercatat di `A37-vendor.mk`: `libwvhidl.so` menuntut runtime protobuf
lama. `manifest.xml` bahkan memuat catatan bahwa instance `widevine` "dibuang
bersama blob-nya".

Ketiganya **32-bit**, sesuai build dual-arch ini.

---

## 2. Pengukuran yang membatalkan harapan

`PLAN-64BIT.md` §6 memperkirakan: *"Pohon Android 13 memakai protobuf yang jauh
lebih tua, jadi kemungkinan besar sebagian besar simbol itu masih ada dan
pekerjaannya jauh lebih ringan — mungkin nol."*

Pohon ini memakai protobuf **3.9.1** (`GOOGLE_PROTOBUF_VERSION 3009001`),
bukan 25.8 seperti pohon Android 16. Hasil pengukurannya:

| | simbol dituntut `libwvhidl.so` | hilang |
|---|---|---|
| protobuf 25.8 (LOS 23.2) | 55 | **21** |
| protobuf 3.9.1 (LOS 20) | 55 | **12** |
| protobuf 3.0.0 (dibangun) | 55 | **0** |

Jadi "mungkin nol pekerjaan" **gugur** — tetapi kerusakannya memang lebih
ringan, dan kedua belas simbol yang hilang mengelompok persis seperti yang
diramalkan catatan 23.2:

| kelompok | simbol |
|---|---|
| dibuang protobuf setelah ~3.5 | `empty_string_`, `empty_string_once_init_`, `InitEmptyString`, `GoogleOnceInitImpl` |
| tanda tangan berubah | `Arena::AddListNode`, `Arena::AllocateAligned(type_info const*, uint32)`, `ArenaStringPtr::AssignWithDefault` |
| hilang/berubah | `CodedOutputStream::VarintSize64`, `VarintSize32Fallback`, `LazyStringOutputStream` ctor + dtor |
| hanya soal visibilitas | `MessageLite::~MessageLite()` |

Karena `Arena` baru ada sejak 3.0 sementara `empty_string_`/`GoogleOnceInit`
baru dibuang setelah ~3.5, versi yang cocok ada di antaranya — sama seperti
kesimpulan 23.2. **3.0.0** dipakai, sezaman dengan HAL `drm@1.1` (Android 9).

`protobuf26/` (334 berkas, 4,2 MB) disalin dari cabang `lineage-23`, sudah
termasuk perbaikan ABI vtable dari commit `0af1a56`.

> ⚠️ **Jebakan alat yang tertangkap di sini.** Hitungan pertama saya keliru
> menyebut 28 simbol. Penyebabnya: `rtk grep` menulis keluaran **terkondensasi**
> ke berkas, jadi `rtk grep ... > berkas.txt` memotong data. RTK untuk dibaca
> manusia; pipeline data harus pakai `grep` biasa.

---

## 3. Dua keputusan 23.2 yang dibatalkan pengukuran

Keduanya berakar pada **satu fakta perangkat**: LineageOS 20 di A37 berjalan
dengan konfigurasi linker `[legacy]` — **satu namespace** untuk semuanya.

```
dir.legacy = /system ; /system/system_ext ; /system/product ; /vendor ; /odm ; /data

namespace.default.isolated = false
namespace.default.search.paths = /system/${LIB}
                              += /system/system_ext/${LIB}
                              += /system/product/${LIB}
                              += /vendor/${LIB}
                              += /odm/${LIB}
```

Tidak ada bagian `[vendor]`. Dan memang: sebelum T-A4, **tidak ada satu pun
proses dari `/vendor/bin/hw`** yang berjalan di ROM ini — semua HAL passthrough.

### 3.1 `android.hardware.drm@1.1.vendor` TIDAK diperlukan

Di LOS 23.2 modul ini **wajib**; tanpanya servis crash-loop tiap 5 detik dengan
`library "android.hardware.drm@1.1.so" not found`, karena namespace linker
vendor tidak bisa melihat `/system/lib`.

Di sini tidak ada pemisahan itu. Audit penutupan DT_NEEDED gabungan servis +
`libwvhidl.so` + protobuf terhadap ROM hasil build: **18 pustaka, nol hilang**,
termasuk `libhidltransport.so` dan `libhwbinder.so` yang Android 13 masih simpan
sebagai stub.

### 3.2 `install_symlink` di `/vendor/lib` TIDAK cukup

Ini kebalikannya — namespace tunggal justru **merugikan** di sini.

LOS 23.2 memasang modul dengan nama unik lalu menunjuknya dengan
`install_symlink /vendor/lib/libprotobuf-cpp-lite.so`. Itu bekerja karena
namespace vendor **tidak pernah melihat** `/system/lib`.

Di LineageOS 20, `/system/lib` dicari **paling depan**, dan protobuf 3.9.1 sudah
terpasang di sana dengan nama polos yang sama persis. Symlink di `/vendor/lib`
akan terbayangi, dan blob tetap menaut versi yang salah.

**Yang dipakai sebagai gantinya:**

1. `stem: "libprotobuf-cpp-lite"` pada modul Soong — aman di sini karena tanpa
   `BOARD_VNDK_VERSION` tidak ada varian `.vendor` protobuf yang membentur
   direktori `symbols` (itulah yang dulu memaksa 23.2 memakai symlink).
2. `setenv LD_LIBRARY_PATH /vendor/lib` di init `.rc` blob.

Ketiga dasarnya diverifikasi di sumber Android 13, bukan diasumsikan:

| fakta | bukti |
|---|---|
| init mendukung opsi `setenv` | `system/core/init/service_parser.cpp:607` |
| LD_LIBRARY_PATH berprioritas **tertinggi** | `bionic/linker/linker.cpp:1080` |
| dihormati kecuali AT_SECURE | `bionic/linker/linker_main.cpp:349` |
| servis bukan setuid (`user media`, init setuid sebelum exec) | `.rc` blob |

**Efek sampingnya diukur, bukan diperkirakan.** Dari 18 dependensi itu, tepat
**satu** ada di `/vendor/lib` sekaligus `/system/lib` — `libprotobuf-cpp-lite.so`
itu sendiri. Sisanya hanya ada di satu tempat, jadi mendahulukan `/vendor/lib`
tidak membayangi apa pun yang lain.

---

## 4. Perbaikan ABI vtable terbawa utuh

Ini cacat yang di 23.2 baru muncul setelah servisnya benar-benar dipanggil, dan
sifatnya milik **blob**, bukan milik versi Android — jadi tetap berlaku di sini.

Vtable `drm_metrics::Attributes` di `libwvhidl.so` punya **16 slot**. Protobuf
modern mendeklarasikan 17 virtual (ada `InternalSerializeWithCachedSizesToArray`
di slot 16), sehingga implementasi bawaan memanggil slot di luar batas vtable
Widevine, membaca sampah, dan mendarat di alamat 0.

Diverifikasi di pustaka hasil build LOS 20:

```
_ZTVN6google8protobuf11MessageLiteE   72 byte
  = 2 kata header (32-bit) + 16 slot   -> COCOK
```

---

## 5. Integrasi

| berkas | perubahan |
|---|---|
| `protobuf26/` | 334 berkas, protobuf 3.0.0; `Android.bp` diberi `stem` + catatan pengukuran LOS 20 |
| `device.mk` | `PRODUCT_PACKAGES += libprotobuf-cpp-lite-26-a37` + alasan kedua jebakan tidak berlaku |
| `manifest.xml` | `@1.1::ICryptoFactory/widevine` dan `@1.1::IDrmFactory/widevine`, lewat **fqname dalam satu blok** |
| `sepolicy/file_contexts` | label `hal_drm_default_exec` untuk biner `@1.1-service.widevine` |
| `rootdir/etc/init.qcom.rc` | `mkdir /data/vendor/mediadrm 0700 media media` di `post-fs-data` |
| `A37-vendor.mk` (vendor) | tiga blob dipasang |
| `.rc` blob (vendor) | `setenv LD_LIBRARY_PATH /vendor/lib` |

**fqname dalam satu blok itu wajib**: `drm` 1.0 dan 1.1 punya major version yang
sama, dan dua blok `<hal>` bernama sama dengan major sama membuat
`HalManifest::shouldAdd` menolak **seluruh** manifest perangkat dengan `-22`. Di
proyek 23.2 kekeliruan itulah yang dulu membuat perangkat berhenti di logo OPPO.

**Catatan jujur soal sepolicy:** SELinux perangkat ini **Permissive**
(`getenforce`). Label yang ditambahkan itu soal kebenaran dan kesiapan mode
enforcing, **bukan** syarat agar servisnya jalan sekarang.

Klaim path L3 diverifikasi langsung di blob — `strings libwvhidl.so` memuat
`/data/vendor/mediadrm/IDM`, `/L3/`, dan
`Could not create base directories for Level3FileSystem, error: %s`.

---

## 6. Hasil audit build

`./audit-widevine.sh` — **LULUS**, 13 dari 13:

```
berkas terpasang    4/4
arch 32-bit         3/3
protobuf 3.0.0 kita (191.752 byte) != 3.9.1 pohon (351.400 byte)
simbol protobuf     55/55, nol hilang
setenv LD_LIBRARY_PATH ada di .rc terpasang
fqname widevine ada, dan hanya 1 blok hal drm
label sepolicy ada di vendor_file_contexts
```

---

## 7. Belum diverifikasi di perangkat

T-A4 belum masuk ROM mana pun. Servis ini akan menjadi **proses
`/vendor/bin/hw` pertama** di ROM ini, jadi verifikasinya lebih penting dari
biasa — jalur namespace linker untuk biner vendor belum pernah dilewati sama
sekali di sini.

```bash
adb shell getprop init.svc.drm-widevine-hal-1-1     # harus "running"
adb shell lshal | grep -i widevine                  # @1.1::IDrmFactory/widevine
adb shell ls -ld /data/vendor/mediadrm              # 0700 media media
adb shell 'cat /proc/$(pidof android.hardware.drm@1.1-service.widevine)/maps \
           | grep protobuf'                         # HARUS /vendor/lib, bukan /system/lib
adb logcat -d | grep -iE "widevine|wvcdm|oemcrypto|CANNOT LINK"
adb shell dumpsys media.drm                         # level keamanan L3
```

Pemeriksaan `/proc/<pid>/maps` itu yang paling menentukan: ia membuktikan
`LD_LIBRARY_PATH` benar-benar memenangkan protobuf 3.0.0 atas 3.9.1.

Yang masih bisa gagal walau build bersih: DRM Info / Netflix L3 sungguhan,
`OEMCrypto_Initialize`, dan pembuatan device certificate pertama kali.

# Fase 5 — RIL 32-bit

Dikerjakan **13 September 2026**. **Selesai di sisi build.**

---

## 1. Hasil

```
patches/official/hardware_ril/0001-A37-rild-dipaksa-32-bit-untuk-build-64-bit.patch
  hardware/ril/rild/Android.mk   + LOCAL_MULTILIB := 32      (terdaftar T1)

device/oppo/A37 @ e604154
  device.mk   komentar VNDK diperbarui -- lihat §4
```

---

## 2. Di sini ada pilihan nyata, berbeda dari kamera

Kamera tidak punya pilihan: HAL-nya memang hanya ada 32-bit. **RIL punya** —
Fase 0 menempatkan seluruh blob RIL di kelompok **dual-arch**, dan pohon vendor
benar-benar mengirim `libril-qc-qmi-1.so` di `vendor/lib` *dan* `vendor/lib64`.

Tetap dipilih 32-bit, karena tiga hal sudah menunjuk ke sana dan ketiganya
diverifikasi, bukan diasumsikan:

| | |
|---|---|
| `device.mk:870-871` | `rild.libpath` **dan** `vendor.rild.libpath` = `/system/vendor/lib/libril-qc-qmi-1.so` — path **32-bit**. `rild` 64-bit yang men-`dlopen` berkas itu gagal seketika (*wrong ELF class*) |
| `BoardConfig.mk:490` | pemetaan shim lewat path **absolut** `/system/vendor/lib/libril-qc-qmi-1.so\|libril_shim.so`. Mengarahkan libpath ke `lib64` tidak menolong — pemetaannya tidak ikut pindah |
| blob itu sendiri | `readelf` pada berkasnya: menuntut `android::AudioSystem::setErrorCallback(void(*)(int))`, `setParameters`, `getParameters` — dihapus dari `libaudioclient` sejak Android 11. `libril_shim` yang menyediakannya |

Ditambah bukti dari luar: set 32-bit **terbukti** — ROM LOS 20 32-bit yang
sekarang dipakai punya IRadio slot1/slot2 terdaftar, SIM LOADED, LTE. Set 64-bit
dari LOS 17.1 belum pernah diuji di perangkat ini, dan di proyek LOS 23.2 ia
**gagal**: `ril-daemon0 exited with status 1` berulang, IRadio tak pernah
terdaftar, `com.android.phone` menggantung, bootloop.

**Patch ditandai T1, bukan T0.** Ia prasyarat *fungsi* (telepon/SMS/data), bukan
prasyarat *build*: tanpa patch ini build tetap sukses dan RIL diam-diam mati di
perangkat. Itu justru yang membuatnya berbahaya kalau hilang saat `repo sync`.

---

## 3. Penjaga

```
m rild libril libril_shim                  build completed successfully (03:17)

rild                ELF 32-bit LSB pie executable, ARM, 9124 byte   <- yang menentukan
varian 64-bit rild  TIDAK ADA di mana pun (hanya obj_arm + system/vendor/bin/hw)
libril.so           vendor/lib   ELF 32-bit
libril_shim.so      vendor/lib   ELF 32-bit
target libpath      /system/vendor/lib/libril-qc-qmi-1.so   ELF 32-bit

closure DT_NEEDED blob RIL 32-bit   30 diperiksa, 3 belum terpasang (§4)
pustaka yang HANYA tersedia 64-bit  NOL
```

Baris terakhir itu penjaga khusus dual-arch: ia mencari pola "ada versi 64-bit
tapi tidak ada 32-bit" — persis pola yang menjebak proyek 23.2 sepanjang fase-5
mereka. Nihil di sini.

---

## 4. Temuan: VNDK yang tidak ditegakkan menyelamatkan dua rantai sekaligus

Audit closure menyisakan tiga: `libsqlite.so`, `libmedia.so`, `libxml2.so`.

Dua aman — `vendor_available: true` + `vndk` di `Android.bp` masing-masing.
**`libmedia` tidak punya `vendor_available` sama sekali**, dan di proyek LOS 23.2
celah itulah yang memaksa mereka membangun stub `libmedia_a37_vendor`
(fase-5 §3.c di sana).

Di sini tidak perlu, dan sebabnya keputusan lama yang alasannya baru terlihat
sekarang: **`BOARD_VNDK_VERSION` tidak disetel** — hanya `ro.vndk.version=current`
untuk linkerconfig (`device.mk:594-600`). Tanpa penegakan VNDK, modul vendor
boleh menaut pustaka platform dan namespace vendor di runtime tidak
mengisolasinya.

Dibuktikan, bukan disimpulkan:

```
m libshim_camera libmedia libsqlite libxml2   build completed successfully (13:57)

libmedia.so / libsqlite.so / libxml2.so   ELF 32-bit -> system/lib
libshim_camera.so                         vendor/lib   ELF 32-bit
                                          vendor/lib64 ELF 64-bit
  dan ia benar-benar menaut libmedia.so, libstagefright.so, libui.so, libsensor.so
```

`libshim_camera` adalah modul **vendor** yang menaut pustaka platform. Ia
terbangun untuk kedua arch tanpa keluhan — itu mekanismenya, terbukti masih
berlaku di build 64-bit.

Komentar `device.mk` diperbarui: kata "32-bit" yang usang dibuang, alasan
sebenarnya ditulis, dan peringatan ditambahkan — **jangan menyetel
`BOARD_VNDK_VERSION` tanpa menyiapkan stub-stub itu lebih dulu.**

---

## 5. Yang fase ini TIDAK membuktikan

Apakah RIL benar-benar hidup di perangkat. Yang terbukti: `rild` 32-bit, rantai
tautannya lengkap, dan tidak ada dependensi yang hanya tersedia 64-bit.
Pembuktiannya menuntut `m bacon` (Fase 6) dan perangkat (Fase 8) — SIM terbaca,
IRadio terdaftar di `lshal`, telepon/SMS/data jalan.

---

## 6. Berkas

```
0001-A37-rild-dipaksa-32-bit-untuk-build-64-bit.patch        (= patches/official/hardware_ril/)
0001-A37-catat-kenapa-VNDK-yang-tidak-ditegakkan-menyelam.patch
```

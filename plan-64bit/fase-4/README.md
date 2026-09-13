# Fase 4 — kamera binderized 32-bit — ⛔ **DIBATALKAN**

Dikerjakan **13 September 2026**, lalu **dikembalikan pada hari yang sama** setelah
audit Fase 7 membuktikan premisnya salah.

> ## ⛔ BACA INI DULU: seluruh dasar fase ini keliru
>
> Fase ini berangkat dari klaim: *"di build arm64 `cameraserver` adalah proses
> 64-bit sehingga tidak bisa memuat `camera.vendor.msm8916.so` yang 32-bit,
> jadi passthrough mati secara arsitektural."*
>
> **`cameraserver` tidak ada di ROM ini sama sekali.** Audit Fase 7 atas image
> yang benar-benar terbangun:
>
> ```
> bin/cameraserver          TIDAK DIKIRIM
> bin/mediaserver           ELF 32-bit LSB pie executable
> lib/libcameraservice.so   ELF 32-bit saja
> ```
>
> Di LOS 20 servis kamera ditaut **ke dalam `mediaserver`**:
> `vendor/lineage/build/soong/Android.bp:326` `camera_in_mediaserver_defaults`
> bergerbang `has_legacy_camera_hal1` dan berisi `overrides: ["cameraserver"]` —
> dihidupkan oleh seri patch kita sendiri (`vendor_lineage/0010`). Dan
> `mediaserver` ber-`compile_multilib: "prefer32"` dari AOSP sendiri, jadi **32-bit
> bahkan pada `TARGET_ARCH=arm64`**.
>
> Klien HAL kameranya 32-bit. Passthrough memuat blob 32-bit persis seperti di ROM
> 32-bit — tidak ada yang mati secara arsitektural.
>
> **Dikembalikan** ke passthrough di commit `f490492`, karena passthrough terbukti
> jalan di perangkat ini sedangkan hwbinder punya riwayat layar hitam
> (`20260803_161352`). Memilih jalur dengan bukti kegagalan, demi alasan yang
> ternyata tidak ada, adalah pertukaran yang buruk.
>
> **Pelajaran:** jangan menyimpulkan dari nama proses tanpa memeriksa apakah proses
> itu benar-benar ada di image. `HANDOFF.md` §7 sudah memperingatkannya — *"'dibaca'
> bukan 'dipakai'"* — dan tetap dilanggar di sini.
>
> Isi di bawah **dipertahankan sebagai arsip**: temuannya tentang modul AOSP dan
> sepolicy tetap benar dan berguna kalau suatu saat jalur binderized ditempuh lagi
> dengan alasan yang sah.

---

## 1. Hasil

Cabang `lineage-20-64bit` device tree, commit `fb2f91a`:

```
manifest.xml   <transport arch="32+64">passthrough</transport>
            -> <transport>hwbinder</transport>
device.mk      + android.hardware.camera.provider@2.4-service
```

Dua berkas. Itu seluruh perubahan sumbernya.

---

## 2. Kenapa ini keharusan, bukan penyetelan

Passthrough memuat `.so` HAL **ke dalam proses kliennya**, yaitu `cameraserver`.
Di build arm64 `cameraserver` adalah proses **64-bit**, sedangkan
`camera.vendor.msm8916.so` hanya ada **32-bit** — Qualcomm tidak pernah merilis
HAL kamera 64-bit untuk msm8916 (Fase 0 mengukur: 129 dari 159 pustaka yang tetap
32-bit adalah kamera/JPEG).

Proses 64-bit tidak bisa memuat pustaka 32-bit. Jalur passthrough karena itu mati
**secara arsitektural**, bukan karena bug yang bisa ditambal. Tidak ada pilihan
kedua di build 64-bit.

---

## 3. Dua hal yang ternyata tidak perlu dikerjakan

Rencana induk menaksir fase ini **8–20 jam** dan menandainya bagian paling tidak
pasti. Dua dari tiga pekerjaan yang diperkirakan ternyata sudah tersedia:

| Yang diperkirakan | Kenyataannya |
|---|---|
| Pasang service binderized 32-bit | **Sudah disediakan AOSP 13**: `android.hardware.camera.provider@2.4-service` dengan `compile_multilib: "32"` di `hardware/interfaces/camera/provider/2.4/default/Android.bp:180-183`. Nol kode, nol patch |
| Tambah domain sepolicy untuk proses terpisah | **Sudah ada di hulu**: `system/sepolicy/vendor/file_contexts:25` melabeli `@2.[0-9]+-service` sebagai `hal_camera_default_exec`. **Perkiraan rencana keliru** |
| Pindahkan transport ke hwbinder | benar, dan itu satu baris |

`@2.4-impl` **tetap dipasang** dan itu wajib — service binderized men-`dlopen`-nya
lewat `defaultPassthroughServiceImplementation<ICameraProvider>("legacy/0")`.
Karena ia `cc_library_shared` tanpa `compile_multilib` eksplisit, ia terbangun
untuk kedua arch, dan **varian 32-bit-nyalah** yang dipakai service ini.

---

## 4. Penjaga

Diverifikasi atas **artefak yang benar-benar terbangun**, bukan atas makefile:

```
m ...@2.4-service ...@2.4-impl     build completed successfully (03:51)

biner service   ELF 32-bit LSB pie executable, ARM, EABI5     <- yang menentukan
@2.4-impl.so    system/vendor/lib/hw     ELF 32-bit ARM
                system/vendor/lib64/hw   ELF 64-bit aarch64
rc service      system/vendor/etc/init/...@2.4-service.rc, 341 byte

closure DT_NEEDED   service 20 dari 23 teratasi · impl 29 dari 32
```

⚠️ **Tiga yang tidak teratasi adalah positif palsu:** `libc.so`, `libm.so`,
`libdl.so`. Ketiganya bionic, ada 32-bit di
`out/soong/.intermediates/bionic/libc/libc/android_arm_armv8-a_cortex-a53_shared/libc.so`
dan dikirim lewat Runtime APEX yang **tidak dibangun oleh `m <modul>`**. Kelas
positif palsu yang sama sudah dicatat fase-5 proyek 23.2 — jangan dikejar.

⚠️ **Catatan path:** artefak mendarat di
`out/target/product/A37/**system**/vendor/...`, bukan `.../vendor/...` — A37
tidak punya partisi vendor terpisah. Penjaga yang mencari di path kedua akan
melaporkan "TIDAK ADA" untuk berkas yang sebenarnya ada.

---

## 5. Yang fase ini TIDAK membuktikan

**Apakah layar hitam terulang.** Kombinasi hwbinder pernah dicoba di build
**32-bit** `20260803_161352` dan hasilnya layar hitam di homescreen; akarnya
tidak pernah ditemukan, dan jalur passthrough dipilih untuk menghindarinya.

Yang terbukti di sini hanya: binernya 32-bit, impl-nya ada di kedua arch, rc-nya
terpasang, dan rantai tautannya bersih. **Itu bukan "kamera berfungsi".**
Pembuktiannya menuntut `m bacon` (Fase 6) dan perangkat (Fase 8).

Dua hal yang berbeda dari percobaan yang gagal:

1. **Preseden berhasil.** ROM LOS 23.2 64-bit menjalankan camera provider sebagai
   proses 32-bit terpisah dan boot normal **di perangkat ini**. Mekanisme binder
   lintas-arch ke HAL kamera 32-bit terbukti bekerja di A37.
2. **Alat diagnosis ada.** Kernel `lineage-24` membawa `LOG_BUF_SHIFT=19`
   (dmesg 512 KB). Percobaan 2026-08-03 gagal tanpa log `cameraserver` /
   `vendor.camera-provider-2-4` — persis yang dikeluhkan `device.mk` lama.

**Kalau layar hitam terulang**, kumpulkan SEBELUM menyimpulkan apa pun:
`logcat -b all` untuk `cameraserver`, `vendor.camera-provider-2-4`,
`SurfaceFlinger`; `lshal | grep camera`; `dmesg`. Rencana cadangan **HAL3on1**
(`PLAN-64BIT.md` §4.1) baru dipertimbangkan sesudah itu — bukan sebelum.

**JANGAN kembali ke passthrough.** Di build 64-bit ia tidak akan pernah bekerja.
Peringatan ini sudah ditulis permanen di `manifest.xml` dan `device.mk`.

---

## 6. Berkas

```
0001-A37-kamera-binderized-32-bit-passthrough-mati-di-bui.patch
```

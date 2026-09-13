# Fase 1 — vendor tree 64-bit

Dikerjakan **13 September 2026**. **Selesai, terverifikasi lewat tujuh penjaga.**

---

## 1. Hasil

Cabang **`lineage-20-64bit`** di `rigaz29/rb-vendor_oppo_A37`, dibuat dari
`lineage-23-64bit` @ `4048adb`, commit `8dcc8a9`.

```
397 berkas di pohon
    230  vendor/lib      (32-bit)
    114  vendor/lib64    (64-bit)
     53  bukan pustaka   firmware 17, bin 14, etc 11, lib/ 8, framework 1,
                         app 1, priv-app 1
389 PRODUCT_COPY_FILES  +  6 modul Android.bp
```

Terhadap 273 pustaka `vendor/lib` yang dikirim LOS 20 hari ini: **71 menjadi
dual-arch, 159 tetap 32-bit, 43 naik ke 64-bit** — persis putusan Fase 0.

**Delta terhadap cabang 23.2 hanya empat baris.** Itu ukuran sebenarnya dari
pekerjaan fase ini, dan alasannya ada di §2.

```
BUANG   vendor/bin/hw/android.hardware.drm@1.1-service.widevine
BUANG   vendor/etc/init/android.hardware.drm@1.1-service.widevine.rc
BUANG   vendor/lib/libwvhidl.so
TAMBAH  vendor/etc/permissions/qcrilmsgtunnel.xml
```

Perkiraan rencana induk 4–6 jam, direvisi Fase 0 menjadi 2–3 jam. **Nyatanya di
bawah itu**, karena ternyata `Android.bp` pun tidak perlu disentuh (§3).

---

## 2. Kenapa deltanya sekecil itu

Karena cabang `lineage-23-64bit` bukan "vendor tree Android 16" melainkan **vendor
tree A37 dual-arch yang kebetulan dirakit untuk Android 16**. Blobnya sama —
semuanya dari 2016 — dan yang membedakan dua ROM adalah *apa yang dipasang device
tree*, bukan *apa yang ada di pohon vendor*.

Yang berbeda antara LOS 20 dan LOS 23.2 di sisi vendor cuma dua hal:

| | LOS 23.2 | LOS 20 | Perlakuan |
|---|---|---|---|
| Widevine | dipasang (`drm@1.1` + `libwvhidl`) | **belum dipasang sama sekali** — nol sebutan di `device.mk` | berkas tetap di pohon, baris pemasangannya dibuang |
| `qcrilmsgtunnel.xml` | ada di pohon, tidak pernah dipasang | dipasang sejak `lineage-18.1` | barisnya dikembalikan |

**Widevine sengaja tidak dihapus dari pohon.** Cabang `lineage-18.1` memakai pola
yang sama — ia membawa `libwvhidl.so` dan kedua service Widevine tanpa
memasangnya. Menghidupkannya adalah **T-A4** (`PLAN-64BIT.md` §6), dan saat itu
tiba, blobnya sudah ada di tempatnya.

> Catatan untuk T-A4: Fase 0 menyimpulkan `lineage-18.1` diperlukan untuk Widevine
> karena pasangan `drm@1.0-service.widevine` + `libwvdrmengine.so` hanya ada di
> sana. Itu **mungkin tidak perlu**: proyek 23.2 menghidupkan Widevine L3 hanya
> dengan `@1.1` + `libwvhidl`, dan keduanya sudah ada di cabang ini. Diuji saat
> T-A4, bukan sekarang.

---

## 3. `Android.bp` diambil apa adanya — nol perubahan modul

Fase 0 menandai tiga pustaka yang dipasang lewat `cc_prebuilt_library_shared`,
bukan `PRODUCT_COPY_FILES` (jebakan §3 nomor 6 rencana induk). Diperiksa satu per
satu, dan susunan cabang 23.2 **sudah tepat untuk LOS 20 juga**:

| Modul | Susunan | Kenapa cocok untuk LOS 20 |
|---|---|---|
| `libloc_api_v02` | dua arch (`compile_multilib: "both"`) | Konsumen 32-bitnya nyata: `libizat_core.so` dan `liblbs_core.so` lewat `DT_NEEDED`, `libloc_core.so` lewat `dlopen`. Ketiganya juga dikirim LOS 20 |
| `libloc_ds_api` | dua arch | Dituntut `vendor/lib/libloc_api_v02.so` lewat `dlopen`. 28 KB untuk menutup rantai GPS 32-bit |
| `libtime_genoff` | 64-bit di `Android.bp`, **32-bit lewat `PRODUCT_COPY_FILES`** | Dua mekanisme berbeda untuk satu nama pustaka. Terlihat aneh, dan justru itu yang benar — lihat penjaga 6 |
| `qcrilmsgtunnel`, `shutdownlistener` | `android_app_import` | tidak arch-specific |
| `imscmlibrary` | `dex_import` | idem |

`libTimeService` dan `TimeService` tetap tidak dibawa. Di 23.2 alasannya "tidak ada
di `proprietary-files.txt`"; di LOS 20 alasannya sama kuat — keduanya dicabut dari
`PRODUCT_PACKAGES` pada `lineage-18.1` commit `a954792`, *"mustahil jalan di device
non-Treble"*.

Yang diubah di `Android.bp` hanya **komentar kepalanya**.

---

## 4. Penjaga

`audit-arch.sh` di direktori ini, bisa dipakai ulang kapan saja:

```bash
plan-64bit/fase-1/audit-arch.sh /root/a37-vendor64/A37
```

```
1. sumber PRODUCT_COPY_FILES ada (389 diperiksa)           LOLOS
2. srcs Android.bp ada (8 diperiksa)                       LOLOS
3. vendor/lib64 semuanya 64-bit (114 diperiksa)            LOLOS
4. vendor/lib semuanya 32-bit (231 diperiksa)              LOLOS
5. biner vendor/bin tetap 32-bit (14 diperiksa)            LOLOS
6. nol tumpang tindih COPY_FILES vs Android.bp             LOLOS
7. pustaka di pohon yang tidak dipasang                    1 (libwvhidl.so, cadangan T-A4)
rc=0
```

**Penjaga 3–5 ada karena salah arsitektur tidak tertangkap saat build.** Ia muncul
saat boot sebagai HAL yang gagal dimuat, dan ongkosnya satu siklus build penuh.
231 + 114 + 14 = 359 berkas diperiksa satu per satu dengan `file`; nol salah.

**Penjaga 6 menutup jebakan dua mekanisme.** Ia memastikan tidak ada berkas yang
ditangani `PRODUCT_COPY_FILES` *dan* `Android.bp` sekaligus — situasi yang build
terima tanpa peringatan, lalu menghasilkan isi image yang tidak sesuai dugaan.

**Penjaga 7 sengaja tidak nol.** Satu pustaka memang tidak dipasang
(`libwvhidl.so`); kalau angkanya berubah, ada yang salah.

---

## 5. Koreksi yang dibawa fase ini ke Fase 0

Mengadu pohon cabang dengan `set-dual-arch.txt` menghasilkan "3 kelebihan" yang
ternyata **bukan kelebihan**: `qcrilmsgtunnel.apk`, `shutdownlistener.apk`, dan
`imscmlibrary.jar` adalah sumber modul `Android.bp` yang memang dikirim LOS 20.
Fase 0 sudah menghitung tiga modul *native* di kelompok itu, tetapi melewatkan
tiga yang non-native.

Angka Fase 0 dikoreksi dari **323/394 menjadi 326/397**; pemilahan arsitekturnya
tidak berubah sama sekali, karena ketiganya bukan pustaka.

> **Pelajaran yang dicatat di `fase-0/README.md` §8:** penjaga aritmetika
> ("jumlah keluaran = jumlah masukan") **lolos** meski masukannya kurang tiga. Ia
> hanya memeriksa konsistensi internal. Yang menangkapnya adalah pencocokan
> terhadap pohon yang sebenarnya — dan itu baru terjadi di fase berikutnya.

---

## 6. Yang belum dikerjakan, dan disengaja

**Cabang belum di-push.** Ia ada di `/root/a37-vendor64` sebagai commit `8dcc8a9`
di atas `origin/lineage-23-64bit`. ROM 32-bit yang sekarang berjalan tidak
tersentuh sama sekali.

**Pohon vendor belum dipasang ke pohon LOS.** `/root/los20` sendiri sudah tidak
ada dan harus dibangun ulang (`HANDOFF.md` §4). Pemasangan adalah langkah pertama
Fase 2, bersama perubahan `BoardConfig.mk`.

**Blob tidak disimpan di repo ini** (260 MB). Yang disalin ke sini hanya berkas
yang dihasilkan: `A37-vendor.mk`, `Android.bp`, `BoardConfigVendor.mk`. Pohonnya
dibentuk ulang dengan:

```bash
git clone --no-single-branch https://github.com/rigaz29/rb-vendor_oppo_A37.git
git checkout -b lineage-20-64bit origin/lineage-23-64bit
# lalu terapkan delta empat baris §1, atau ambil commit 8dcc8a9 kalau sudah di-push
```

---

## 7. Berkas

| Berkas | Isi |
|---|---|
| `A37-vendor.mk` | 389 `PRODUCT_COPY_FILES` + 6 `PRODUCT_PACKAGES`, dengan kepala yang menjelaskan pemilahannya |
| `Android.bp` | 6 modul — identik dengan cabang 23.2 kecuali komentar |
| `BoardConfigVendor.mk` | disalin apa adanya |
| `audit-arch.sh` | tujuh penjaga, `rc=1` bila ada satu pun gagal. **Jalankan lagi setiap kali arch sebuah komponen diubah** |

---

## 8. Status terhadap rencana induk

Fase 1 selesai lebih murah daripada perkiraan mana pun, karena Fase 0 menemukan
sumbernya cukup satu dan Fase 1 menemukan `Android.bp`-nya sudah benar.

Yang **tidak** berubah: pemblokir kamera §4.1 rencana induk belum tersentuh, dan
ia tetap satu-satunya bagian yang benar-benar berisiko. Dua catatan Fase 0 juga
masih menunggu — `soundfx` 32-bit di `audioserver` 64-bit (uji Fase 8) dan lima
codec tunggal yang ditandai 64-bit sementara (putusan Fase 7).

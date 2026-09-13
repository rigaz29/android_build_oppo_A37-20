# Fase 2 — device tree, BoardConfig, dan pemasangan

Dikerjakan **13 September 2026**. **Selesai, terverifikasi lewat `get_build_var`
dan `m nothing`.**

---

## 1. Hasil

Cabang **`lineage-20-64bit`** di `device/oppo/A37`, dibuat dari `lineage-20`
(`caa9882`), commit `700a8d0`. **Belum di-push.**

```
TARGET_BOARD_SUFFIX := _64        TARGET_2ND_ARCH          := arm
TARGET_ARCH         := arm64      TARGET_2ND_ARCH_VARIANT  := armv8-a
TARGET_ARCH_VARIANT := armv8-a    TARGET_2ND_CPU_ABI       := armeabi-v7a
TARGET_CPU_ABI      := arm64-v8a  TARGET_2ND_CPU_ABI2      := armeabi
TARGET_CPU_VARIANT  := cortex-a53 TARGET_2ND_CPU_VARIANT   := cortex-a53
                                  TARGET_SUPPORTS_64_BIT_APPS := true
```

`TARGET_KERNEL_ARCH := arm64` **tidak berubah** — ia sudah begitu sejak Fase 1
proyek ini. `TARGET_USES_64_BIT_BINDER := true` juga sudah benar sebelumnya.

Dua berkas, 49 baris. Itu seluruh perubahan sumber Fase 2.

---

## 2. Penjaga

```
get_build_var TARGET_ARCH            arm64
              TARGET_CPU_ABI         arm64-v8a
              TARGET_2ND_ARCH        arm
              TARGET_2ND_CPU_ABI     armeabi-v7a
              TARGET_KERNEL_ARCH     arm64      (tidak berubah)
              TARGET_BOARD_SUFFIX    _64
ro.zygote                            zygote64_32
init.zygote64_32.rc                  terpasang lewat PRODUCT_COPY_FILES

m nothing    build completed successfully (19:15)
```

`ro.zygote=zygote64_32` menang atas `ro.zygote?=zygote32` di `base_vendor.mk:36`
karena yang terakhir soft-assign. Diperiksa langsung di `PRODUCT_VENDOR_PROPERTIES`,
bukan diasumsikan.

⚠️ **Lingkup `m nothing`: ia hanya MEMBACA makefile, tidak mengompilasi apa pun.**
Lolosnya berarti build system menerima device tree — bukan bahwa ROM bisa
dibangun. Kegagalan kompilasi nyata baru muncul di Fase 6.

---

## 3. Temuan: vendor 64-bit dan device tree 32-bit tidak bisa hidup bersama

Ditemukan dengan cara yang mahal — sepuluh build gagal berturut-turut, semuanya
dengan pesan yang sama:

```
device/oppo/A37/lineage_A37.mk includes non-existent modules in PRODUCT_PACKAGES
Offending entries: libtime_genoff
```

Sebabnya: `Android.bp` vendor cabang `lineage-20-64bit` mendefinisikan
`libtime_genoff` sebagai **arm64-saja** (`compile_multilib: "64"`, hanya
`android_arm64` srcs). Pada `TARGET_ARCH=arm` modul itu tidak ada, dan
`enforce-product-packages-exist` (`vendor/lineage/config/common.mk:104`) menolak
build **sebelum mengompilasi apa pun**.

Kebalikannya juga berlaku. **Kembali ke 32-bit berarti mengembalikan KEDUANYA** —
`git checkout lineage-20` di `device/oppo/A37` *dan* `git checkout lineage-18.1`
di `vendor/oppo`. Ini sudah ditulis sebagai komentar permanen di `BoardConfig.mk`.

Laporan Fase 1 tidak menyebut kopling ini; itu kelalaian yang dibayar di fase ini.

---

## 4. Temuan: `SOONG_GOMEMLIMIT` menuntut patch soong lebih dulu

Rencana induk §3 nomor 3 menulis "`SOONG_GOMEMLIMIT` wajib untuk build 64-bit"
seolah tinggal menyetel variabel. **Itu tidak cukup di LOS 20.**

`soong_build` dijalankan dengan `env -i`, sehingga variabel dari shell tidak
pernah sampai kepadanya, dan `build/soong` Android 13 **nol sebutan `GOMEMLIMIT`**
(diperiksa: `grep -rn GOMEMLIMIT build/soong/ build/blueprint/` → nihil). Proyek
23.2 menambal `ui/build/soong.go` untuk meneruskannya; patch itu tidak bisa
diterapkan mentah karena bentuk fungsinya berbeda (Android 13 memakai `config`,
Android 16 `pb.config`), jadi ditulis ulang.

Dibuktikan, bukan diasumsikan:

```
sebelum patch : m nothing setelah TARGET_ARCH=arm64 DIBUNUH penjaga memori
sesudah patch : /proc/<pid>/environ soong_build memuat GOMEMLIMIT=6GiB
                m nothing selesai 19:15, RSS puncak 9,8 GB + swap 7,5 GB
```

**Batasnya LUNAK.** RSS tetap mencapai 9,8 GB di mesin 11 GB — GOMEMLIMIT menekan
puncak, tidak memotongnya. Mesin tetap bergantung pada swap, dan itu normal.
Konsekuensi praktis: jangan jalankan pekerjaan berat lain selama build.

Patchnya kini di `patches/official/build_soong/` dan terdaftar **T0** di
`tools/apply-official-patches.sh` — tanpa itu ia hilang diam-diam tiap
`repo sync` (jebakan #5). Ditandai T0 karena ia prasyarat *menjalankan build*,
bukan prasyarat fungsi ROM. Pada build 32-bit ia tidak berbahaya: tanpa
`SOONG_GOMEMLIMIT` disetel, cabangnya tidak pernah diambil.

---

## 5. Koreksi: ekspektasi "3 paket `init.zygote*`" salah untuk Android 13

Rencana induk (mengikuti Fase 2 proyek 23.2) menyuruh memeriksa bahwa
`PRODUCT_PACKAGES` memuat 3 paket `init.zygote*`. Hasilnya **0**, dan itu benar:

```
build/make/target/product/core_64_bit.mk (Android 13)
  PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:...
```

Di Android 13 berkas rc zygote datang lewat `PRODUCT_COPY_FILES`, bukan sebagai
modul. Angka 3 itu milik Android 16. **Ekspektasinya yang keliru, bukan pohonnya** —
ukuran yang benar adalah memeriksa `PRODUCT_COPY_FILES`, dan di sana
`init.zygote64_32.rc` memang ada.

---

## 6. Keputusan zygote — sengaja berbeda dari proyek 23.2

`zygote64_32` (bawaan `core_64_bit.mk`), **bukan** `ZYGOTE_FORCE_64`.

| | LOS 23.2 | LOS 20 (di sini) |
|---|---|---|
| Pilihan | `ZYGOTE_FORCE_64` → satu zygote | `zygote64_32` → zygote 64-bit + anak 32-bit |
| Alasan | tumpukan 32-bit tidak lengkap; `zygote_secondary` dua kali bootloop | tumpukan EGL 32-bit kini **lengkap** di cabang vendor (9 driver + `libgsl` + `libadreno_utils`) |
| Ongkos | aplikasi 32-bit-saja tidak bisa dipasang | dua boot image ART di memori |
| Kenapa diterima | di Android 16 mayoritas aplikasi sudah 64-bit | di **Android 13** aplikasi 32-bit-saja masih banyak |

Ongkosnya harus **diukur di Fase 8**, bukan diasumsikan. Kalau RAM tidak cukup,
`ZYGOTE_FORCE_64 := true` satu baris — ditaruh **sebelum** inherit
`core_64_bit.mk` (gerbangnya `core_64_bit.mk:30`). Arah itu mudah; sebaliknya
tidak.

---

## 7. Yang belum dikerjakan

~~**Cabang belum di-push.**~~ **Sudah di-push 13 Sep 2026:**
`origin/lineage-20-64bit` @ `700a8d0`. `A37-20-64bit.xml` sudah menunjuk ke sana,
dan diverifikasi bahwa HEAD lokal `device/oppo/A37` **identik** dengan revisi
manifest — jadi `repo sync` tidak lagi membuang commit ini.

Cabang `lineage-20` (`caa9882`) tidak bergerak; kembali ke build 32-bit tetap
`git checkout lineage-20` di sini **dan** `git checkout lineage-18.1` di
`vendor/oppo` — keduanya, lihat §3.

**Fase 3 (kamera binderized) belum disentuh** — itu pemblokir §4.1 rencana induk
dan tetap satu-satunya bagian yang benar-benar berisiko. `m nothing` lolos
**tidak** mengatakan apa pun tentangnya: jalur passthrough masih terdeklarasi di
`manifest.xml`, dan build system menerimanya tanpa keberatan.

---

## 8. Berkas

```
0001-A37-build-64-bit-TARGET_ARCH-arm64-dengan-arsitektur.patch
```

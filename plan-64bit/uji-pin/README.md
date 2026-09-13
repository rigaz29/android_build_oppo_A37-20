# Uji pelepasan pin anti-hanyut

Dikerjakan **13 September 2026** di pohon 64-bit yang konsisten (Fase 2 selesai).
**Hasil: lima dari enam pin dibuang, satu dipertahankan.**

---

## 1. Pertanyaan dan kenapa ia layak diuji

`A37-20.xml` memin enam project ke SHA. `PLAN-OFFICIAL.md` §0.2b menyatakan
keenamnya *"terbukti memutus build"* di basis official. Tetapi kolom verifikasi
di tabel itu berbunyi `m libskia` / `m MmsService` / `m Settings-core` **exit 0**
— itu bukti bahwa **pinnya bekerja**, bukan bukti bahwa **tanpa pin rusak**.
Tidak ada satu pun log kegagalan tanpa-pin yang tercatat.

Ongkosnya nyata, bukan soal kerapian:

| project | pin | hulu | tertinggal |
|---|---|---|---|
| **Settings** | 2025-02-07 | 2026-05-15 | **33 commit, 15 bulan** |
| Telephony | 2025-04-18 | 2026-05-04 | 8 commit |
| dng_sdk | 2025-04-17 | 2026-03-10 | 8 commit |
| Mms | 2024-12-02 | 2025-08-14 | 2 commit |
| Trebuchet | 2024-12-02 | 2026-01-21 | 2 commit |
| skia | 2025-04-17 | 2025-08-07 | 1 commit |

**Pin Settings (Feb 2025) lebih tua daripada pembekuan LineageOS-UL (2025-04-04)**
— pembekuan yang jadi seluruh alasan proyek ini pindah ke basis official. Untuk
komponen itu, migrasinya tidak membeli apa-apa.

---

## 2. Metode

Dua putaran, target **sama persis** dengan yang dipakai M4:

```
A  keenam dipin        -> mendapatkan bukti "sebelum" yang tidak pernah dicatat
B  keenam dilepas      -> menjawab pertanyaannya
```

**Dilepas serentak, bukan satu per satu.** `skia` HEAD menuntut API `dng_sdk`
1.7.1 dan `dng_sdk` HEAD menyediakannya; melepas salah satu saja pasti gagal.
Kalau M4 dulu mengujinya satu-satu, itu cukup untuk menghasilkan kesimpulan
"keenamnya memutus build" secara keliru.

Skripnya `uji-lepas-pin.sh` di direktori ini.

---

## 3. Hasil

```
target                  A (dipin)   B (dilepas)   putusan
libskia                 LOLOS       LOLOS         pin TIDAK PERLU
Settings-core           LOLOS       LOLOS         pin TIDAK PERLU
MmsService              GAGAL       LOLOS         pin JUSTRU MERUSAK
Launcher3QuickStepLib   GAGAL       LOLOS         pin JUSTRU MERUSAK
TeleService             LOLOS       GAGAL         pin MASIH WAJIB
```

Tidak ada yang seragam. Tiga putusan berbeda dari enam pin yang selama ini
diperlakukan sebagai satu blok.

### 3.a Dua pin sudah berbalik dari obat menjadi penyakit

`Mms`, dipin ke 2024-12-02, melawan `frameworks/base` hari ini:

```
MmsService.java:210: error: <anonymous MmsService$1> is not abstract and does not
override abstract method addMultimediaMessageDraft(int,String,Uri) in IMms
```

Itu **cermin persis** galat yang dicatat `A37-20.xml` sebagai alasan memasang
pinnya. Dulu `frameworks/base` punya 2-arg dan Mms hulu 3-arg, jadi Mms dipin ke
versi 2-arg. `frameworks/base` kemudian ikut naik ke 3-arg — commit-date
**2025-12-12** di `lineage-20.0`, author-date AOSP 2024-07-08 — dan sejak itu
pinnyalah yang salah.

`Trebuchet`, dipin ke 2024-12-02:

```
SystemUiProxy.java:83: error: SystemUiProxy is not abstract and does not override
abstract method onKeyEvent(int) in ISystemUiProxy
```

Pola yang sama.

### 3.b Dua pin sudah tidak perlu

`libskia` dan `Settings-core` lolos di **kedua** putaran.

Untuk `dng_sdk`/`skia`, akar masalahnya diperbaiki **di hulu**:

```
external/libjpeg-turbo  97a06ea  2025-08-22
  "Fix build errors in Crude DNG SDK 1.7.1 upgrade"
  -> menambahkan sdk_version: "current" pada modul libjpeg (Android.bp:291)
```

Itulah varian `sdk:sdk` yang ketiadaannya jadi pemblokir soong asli (PLAN §2.7).
Judul commitnya harfiah menyebut kerusakan yang di-workaround pin kita, dan
tanggalnya **setahun sebelum** proyek ini memasang pin itu.

Untuk `Settings`, method yang dulu hilang
(`BiometricPrompt.setClassNameIfItIsConfirmDeviceCredentialActivity()`) kini ada
di `frameworks/base`. Tidak satu pun dari 135 patch kita menyentuh berkas itu
(diperiksa: nol).

### 3.c Satu pin masih wajib, dan sebabnya di hulu

`Telephony` HEAD (`43f185c72`, 2026-05-04):

```
PhoneInterfaceManager.java:2932: error: cannot find symbol
  symbol: method checkSubscriptionAssociatedWithUser(PhoneGlobals,int,UserHandle)
```

Method itu **tidak ada di pohon mana pun**, dan **tidak ada juga di hulu**
`LineageOS/android_frameworks_opt_telephony` `lineage-20.0` (diverifikasi: nol
kemunculan). Jadi ini ketidakcocokan **di dalam `lineage-20.0` sendiri** —
`packages/services/Telephony` bergerak melewati companion repo-nya — bukan akibat
patch atau pin kita.

### 3.d Susulan: pinnya dimajukan tujuh commit

Uji lanjutan hari yang sama menunjukkan pin itu **terlalu konservatif**. Dari 8
commit yang memisahkan pin lama (`288c28358b`, 2025-04-18) dari HEAD, **hanya yang
terbaru** yang merusak:

```
43f185c72  2026-05-04  Restrict USSD requests to the subscription's associated ...  <- rusak
41f8f65f4  2026-03-25  Prevent SDK Sandbox from bypassing isSystemApp check
c1b442574  2026-01-27  Disallow shell to change CarrierRestrictionRules
caae55d96  2025-09-04  Restricting UserBuild from persistent carrierConfig Override
f2aa3b53e  2025-09-02  Protect shell overriding the carrier config
b9264043b  2025-07-30  Remove the contacts picker from the FDN UI
94789873e  2025-06-12  remove the contacts picker from CallForward
54600bbca  2025-04-29  Remove the contacts picker from VoicemailSettingsActivity
```

Pin dimajukan ke **`41f8f65f4d55a4922558529a95195cc0df3db7c6`**, diverifikasi
`m TeleService` **build completed successfully (03:04)**. **Tujuh commit didapat
kembali, lima di antaranya perbaikan keamanan.**

Sebabnya yang terbaru tidak bisa juga terjawab: `checkSubscriptionAssociatedWithUser`
ada di `frameworks/base` **`lineage-21.0` dan `lineage-22.1`** (4 kemunculan
masing-masing) tetapi **nol** di `lineage-20.0`. LineageOS me-merge commit Telephony
ber-API Android 14 ke branch 20.0 tanpa pasangan `frameworks/base`-nya.

Cherry-pick API itu dari `lineage-21.0` **ditolak**: ia bagian kerja multi-user
telephony Android 14 dan menyeret konsep asosiasi user–subscription yang tidak ada
di A13 — terlalu besar demi satu commit pengerasan USSD.

⚠️ **Koreksi atas komentar manifest lama.** Ia menyalahkan `c1b442574` karena memakai
`TelephonyPermissions.isShell(int)` "yang tidak ada di tree kita". Method itu **ada**
sekarang (`frameworks/base/telephony/common/.../TelephonyPermissions.java:813`), jadi
alasan itu kedaluwarsa dan commitnya kini ikut terbawa. Ini pelajaran yang sama
dengan §3.a dan §3.b: **alasan sebuah pin bisa kedaluwarsa tanpa pinnya dicabut.**

Tinjau ulang kalau `frameworks/base` `lineage-20.0` kelak menyediakan
`checkSubscriptionAssociatedWithUser`.

---

## 4. Yang diubah

`A37-20-64bit.xml`: **enam `remove-project` + `project` menjadi satu.** Lima
dibuang, `packages/services/Telephony` tetap — tetapi **dimajukan tujuh commit**
(§3.d). Manifest diverifikasi merakit 1253 project, dan kelima project yang dilepas
kini mengikuti `refs/heads/lineage-20.0`.

Keuntungan konkret:

| komponen | didapat kembali |
|---|---|
| Settings | **33 commit / 15 bulan ASB** |
| Telephony | **7 commit**, lima di antaranya perbaikan keamanan |
| Mms, Trebuchet | dua kegagalan build yang selama ini tersembunyi, hilang |
| skia, dng_sdk | tidak lagi membekukan `external/` di era April 2025 |

---

## 5. Percobaan pertama yang gagal, dan kenapa ia tetap berguna

Putaran pertama uji ini dijalankan **sebelum** Fase 2, saat vendor sudah 64-bit
tetapi device tree masih 32-bit. Kesepuluh targetnya gagal dengan satu akar yang
sama:

```
device/oppo/A37/lineage_A37.mk includes non-existent modules in PRODUCT_PACKAGES
Offending entries: libtime_genoff
```

Tidak satu pun target pernah menyentuh kode Settings/Mms/skia, jadi ujinya tidak
konklusif. Tetapi ia menemukan kopling yang tidak pernah tercatat: **vendor
64-bit dan device tree 32-bit tidak bisa hidup bersama** — lihat `fase-2` §3.

Dua kesalahan saya sendiri di jalan ke sini, dicatat supaya tidak diulang:

1. **`set -u` di skrip yang men-`source build/envsetup.sh`.** envsetup menyentuh
   banyak variabel tak terdefinisi dan shell mati seketika; karena stdout saya
   buang ke `/dev/null`, matinya tanpa jejak dan hasilnya berkas log 0 byte.
2. **Menganggap uji ini bisa berdiri sendiri.** Ia menuntut pohon yang bisa
   dibangun, dan pohon itu baru ada setelah Fase 2.

---

## 6. Berkas

| Berkas | Isi |
|---|---|
| `uji-lepas-pin.sh` | skrip dua putaran, bisa dipakai ulang |
| `ringkasan.txt` | keluaran apa adanya, dengan waktu tiap target |
| `galat-A-MmsService.txt` | galat pin yang berbalik |
| `galat-A-Launcher3QuickStepLib.txt` | idem |
| `galat-B-TeleService.txt` | galat yang membenarkan satu pin tersisa |

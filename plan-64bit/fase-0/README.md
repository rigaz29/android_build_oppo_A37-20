# Fase 0 — penyaringan blob 64-bit

Dikerjakan **13 September 2026**. **Selesai.**

Sasaran: mengubah "400 berkas di cabang `lineage-23-64bit`" menjadi keputusan
arsitektur per berkas untuk **Android 13**, dan menjawab apakah sisa
`PLAN-64BIT.md` realistis.

Seluruh angka hasil pemeriksaan langsung; perintahnya di §9.

---

## 1. Hasil utama

> **Dikoreksi 13 Sep 2026 saat Fase 1.** Angka pertama dokumen ini 323/394.
> Yang benar **326/397**: tiga berkas sumber modul `Android.bp` terlewat —
> `qcrilmsgtunnel.apk`, `shutdownlistener.apk`, `imscmlibrary.jar`. Ketiganya
> memang dikirim LOS 20 lewat `PRODUCT_PACKAGES`, dan saya sudah menghitung tiga
> modul *native* di kelompok yang sama (`libloc_api_v02`, `libloc_ds_api`,
> `libtime_genoff`) tetapi lupa tiga yang non-native. Ketahuan karena Fase 1
> mengadu pohon cabang dengan daftar ini dan mendapat "3 kelebihan" yang ternyata
> bukan kelebihan. Berkasnya sudah diperbaiki; pemilahan arsitektur tidak berubah
> sama sekali, karena ketiganya bukan pustaka.

Set yang benar-benar dikirim LOS 20 — **326 entri** — dipetakan ke susunan
arsitektur cabang `lineage-23-64bit`:

```
273 pustaka vendor/lib
     71  dual-arch   (dikirim di vendor/lib DAN vendor/lib64)
    159  32-bit saja  (129 kamera/JPEG, 25 lain-lain, 5 codec/media)
     43  64-bit saja
      0  tidak dikenal cabang 64-bit
 53 bukan pustaka (firmware 17, bin 13, etc 10, lib/ 8, framework 3,
                   app 1, priv-app 1)
---
326 entri sumber  ->  397 tujuan pemasangan (230 vendor/lib + 114 vendor/lib64 + 53)
```

Pembanding kewarasan: `A37-vendor-v5.mk` proyek 23.2 berakhir di **228 entri lib
dan 111 lib64**. Kita mendarat di **230 dan 114** — selisihnya persis delta antara
daftar LOS 20 dan daftar LOS 23.2, bukan kesalahan metode.

---

## 2. Temuan yang mengubah rencana: **satu vendor tree cukup**

`PLAN-64BIT.md` §2.3 menyatakan cabang 64-bit "bukan superset — 52 berkas yang
dipakai LOS 20 absen darinya", dan menyimpulkan vendor tree harus dirakit dari
**dua** sumber seperti proyek 23.2. **Kesimpulan itu terlalu keras.** Yang benar:

```
52  berkas hanya ada di lineage-18.1
    43  ADA di cabang 64-bit, tetapi sebagai vendor/lib64/  -> pindah arch, bukan hilang
     9  memang TIDAK dikirim LOS 20 (ada di repo, tidak ada di A37-vendor.mk)
---
 0  berkas SET A yang benar-benar absen dari cabang 64-bit, dalam arch apa pun
```

Sembilan yang tidak dikirim itu: `TimeService.apk`, `libTimeService.so`, `ims.apk`,
tiga daemon IMS, `drm@1.0-service.widevine` + rc-nya, dan `libwvdrmengine.so`.

**Konsekuensi praktis:** Fase 1 cukup memakai cabang `lineage-23-64bit` sebagai
sumber tunggal. `lineage-18.1` hanya diperlukan bila **T-A4 (Widevine)** dikerjakan
— pasangan `drm@1.0-service.widevine` + `libwvdrmengine.so` hanya ada di sana.
Itu satu keputusan opt-in, bukan prasyarat.

Ini memangkas perkiraan Fase 1 dari 4–6 jam menjadi sekitar 2–3 jam.

---

## 3. Temuan: basis yang benar adalah `A37-vendor.mk`, bukan `proprietary-files.txt`

Rencana induk menyuruh memakai `proprietary-files.txt` device tree sebagai basis.
Itu **keliru untuk repo ini**, dan mengikutinya akan menghasilkan daftar yang salah:

| Sumber | Entri | Cocok dengan pohon vendor? |
|---|--:|---|
| `proprietary-files.txt` + `proprietary-files-qc.txt` (ternormalkan, unik) | 453 | **tidak** — 39 entri menunjuk berkas yang tidak ada, 9 berkas terpasang tidak tercantum |
| `A37-vendor.mk` (320 `PRODUCT_COPY_FILES`) + `Android.bp` (3 pustaka prebuilt) | **323** | ya, menurut definisi — inilah yang dibaca build |

Sebabnya sudah tercatat di proyek 23.2: `setup-makefiles.sh` **tidak bisa
dijalankan lagi** (memanggil `vendor/cm/build/tools/extract_utils.sh` yang tidak ada
di pohon LOS 20+), jadi daftar teks itu berhenti disinkronkan sementara
`A37-vendor.mk` terus dirawat dengan tangan.

⚠️ **Tiga pustaka tidak lewat `PRODUCT_COPY_FILES` sama sekali** —
`libloc_api_v02`, `libloc_ds_api`, `libtime_genoff` dipasang sebagai
`cc_prebuilt_library_shared` di `Android.bp`. Ini persis jebakan §3 nomor 6
rencana induk; ketiganya sudah ikut dihitung dalam 323.

Daftar teks tetap berharga karena **komentarnya** — pengetahuan mahal soal kenapa
`ims.apk` dibuang, kenapa daemon IMS gagal, dan seterusnya. Dipertahankan sebagai
rujukan, bukan sebagai daftar kerja.

---

## 4. Temuan: cabang 64-bit sudah membawa hasil audit on-device fase-5

Dua puluh blob yang ditambahkan fase-5 proyek 23.2 ke sisi 32-bit — hasil audit
`DT_NEEDED` **dan** audit `dlopen` di perangkat nyata — diperiksa satu per satu:
**dua puluh-duanya ada sebagai dual-arch di cabang ini, dan dua puluh-duanya ada
di SET A LOS 20.**

```
libxml.so  com.quicinc.cne.api@1.0.so  com.quicinc.cne.constants@1.0.so
libgsl.so  libadreno_utils.so  librpmb.so  libssd.so  libdrmtime.so
libgeofence.so  liblbs_core.so  libloc_api_v02.so  libizat_core.so
libC2D2.so  libscale.so  libOmxAacDec.so  libOmxEvrcDec.so
libOmxQcelp13Dec.so  libmm-qdcm.so  libmm-als.so  libbtnv.so
```

Ini penting karena **biner 32-bit yang mengonsumsinya identik** di kedua proyek:
`qmuxd`, `netmgrd`, `qseecomd`, `mm-qcamera-daemon`, HAL Bluetooth, HAL perf —
ke-13-nya sama persis di SET A LOS 20. Jadi LOS 20 mewarisi closure 32-bit yang
sudah dibayar dengan empat siklus build dan diverifikasi di perangkat.

Sisi EGL 32-bit juga sudah lengkap di cabang ini — 9 driver + `libgsl.so` +
`libadreno_utils.so`. Itu **prasyarat `zygote64_32`** yang direkomendasikan
rencana induk, dan ternyata sudah terpenuhi tanpa pekerjaan tambahan.

---

## 5. Temuan: blob 64-bit di repo BUKAN blob yang didokumentasikan device tree

`proprietary-files-qc.txt` LOS 20 ternyata sudah memuat **81 entri
`vendor/lib64/` lengkap dengan SHA1**, bertanda `# ... - from crackling`
(Redmi 2, msm8916). Tidak pernah diekstrak karena ROM-nya 32-bit.

Diadu dengan isi cabang `lineage-23-64bit`:

```
cocok : 4    hw/flp.default.so  libflp.so  libgeofence.so  libizat_core.so
beda  : 75
absen : 2    libTimeService.so  libthermalioctl.so   (keduanya tidak ada di SET A)
```

Keempat yang cocok semuanya kelompok lokasi/FLP — biner CAF yang identik lintas
perangkat. Sisanya berbeda karena **asalnya memang berbeda**: cabang 64-bit
diekstrak dari `lineage-17.1-20220314-UNOFFICIAL-A37.zip`, sedangkan daftar
crackling dari ROM Xiaomi.

**Ini bukan masalah, dan tidak mengubah rencana.** Blob asal-A37 lebih tepat untuk
perangkat ini, dan lebih penting lagi: blob itulah yang **terbukti boot** di A37
pada ROM 23.2 64-bit. Checksum dari perangkat lain kalah kuat sebagai bukti.
Nilainya sebagai **sumber cadangan** bila ada satu blob 64-bit yang ternyata buruk.

---

## 6. Keputusan triase

Kebijakan: **ikuti susunan cabang `lineage-23-64bit`** (sudah teraudit di
perangkat), kecuali bila ada alasan khas Android 13 untuk menyimpang. Wasit
terakhir tetap audit closure Fase 7 atas isi image yang benar-benar terbangun.

| Kelompok | Jml | Cabang | Keputusan LOS 20 | Alasan |
|---|--:|---|---|---|
| Kamera / JPEG | 129 | 32 | **32** | HAL kamera msm8916 tidak pernah ada versi 64-bit |
| Rantai IMS (`lib-ims*`, `lib-rtp*`, `lib-rcs*`, `libims*_jni`, `lib-dplmedia`) | 21 | 64 | **64** | Inert di LOS 20. Membuangnya hanya menghemat 4,8 MB — tidak sepadan risikonya. Kalau **T-B5** dikerjakan, justru 64-bit yang dibutuhkan |
| Rantai RenderScript | 8 | 64 | **64**, sisi 32-bit ditunda ke Fase 6 | 20,0 MB, butir terbesar di seluruh Fase 0 — lihat `rantai-renderscript-32bit.txt` |
| Varian EGL `libESX*GLES*` / `libRB*GLES*` | 4 | 64 | **64** | `ro.hardware.egl=adreno`: hanya jalur `libEGL_adreno` yang pernah dimuat. ⚠️ `libESXEGL_adreno.so` dan `libRBEGL_adreno.so` (tanpa GLES) **tetap dual** — dituntut `eglSubDriverAndroid.so` lewat `DT_NEEDED` |
| FLP (`hw/flp.default.so`, `libflp.so`) | 2 | 64 | **64** | HAL GNSS dibangun dari sumber → 64-bit |
| Codec tunggal (`libFlacSwDec`, `libI420colorconvert`, `libOmxAlacDecSw`, `libOmxApeDecSw`, `libmm-color-convertor`) | 5 | 64 | **64 sementara** — ⚠️ kandidat dual | Di 23.2 layanan OMX yang benar-benar berjalan adalah yang **32-bit** (fase-5 §5). Kalau di LOS 20 juga begitu, kelimanya harus dual. **Fase 7 yang memutuskan** |
| Sisanya (`libmm-disp-apis`, `libqcci_legacy`, `libvoice-svc`) | 3 | 64 | **64** | Ikuti cabang |
| Dual-arch (QMI, diag, ACDB, EGL inti, GPS, qseecom, perf, BT) | 71 | dual | **dual** | Sudah teraudit di perangkat — §4 |
| Bukan pustaka (firmware, etc, bin, framework) | 50 | — | tidak berubah | Seluruh 13 biner `vendor/bin` tetap 32-bit |

**`vendor/bin/hw` — aturan "jangan ambil dari luar daftar LOS 20" ternyata murah.**
13 biner SET A adalah subset dari 14 milik cabang 64-bit; satu-satunya kelebihan
cabang itu `android.hardware.drm@1.1-service.widevine`, yang justru dibutuhkan
**T-A4**. Tidak ada yang tidak sengaja terbawa.

---

## 7. Dua hal yang sudah terlihat sekarang dan harus diuji, bukan diasumsikan

**7.a `soundfx` hanya 32-bit di KEDUA cabang, tapi dirujuk `audio_effects.xml`.**

```
vendor/lib/soundfx/libqcbassboost.so   libqcvirt.so   libqcreverb.so
```

`audio/audio_effects.xml` LOS 20 baris 6–8 mendaftarkannya sebagai `libsw` di
belakang `effectProxy` bassboost/virtualizer/equalizer. Pemuatnya `audioserver`,
yang di build arm64 adalah proses **64-bit**. Tidak ada versi 64-bitnya di repo
mana pun.

Jalur `libhw`-nya (`offload_bundle` → `libqcompostprocbundle.so`) aman: pustaka
itu **dibangun dari sumber**, bukan blob, jadi tersedia di kedua arch. Yang
berisiko hanya jalur software-nya.

ROM 23.2 64-bit mengirim susunan yang sama, jadi kalau ini benar-benar merusak
sesuatu, gejalanya mestinya sudah ada di sana juga. **Uji di Fase 8**: pasang
equalizer/bassboost dari aplikasi musik, lalu `logcat | grep -i effect`.

**7.b `libthermalclient.so` naik ke 64-bit, padahal konsumennya mungkin 32-bit.**

Ia ada di kelompok dual-arch cabang (aman), tapi patut dicatat: proyek 23.2 punya
commit khusus `e4fb721` "tahan `libthermalclient`, cameraserver mati saat berpindah
kamera". Konsumen yang dicurigai `mm-qcamera-daemon` — biner **32-bit**. Karena
cabang sudah mengirimnya dual, tidak ada yang perlu dikerjakan sekarang; dicatat
supaya tidak dipangkas nanti tanpa sadar.

---

## 8. Berkas

| Berkas | Isi |
|---|---|
| `keputusan-arch.txt` | **326 entri sumber**, satu baris per entri: `dual` / `32` / `64` / `n/a` |
| `set-dual-arch.txt` | **397 tujuan pemasangan** — masukan langsung Fase 1 |
| `dual-arch.txt` | 71 pustaka dikirim dua arch |
| `tetap-32bit.txt` | 159 pustaka 32-bit saja |
| `hanya-64bit.txt` | 43 pustaka 64-bit saja |
| `di-repo-tak-dikirim.txt` | 9 berkas yang ada di `lineage-18.1` tapi tidak dikirim LOS 20 |
| `rantai-renderscript-32bit.txt` | closure RS 32-bit terukur + ongkos 20,0 MB + keputusan tertunda |

**Penjaga yang dijalankan dan lolos:**

```
entri sumber tetap 326                                    LOLOS  (setelah koreksi §1)
tujuan 397 = 71x2 + 159 + 43 + 53                         LOLOS  (setelah koreksi §1)
setiap pustaka SET A terklasifikasi (tak dikenal = 0)     LOLOS
```

⚠️ Penjaga "jumlah entri tetap" **tidak menangkap kesalahan di §1** — ia hanya
memeriksa bahwa keluaran konsisten dengan masukan, dan masukannya yang kurang tiga.
Yang menangkapnya adalah Fase 1, dengan mengadu daftar ini terhadap pohon yang
sebenarnya. Pelajaran: penjaga aritmetika tidak menggantikan pencocokan terhadap
kenyataan.

---

## 9. Jejak bukti

```bash
# SET A — yang benar-benar dikirim
git show origin/lineage-18.1:A37/A37-vendor.mk | grep -oE "proprietary/[^ :]+" | sed 's|^proprietary/||' | sort -u   # 320
git show origin/lineage-18.1:A37/Android.bp   | grep -E "^\s+name:"                                                  # +3 pustaka

# susunan arch cabang 64-bit
git ls-tree -r --name-only origin/lineage-23-64bit | sed 's|^A37/proprietary/||' > v64.txt
grep '^vendor/lib/'   v64.txt | sed 's|vendor/lib/||'   | sort -u > B-lib32.txt
grep '^vendor/lib64/' v64.txt | sed 's|vendor/lib64/||' | sort -u > lib64.txt
comm -12 B-lib32.txt lib64.txt | wc -l     # 71 dual
comm -23 B-lib32.txt lib64.txt | wc -l     # 160 32-saja
comm -13 B-lib32.txt lib64.txt | wc -l     # 43 64-saja

# closure RenderScript 32-bit, diukur dari blob
readelf -d libRSDriver_adreno.so | grep NEEDED
strings  libCB.so | grep -oE "lib[A-Za-z0-9_.+-]+\.so" | sort -u   # -> libllvm-qcom.so

# SHA1 crackling lawan isi repo
grep -E "^vendor/lib64/.*\|" proprietary-files-qc.txt | wc -l      # 81
```

---

## 10. Penilaian: apakah sisa rencana realistis?

**Ya, dan lebih murah daripada yang diperkirakan.** Tiga hal bergerak ke arah baik:

1. Vendor tree dari **satu** sumber, bukan dua (§2) — Fase 1 turun ke 2–3 jam.
2. Closure 32-bit-nya **sudah teraudit di perangkat** (§4), termasuk sisi EGL yang
   menjadi prasyarat `zygote64_32`.
3. Nol berkas SET A yang hilang; nol pustaka yang tidak terklasifikasi.

Yang **tidak** berubah sedikit pun: pemblokir kamera §4.1 rencana induk. Fase 0
tidak menyentuhnya, dan ia tetap satu-satunya bagian rencana yang benar-benar
berisiko. Gerbang keputusan §8 rencana induk berlaku penuh.

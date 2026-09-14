# Rekaman video terbatas di 720p — diagnosis

Diperiksa **14 September 2026** atas laporan pemilik perangkat bahwa resolusi
hasil video "sepertinya tidak pas". ROM `20260914_125924`.

**Belum diperbaiki.** Dokumen ini diagnosis, bukan perubahan.

---

## 1. Tiga hal diperiksa, satu benar-benar cacat

| yang diperiksa | hasil |
|---|---|
| resolusi | **1280x720**, padahal perangkat sanggup 1920x1080 → **cacat nyata** |
| rotasi | `rotation=-90`, matriks tampilan benar → **tidak ada masalah** |
| frame rate | 19,79 fps, bukan 30 → **bukan cacat**, lihat §4 |

Berkas uji: `2026-09-14-20-22-19-505.mp4`, 3.607.544 byte, h264 + aac,
durasi 1,976 s.

---

## 2. Perangkat memang sanggup 1080p

Dibaca dari `dumpsys media.camera` saat kamera terbuka — parameter HAL1 nyata,
bukan asumsi:

```
video-size-values            : 1920x1080, 1440x1080, 1280x960, 1280x720, …
preferred-preview-size-for-video : 1920x1080
video-size                   : 1920x1080
```

`media_profiles_V1_0.xml` juga mendeklarasikan profil yang sesuai:

```
high    1920x1080 @ 30 fps  h264  20000 kbps
1080p   1920x1080 @ 30 fps  h264  20000 kbps
720p    1280x720  @ 30 fps  h264  14000 kbps
```

Bitrate berkas hasil rekaman **14,44 Mbps**, cocok persis dengan profil 720p.
Jadi yang dipakai memang profil 720p, bukan `high`.

---

## 3. Kenapa 1080p tidak pernah sampai ke aplikasi

CameraX melaporkan apa yang dilihatnya:

```
QualitySelector: supportedQualities = [HD (1280x720), SD (720x480, 640x480)]
CamcorderProfileResolutionQuirk: mSupportedResolutions =
  [1440x1080, 1280x960, 1080x1080, 1280x720, 960x960, 960x720, 960x540,
   720x480, 640x480, 352x288, 320x240, 176x144]
```

Tidak ada FHD. Dan daftar itu **persis sama dengan `preview-size-values` dikurangi
dua yang terbesar** — `1920x1080` dan `1800x1080` (diverifikasi dengan aritmetika
himpunan: `quirk ⊂ preview`, selisihnya tepat kedua ukuran itu).

Penyebabnya ada di framework, bukan di device tree maupun blob:
`frameworks/base/core/java/android/hardware/camera2/legacy/LegacyMetadataMapper.java`
baris 287-320, sebuah workaround untuk bug AOSP **b/17589233**:

> *"Work-around the HAL limitations by removing all of the largest preview sizes
> until we get one with the same aspect ratio as the jpeg size."*

Perangkat ini diekspos ke camera2 sebagai **LEGACY** (`dumpsys media.camera`
berbunyi "Camera1 API shim is using parameters"), jadi seluruh karakteristik
camera2-nya disusun mapper itu dari parameter HAL1.

### 3.1 Rantainya direproduksi persis

`picture-size-values` terbesar menurut luas adalah `3264x2448` — rasio **4:3**.
Toleransinya `PREVIEW_ASPECT_RATIO_TOLERANCE = 0.01f` (baris 90). Loop
pembuangannya disimulasikan:

```
JPEG terbesar 3264x2448   AR = 1,3333
  1920x1080  AR 1,7778  selisih 0,4444  -> DIBUANG
  1800x1080  AR 1,6667  selisih 0,3333  -> DIBUANG
  1440x1080  AR 1,3333  selisih 0,0000  -> cocok, loop BERHENTI
```

Hasil simulasi **identik** dengan daftar yang dilaporkan CameraX.

Jadi: karena foto terbesar perangkat ini 4:3, mapper membuang setiap ukuran
preview 16:9 yang lebih besar dari ukuran 4:3 pertama. `1920x1080` adalah
satu-satunya entri 1080p, sehingga camera2 tidak pernah melihat FHD dan CameraX
mundur ke HD.

Perangkat sebenarnya **punya** ukuran foto 16:9 (`3264x1840`, `3264x1836`),
tetapi mapper memakai yang terbesar menurut **luas**, dan itu 4:3.

### 3.2 Hubungannya dengan T-B8

Ini kelas cacat yang sama dengan `b471185` di proyek LOS 23.2 — di sana
"ukuran diiklankan tanpa memeriksa kemampuan rekam … `video_sizes` diambil lalu
TIDAK PERNAH dipakai". Basis kodenya berbeda (adapter HAL3on1 vs mapper LEGACY
framework), tetapi kesalahannya sejenis: konfigurasi stream disusun dari ukuran
**preview** saja, sementara `getSupportedVideoSizes()` diabaikan.

---

## 4. Frame rate 19,79 fps BUKAN cacat

Ini sempat terlihat seperti cacat kedua, dan commit `69da1d9` proyek 23.2
memang melaporkan gejala yang mirip ("19-20 fps pada 720p"). Pengukuran di sini
menunjukkan sebab yang berbeda.

Interval antar-frame di berkas hasil rekaman:

```
39 frame, durasi 1,920 s, fps efektif 19,79
interval rata-rata 50,5 ms   (min 47,4   maks 55,9)
sebaran:  50 ms x37     60 ms x1
```

**Sangat seragam.** Pipeline yang kepayahan menghasilkan interval yang
berantakan; 37 dari 38 interval tepat di ~50 ms berarti frame rate-nya
**dikunci**, bukan tertinggal.

50 ms adalah tepat 20 fps, dan itu berada di dalam rentang yang diiklankan HAL:

```
preview-fps-range-values: (7500,30000),(8000,30000)
```

Tidak ada rentang TETAP di situ — hanya rentang, sehingga auto-exposure bebas
memilih laju mana pun antara 7,5 dan 30 fps.

Bukti kondisi cahayanya diambil dari EXIF foto yang dipotret **14 detik
sebelum** video itu:

```
ExposureTime  1/33 s  (30,3 ms)
ISO           805
Flash         tidak menyala
```

ISO 805 pada 1/33 s adalah cahaya dalam ruangan yang redup. Pada tingkat itu AE
memang memanjangkan waktu pencahayaan, dan 50 ms per frame adalah konsekuensi
wajarnya. **Diperkirakan mencapai 30 fps di cahaya terang** — belum diuji.

---

## 5. Kemungkinan perbaikan, dan pertukarannya

Satu-satunya titik sentuh adalah `LegacyMetadataMapper.java`, yaitu patch
`frameworks/base`. Gagasannya: setelah loop pembuangan, **kembalikan ukuran yang
ada di `p.getSupportedVideoSizes()`** sebelum menyusun konfigurasi stream.

Itu menjaga maksud asli workaround b/17589233 (konsistensi rasio aspek untuk
fokus dan metering) sekaligus tidak mematikan kemampuan rekam.

**Pertukarannya harus disebut terus terang:** `IMPLEMENTATION_DEFINED` adalah
format yang sama untuk permukaan preview dan perekam, jadi mengembalikan
`1920x1080` juga membuatnya bisa dipilih sebagai ukuran **preview**. Itulah
persis yang ingin dihindari workaround tersebut — area metering dan fokus bisa
terpotong sewenang-wenang ketika rasio preview berbeda dari rasio JPEG.

Perlu diukur setelah diterapkan, bukan diasumsikan:

1. apakah CameraX kini menawarkan FHD dan hasilnya benar-benar 1920x1080;
2. apakah rekaman 1080p sanggup mempertahankan fps yang wajar, atau justru
   turun jauh seperti 13,4 fps yang diukur proyek 23.2 pada 1080p;
3. apakah akurasi tap-to-focus dan metering memburuk.

Butuh build ulang penuh dan flash.

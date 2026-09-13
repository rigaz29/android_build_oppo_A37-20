# Fase 7 — audit closure sebelum flash

Dikerjakan **13 September 2026**. **Selesai — dan ia membatalkan Fase 4.**

---

## 1. Hasil

```
AUDIT 1 — DT_NEEDED     11 temuan, 11 sudah ditriase, NOL yang baru    BERSIH
AUDIT 2 — nama dlopen    2 kandidat, keduanya keputusan sadar Fase 0
```

Tetapi hasil terpenting fase ini bukan angka itu.

---

## 2. Temuan utama: premis Fase 4 salah, dan kamera dikembalikan ke passthrough

Audit ini menemukan bahwa **`cameraserver` tidak ada di ROM ini sama sekali**:

```
bin/cameraserver          TIDAK DIKIRIM
bin/mediaserver           ELF 32-bit LSB pie executable
lib/libcameraservice.so   ELF 32-bit saja
```

Di LOS 20 servis kamera ditaut **ke dalam `mediaserver`**:
`vendor/lineage/build/soong/Android.bp:326` `camera_in_mediaserver_defaults`
bergerbang `has_legacy_camera_hal1` dan berisi `overrides: ["cameraserver"]` —
dihidupkan oleh **seri patch kita sendiri** (`vendor_lineage/0010`). Dan
`mediaserver` ber-`compile_multilib: "prefer32"` dari AOSP sendiri, jadi **32-bit
bahkan pada `TARGET_ARCH=arm64`**.

Fase 4 berangkat dari klaim *"cameraserver di build arm64 adalah proses 64-bit,
jadi passthrough mati secara arsitektural"*. Klien HAL kameranya 32-bit;
**passthrough tidak pernah mati.**

Kamera dikembalikan ke passthrough (`f490492`), karena jalur itu **terbukti jalan
di perangkat ini** sedangkan hwbinder punya riwayat layar hitam
(`20260803_161352`) dengan akar yang tidak pernah ditemukan.

> **Pelajaran:** jangan menyimpulkan dari nama proses tanpa memeriksa apakah proses
> itu benar-benar ada di image. `HANDOFF.md` §7 sudah memperingatkannya —
> *"'dibaca' bukan 'dipakai'"* — dan tetap dilanggar.

---

## 3. Dua jenis audit, dan kenapa satu tidak cukup

Diangkat dari `fase-5` proyek LOS 23.2, dengan tiga perubahan untuk LOS 20:

| | |
|---|---|
| **APEX diindeks, bukan diabaikan** | Di 23.2 penghuni APEX muncul sebagai "hilang" palsu karena APEX di `out/` masih berbentuk `.apex`. Di pohon ini ke-26 APEX sudah terekstrak, jadi `libnativehelper`, `libicu`, `libsigchain` dan kawan-kawan diselesaikan sungguhan |
| **"SYSONLY" bukan kegagalan** | `BOARD_VNDK_VERSION` tidak disetel, jadi proses vendor memang boleh menaut pustaka platform (Fase 5 §4) |
| **Audit kedua ditambahkan** | Audit `DT_NEEDED` saja **melewatkan `librpmb.so`** di proyek 23.2, karena `qseecomd` memuatnya lewat `dlopen("librpmb.so")` dan nama itu hanya ada sebagai string di dalam biner |

---

## 4. Sebelas temuan `DT_NEEDED`, kesebelasnya diterima

| Temuan | Alasan diterima |
|---|---|
| `android.hidl.base@1.0.so` 32-bit ×5 | Dituntut lima pustaka `vendor.qti.hardware.iop` (perf boost). **HAL iop sudah dibuang** dari `manifest.xml` LOS 20 — `hidl.base` datang lewat `hardware/lineage/compat` ke `system_ext/lib`, dan namespace linker vendor tidak menjangkau `system_ext`. Nol konsumen; pustakanya inert |
| `libmmsw_*.so` 32-bit ×4 | Dituntut `lib/libvpplibrary.so` (video post-processing). OPPO tidak pernah mengirimnya. Diterima juga oleh 23.2 |
| `libcameraservice.so` 64-bit | Dituntut `vendor/lib64/lib-imscamera.so`. IMS inert sejak `ims.apk` dibuang — dan `libcameraservice` memang hanya 32-bit, lihat §2 |
| `libvcel.so` 64-bit | Dituntut `lib-imsvt.so` (IMS video telephony). Tidak tersedia di repo mana pun |

Daftar ini tertulis di dalam `audit-closure.sh` sebagai **daftar-terima**, sehingga
penjaga ini `exit 0` untuk yang sudah ditriase dan **hanya gagal untuk temuan
BARU**. Menambah entri menuntut alasan tertulis.

---

## 5. Dua kandidat `dlopen`, keduanya keputusan sadar

```
libOpenCL.so            disebut vendor/lib/egl/libRBEGL_adreno.so
libRSDriver_adreno.so   disebut vendor/lib/hw/android.hardware.renderscript@1.0-impl.so
```

Keduanya konsekuensi keputusan Fase 0: rantai RenderScript **tidak** dibawa ke
32-bit, ongkosnya 20,0 MB (`fase-0/rantai-renderscript-32bit.txt`). Akibatnya
RenderScript di proses aplikasi 32-bit mundur ke `libRSCpuRef` — **lebih lambat,
tidak rusak**. Proyek 23.2 mencatat `dlopen` menggantung yang sama (fase-5 §8.c).

⚠️ Berbeda dari 23.2 dalam satu hal: di sana tidak ada proses aplikasi 32-bit sama
sekali (`ZYGOTE_FORCE_64`), jadi jalur itu tidak pernah dimuat. Di sini
`zygote64_32` berarti jalur itu **bisa** dimuat. Kalau Fase 8 menemukan aplikasi
yang memakai RenderScript terasa lambat, 20,0 MB itu jawabannya.

---

## 6. Positif palsu yang saya buat sendiri

Putaran pertama audit melaporkan tiga "hilang" yang sebenarnya ada:
`vendor.lineage.livedisplay@2.0.so`, `vendor.lineage.trust@1.0.so`,
`android.hardware.graphics.composer@2.1-resources.so` — ketiganya di
`system_ext/lib64`, yang **tidak saya indeks**. `system_ext` dan `product` ikut di
jalur pencarian linker; keduanya kini diindeks, dan alasannya ditulis di dalam
skrip.

---

## 7. Yang fase ini TIDAK membuktikan

ROM masih **belum di-flash dan belum di-boot**. Audit closure menjawab pertanyaan
*"apakah ada pustaka yang hilang saat dimuat"* — bukan *"apakah HAL-nya bekerja"*.
Kamera khususnya: yang dipulihkan adalah konfigurasi yang terbukti di ROM 32-bit,
tetapi **belum pernah diuji di ROM 64-bit**.

---

## 8. Berkas

```
audit-closure.sh    dua audit + daftar-terima, exit 0 bila nol temuan baru
hasil-audit.txt     keluaran terakhir (ROM 20260913_225500)
```

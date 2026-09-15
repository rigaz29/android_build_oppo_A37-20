# Nama zip ROM berbohong: semuanya satu inode

Ditemukan **15 September 2026**, saat menyiapkan link unduhan.

## Gejalanya

Zip build baru di-hardlink ke folder unduhan, dan link count-nya melonjak
12 → 13. Bukan 1 → 2. Artinya inode itu sudah punya dua belas nama.

```
$ stat -c '%i  %.19y  %n' out/target/product/A37/lineage-20.0-*.zip
6295730  2026-09-15 09:44:09  lineage-20.0-20260913_180619-UNOFFICIAL-A37.zip
6295730  2026-09-15 09:44:09  lineage-20.0-20260913_225500-UNOFFICIAL-A37.zip
6295730  2026-09-15 09:44:09  lineage-20.0-20260914_024116-UNOFFICIAL-A37.zip
...
6295730  2026-09-15 09:44:09  lineage-20.0-20260915_093647-UNOFFICIAL-A37.zip
```

**Sepuluh nama bertanggal berbeda, satu inode, satu mtime.** Sistem build
LineageOS menulis ulang zip OTA **di tempat** melalui hardlink yang sudah ada,
jadi setiap build baru diam-diam mengubah isi seluruh nama lama.

## Buktinya paling telak

Berkas lama gagal diperiksa terhadap `sha256` yang dicatat saat ia dibuat:

```
$ sha256sum -c lineage-20.0-20260915_003358-UNOFFICIAL-A37.zip.sha256
lineage-20.0-20260915_003358-UNOFFICIAL-A37.zip: FAILED
```

## Kenapa ini berbahaya

Folder unduhan `/root/a37-dl` menawarkan zip "build sebelumnya yang sudah
terbukti". Nama itu **bukan** build itu lagi — ia build terbaru. Siapa pun yang
sengaja mengunduh versi lama untuk kembali ke kondisi yang diketahui baik justru
mendapat yang terbaru. Tidak ada satu pun pesan yang memberi tahu.

Ini juga menjelaskan pengamatan lama yang sempat membingungkan: `du -ch` atas
sembilan zip @721 MB berjumlah **721 MB**, bukan 6,5 GB. Dulu itu ditafsirkan
sekadar "hardlink, jadi hemat tempat". Tafsiran itu benar soal tempat, tapi
melewatkan akibatnya yang jauh lebih penting: **tidak ada arsip build lama sama
sekali.**

Sudah pernah menggigit sekali dengan cara lain: `ls -t` memilih zip TERTUA
karena mtime seluruh nama seri. Waktu itu diperbaiki dengan `sort | tail -1`
tanpa menyelidiki kenapa mtime-nya bisa seri.

## Yang dilakukan

Folder unduhan hanya menawarkan **satu** zip — yang terbaru. Nama lama dihapus
supaya tidak ada nama yang menyesatkan.

## Yang harus diingat

- **Zip build lama tidak ada.** Kalau suatu build perlu disimpan sungguhan,
  harus `cp` (bukan `ln`) ke luar `out/`, sebelum build berikutnya.
- Jangan percaya tanggal pada nama zip di `out/`. Percaya `sha256`-nya.

# Layak tidak membackport f2fs / ext4 versi baru?

Ditelusuri 15 Sep 2026. **Jawaban singkat: ext4 tidak sama sekali, f2fs hampir
tidak.** Alasannya di bawah, dengan angkanya.

## 1. ext4 di perangkat ini praktis HANYA-BACA

Ini yang menggugurkan seluruh gagasannya, dan baru terlihat setelah melihat
`/proc/mounts`, bukan dari daftar fitur:

| mount | partisi | sifat |
|---|---|---|
| `/` dan **26 mount `/apex/*`** | `mmcblk0p24` | hanya-baca |
| `/cache` | `mmcblk0p26` | nyaris tak terpakai |
| `/persist` | `mmcblk0p27` | kecil, jarang ditulis |
| **`/data` dan seluruh turunannya** | `mmcblk0p38` | **f2fs**, bukan ext4 |

Perbaikan besar ext4 pasca-3.10 hampir semuanya di jalur TULIS --
`fast_commit` (5.10), iomap DIO, delayed allocation yang lebih baik. Di
perangkat yang ext4-nya hanya-baca, itu memberi nol.

## 2. f2fs di sini BUKAN versi 3.10

Dugaan "kernel 3.10 berarti f2fs kuno" salah. Yang ada sudah setara **4.13-4.14**:

- berkas yang hadir: `extent_cache.c` (4.2), `shrinker.c` (4.1), `sysfs.c` (4.13)
- flag fitur: `EXTRA_ATTR`, `INODE_CHKSUM`, `FLEXIBLE_INLINE_XATTR`,
  `QUOTA_INO`, `PRJQUOTA` -- semuanya mendarat di 4.13-4.14
- `f2fs.h` 99,6 KB, `segment.c` 102 KB

QCOM/LineageOS sudah mengerjakan backport besarnya. Yang tersisa adalah selisih
4.14 -> 5.x, dan itu sebagian besar **fitur, bukan kecepatan**.

## 3. Opsi mount sudah optimal

```
rw,lazytime,noatime,background_gc=on,discard,no_heap,user_xattr,inline_xattr,
acl,inline_data,inline_dentry,flush_merge,extent_cache,mode=adaptive,active_logs=6
```

Tidak ada rezeki setelan yang tertinggal: `lazytime`, `noatime`, ketiga
`inline_*`, `flush_merge` (penggabungan flush untuk fsync), `extent_cache`,
`mode=adaptive` sudah menyala semua.

## 4. Diukur: f2fs bukan leher botolnya

| ukuran | hasil | penilaian |
|---|---|---|
| buat 2000 berkas | 244 ms (8,2 rb/detik) | sehat |
| hapus 2000 berkas | 201 ms (10 rb/detik) | sehat |
| tulis berurutan 200 MB + fsync | 35 MB/s | batas eMMC |
| baca blok mentah 200 MB | 103 MB/s | batas eMMC |
| **fsync** | **~3,3 ms** | wajar untuk eMMC |
| ruang `/data` | 1,5 G dari 11 G (**14%**) | lega, GC tidak tertekan |

Catatan metode untuk fsync: memanggil `dd` 200 kali lewat `adb shell` didominasi
ongkos fork/exec, terukur 32,57 ms per iterasi TANPA fsync. Angka 3,3 ms itu
selisih terhadap versi ber-fsync (36,08 ms), bukan pembacaan langsung. Kasar,
tapi ordenya benar. (`date +%s%N` tidak berguna di toybox -- memberi nilai
negatif; waktu diambil dari sisi host.)

Semua angka itu berbau batas perangkat keras, bukan batas kode.

## 5. Yang benar-benar hilang pasca-4.14

Fitur: `INODE_CRTIME` (4.17), `LOST_FOUND` (4.17), `SB_CHKSUM` (5.1),
`CASEFOLD` (5.4), `VERITY` (5.4), `COMPRESSION` (5.6).
Opsi mount: `checkpoint`, `compress_algorithm`, `compress_extension`,
`whint_mode`, `alloc_mode`, `fsync_mode`.

Dari semuanya, hanya dua yang menyentuh performa:

### a. `fsync_mode` (4.17) -- satu-satunya kandidat murah

Backport kecil. `fsync_mode=nobarrier` melewatkan flush cache perangkat saat
fsync. Dengan fsync terukur ~3,3 ms dan SQLite aplikasi yang sering commit,
ini bisa terasa.

**Tapi ini menukar ketahanan terhadap mati listrik mendadak dengan kecepatan.**
Itu keputusan sadar pemilik perangkat, bukan optimasi gratis, dan tidak pantas
diambil diam-diam.

### b. Kompresi (5.6) -- imbalan terbesar, ongkos terbesar

Di eMMC lambat, menulis lebih sedikit byte memang menang. Tetapi butuh tiga
hal sekaligus: backport f2fs era-5.6 (besar dan berisiko -- ini sistem berkas,
kegagalannya berarti data hilang), `mkfs.f2fs` baru, dan **format ulang
`/data`** karena flag fiturnya ditulis saat pembuatan. Format ulang = data
pengguna hilang.

## Kesimpulan

Jangan. Backport f2fs besar-besaran menaruh risiko kehilangan data untuk
mengejar sesuatu yang pengukurannya tidak menunjukkan ada masalah. Bandingkan
dengan `-Os -> -O2` yang baru selesai: satu baris defconfig, terukur -5,9% di
jalur jaringan, risiko nol.

Kalau suatu saat `/data` memang terbukti jadi leher botol -- misalnya ruangnya
menipis sampai GC f2fs tertekan -- ukur ulang dulu sebelum menyentuh kode
sistem berkas.

---

# Ditinjau ulang khusus ext4 (15 Sep 2026): tetap tidak ada yang dikejar

Kesimpulan awal bertumpu pada "ext4 hanya-baca", dan itu belum menyentuh
pertanyaan apakah **jalur bacanya** tertinggal. Ditinjau ulang, dan ternyata
memang ada celah kode -- tapi celah itu tidak berbiaya.

## Celahnya nyata

```c
fs/ext4/inode.c:3046
return mpage_readpages(mapping, pages, nr_pages, ext4_get_block);
```

Ini `mpage_readpages()` **generik** dari `fs/mpage.c`. ext4 punya versinya
sendiri sejak 3.19 (`ext4_mpage_readpages`, di `fs/ext4/readpage.c`), dan
berkas itu tidak ada di sini. Jadi jalur baca ext4 kita memang pra-3.19.

## Tetapi tidak berbiaya, diukur

Berkas 30.394.368 byte yang **tidak dipetakan proses mana pun**, cache dibuang
tiap kali, frekuensi dikunci performance:

| jalan | ext4 (`/system`) | f2fs (`/data`) |
|---|---|---|
| 1 | 134 MB/s | 138 MB/s |
| 2 | 135 MB/s | 138 MB/s |
| 3 | 135 MB/s | 138 MB/s |

Selisih 2,5%, dan keduanya mentok di batas eMMC. `ext4_mpage_readpages`
memang lahir untuk mendukung enkripsi, bukan untuk mempercepat -- ia salinan
`mpage_readpages` yang dikhususkan. Hasil di atas cocok dengan itu.

## Pelajaran metode: pengukuran pertama saya TIDAK SAH

Percobaan pertama memakai `/system/framework/framework.jar` dan memberi
**739 MB/s**. Itu mustahil: antarmuka eMMC HS200 puncaknya 200 MB/s, dan baca
blok mentah di perangkat ini terukur 103 MB/s. Angka yang secara fisik
mustahil adalah tanda pengukurannya yang salah, bukan temuan.

Sebabnya: `framework.jar` di-mmap zygote dan setiap proses aplikasi, dan
`drop_caches` TIDAK membuang halaman yang sedang dipetakan. Jadi yang terbaca
RAM, bukan eMMC.

Cara memilih berkas uji yang benar -- kumpulkan dulu semua yang dipetakan,
lalu ambil yang bukan salah satunya:

```sh
cat /proc/*/maps | awk '{print $NF}' | grep '^/' | sort -u > mapped.txt
find /system -type f -size +15M | while read f; do
    grep -qxF "$f" mapped.txt || echo "$f"
done
```

## Kesimpulan tetap

Tiga alasan, dan ketiganya berdiri sendiri:

1. ext4 di perangkat ini hanya-baca (`/`, 26 mount `/apex/*`, `/cache`,
   `/persist`), sedangkan perbaikan besar ext4 pasca-3.10 hampir semuanya di
   jalur TULIS -- `fast_commit` (5.10), iomap DIO, delalloc yang lebih baik.
2. Satu-satunya celah jalur baca yang ada tidak terukur biayanya: 135 vs
   138 MB/s, keduanya batas perangkat keras.
3. Tidak ada keluhan nyata yang menunjuk ke ext4.

Backport ext4: **tidak ada yang pantas dikejar.**

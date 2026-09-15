# Kompresi f2fs: DIBATALKAN, dengan buktinya

Dinilai 15 Sep 2026 atas permintaan pemilik perangkat ("kerjakan compression,
kalau mustahil dilakukan, batalkan saja"). Hasilnya: **mustahil pada
risiko/usaha yang masuk akal.** Bukan karena f2fs-nya tua.

## Satu penghalang yang gugur

`external/f2fs-tools` di tree **sudah mendukung** kompresi: `mkfs.f2fs -O
compression` dan `sload` berkompresi ada (`f2fs_fs.h` menyebut `struct
compress_data`, `COMPRESS_HEADER_SIZE`, `struct compress_ctx`). Jadi alat
formatnya bukan masalah.

## Penghalang yang tidak gugur: API bio kernel ini masih 3.10

Ini akar persoalannya, dan baru terlihat setelah membaca jalur baca f2fs:

```c
fs/f2fs/data.c:53
static void f2fs_read_end_io(struct bio *bio, int err)   <- bentuk ber-argumen err
```

Bentuk `(bio, err)` itu **dihapus di kernel 4.3**, diganti `bi_error`, lalu
`bi_status` di 4.13. `include/linux/blk_types.h` di sini masih punya
`bi_sector` dan `bi_size`, dan tidak punya keduanya.

## Rantai ketergantungan yang harus dipenuhi seluruhnya

Kompresi f2fs (5.6) dibangun di atas `f2fs_read_multi_pages()`, yang dibangun
di atas `struct decompress_io_ctx`, yang dibangun di atas `struct
bio_post_read_ctx` dengan langkah `STEP_DECOMPRESS`.

Di kernel ini fondasi itu **tidak ada satu pun**:

| simbol | kemunculan di `fs/f2fs/data.c` |
|---|---|
| `bio_post_read_ctx` | **0** |
| `f2fs_post_read_work` | **0** |
| `post_read_steps` | **0** |
| `STEP_DECRYPT` | **0** |

Dekripsi di sini masih cara lama, langsung di dalam end_io:

```c
fs/f2fs/data.c:69
fscrypt_decrypt_bio_pages(bio->bi_private, bio);
```

`bio_post_read_ctx` mendarat di **4.19** (commit 6dbb17961f46, "f2fs: refactor
read path to allow multiple postprocessing steps"), dan refaktor itu sendiri
ditulis untuk API bio 4.13+.

## Jadi urutan pekerjaannya

1. Backport API bio blok 3.10 -> 4.13+ **menyentuh seluruh kernel** (setiap
   sistem berkas dan setiap driver blok), ATAU tulis ulang refaktor 4.19 dengan
   tangan melawan API bio 3.10
2. Backport refaktor jalur baca 4.19
3. Backport perubahan f2fs 4.14 -> 5.6 di `data.c`, `file.c`, `inode.c`,
   `node.c`, `segment.c`
4. Tambah `compress.c` (~1.700 baris) plus backend LZO/LZ4/ZSTD
5. Buat **54 titik sentuh `data_blkaddr`** sadar-cluster dan sadar
   `COMPRESS_ADDR`:

   ```
   data.c 26   file.c 13   segment.c 4   gc.c 3   inline.c 3
   extent_cache.c 2   node.c 2   recovery.c 1
   ```

6. Format ulang `/data` dengan `-O compression` -- flag fitur ditulis saat
   pembuatan, jadi **seluruh data pengguna hilang**

## Dan imbalannya pun tidak jelas

Kompresi menang di eMMC lambat karena byte yang ditulis lebih sedikit. Tetapi
ia membayarnya dengan CPU, dan CPU justru yang paling tidak kita punya
lebihnya: empat Cortex-A53 di 1,2 GHz. Kompresi pada jalur tulis panas bisa
saja menjadikannya lebih lambat, bukan lebih cepat, dan itu baru ketahuan
SETELAH seluruh pekerjaan di atas selesai dan data pengguna sudah dihapus.

## Bandingkan dengan yang sudah dikerjakan hari ini

| pekerjaan | usaha | risiko | hasil terukur |
|---|---|---|---|
| `-Os` -> `-O2` | 1 baris defconfig | nol | **-5,9%** jalur jaringan |
| `fsync_mode` | 3 berkas, 69 baris | rendah, default tak berubah | **1,40 ms**/fsync |
| kompresi f2fs | 6 langkah di atas | **kehilangan data** | tidak diketahui, bisa negatif |

Menaruh risiko kehilangan data pada sistem berkas untuk hasil yang belum tentu
positif bukan keputusan yang pantas diambil. **Dibatalkan.**

## Kalau suatu saat mau dilanjutkan

Prasyaratnya bukan "backport f2fs" melainkan **"backport API bio"**. Selama
`f2fs_read_end_io()` masih berbentuk `(bio, err)`, seluruh jalur post-read
modern tidak bisa dipasang, dan kompresi ikut mustahil. Kerjakan itu dulu,
sebagai proyek tersendiri, dengan tolok ukurnya sendiri.

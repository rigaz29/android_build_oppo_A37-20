# Apakah zram berfungsi normal?

Diuji 16 Sep 2026, kernel `g5c571181dff` (-O2 + fsync_mode).
**Ya, dan lebih baik dari sekadar "berfungsi".**

## Kenapa perlu diuji sama sekali

Sekilas zram tampak mati: `/proc/swaps` menunjukkan `Used 0`, dan `mm_stat`
hanya berisi satu halaman seumur boot. Tetapi itu bukan bukti kerusakan --
`MemFree` saat itu 785 MB dari 1,88 GB. **Tidak ada tekanan, jadi tidak ada
yang perlu di-swap.** Diam bukan rusak.

Membuktikannya butuh tekanan sungguhan.

## Cara menekan tanpa mengganggu aplikasi

Halaman **tmpfs bisa di-swap**, jadi mengisi tmpfs adalah cara bersih menekan
memori tanpa menyentuh proses mana pun. `/dev` di perangkat ini tmpfs dengan
931 MB tersedia.

```sh
dd if=/dev/zero of=/dev/ztest bs=1M count=$mb    # $mb dinaikkan bertahap
```

## Hasil

| tmpfs | MemFree | SwapFree | swap terpakai |
|---|---|---|---|
| 0 | 766 MB | 768,0 MB | 0 |
| 200 MB | 564 MB | 768,0 MB | 0 |
| 400 MB | 374 MB | 768,0 MB | 0 |
| 600 MB | 174 MB | 768,0 MB | 0 |
| **800 MB** | **26 MB** | **736,4 MB** | **31,6 MB** |
| 900 MB | 27 MB | | 112,8 MB |
| 1000 MB | 22 MB | | 127,3 MB |

zram mulai bekerja tepat saat `MemFree` menipis, bukan sebelum atau sesudah.
Perilaku yang benar.

## Angka yang tampak tidak cocok, dan penjelasannya

Pada puncaknya `/proc/swaps` melaporkan 127,3 MB terpakai, tetapi `mm_stat`
hanya menyebut `orig=29,2 MB`. Itu bukan kekeliruan:

```
orig=29,2MB  compr=8,7MB  mem_used=9,5MB  same_pages=24879 (97,2MB)
```

`same_pages` adalah halaman nol/seragam yang disimpan sebagai **penanda**, bukan
data -- biayanya nyaris nol. 97,2 + 29,2 = 126,4 MB, cocok dengan 127,3 MB.

## Batas uji ini, yang harus disebut

77% halaman yang di-swap adalah **halaman nol**, karena sumbernya `/dev/zero`.
Jadi rasio kompresi 3,37x di atas adalah **kasus terbaik, bukan gambaran
nyata**. Pada memori aplikasi sungguhan lz4 lazimnya 2-2,5x. Uji ini
membuktikan zram BEKERJA; ia tidak mengukur seberapa besar keuntungannya
sehari-hari.

## Temuan sampingan yang justru paling berharga

**lmkd tidak membunuh satu pun proses selama seluruh uji.** `logcat | grep -c
killinfo` = **0**, padahal sistem menyerap ~1 GB tekanan sampai `MemFree`
tinggal 22 MB.

Bandingkan dengan keadaan yang dicatat di `temuan-lmkd-membunuh-foreground/`:
dulu 23 pembunuhan dalam satu boot, termasuk aplikasi yang sedang di layar,
padahal memori masih lega. Perbaikan itu terbukti bertahan di bawah tekanan
nyata, bukan cuma di keadaan santai.

## Pemulihan

Berkas dihapus, lalu: `MemFree` 872 MB, swap terpakai turun 127,3 -> 30,9 MB.
Sisa 30,9 MB itu data aplikasi sungguhan yang ikut ter-swap dan belum
di-fault kembali -- normal, akan kembali sendiri saat diakses. 0 oops,
`sys.boot_completed=1`.

## Kesimpulan

zram: **normal**. Algoritma `lz4` (pilihan yang benar -- lebih cepat dari
`lzo` pada CPU selemah ini), disksize 768 MB, dialokasikan malas sehingga
`mem_used_max` hanya 9,5 MB selama uji -- tidak ada RAM terbuang saat menganggur.

Bahwa ia jarang terpakai sehari-hari bukan cacat, melainkan tanda perangkat
punya kelonggaran memori.

---

# Lanjutan: apakah swappiness sudah optimal?

**Sudah, dan tidak bisa dinaikkan lewat sysctl -- 100 adalah PLAFON kernel ini.**

```
kernel/sysctl.c:1394-1400
	.procname = "swappiness",
	.extra1   = &zero,
	.extra2   = &one_hundred,     <- batas atas
mm/vmscan.c:140
	int vm_swappiness = 60;       <- default kernel
```

Nilai 100 disetel sengaja 14 Sep 2026 (`init.target.rc:86`) dengan alasan yang
masih berlaku: 60 adalah default untuk swap ke **disk**, sedangkan di sini
swap-nya ke RAM terkompresi.

## Plafonnya bisa dinaikkan, dan itu satu baris -- tapi jangan

Rumus reclaim 3.10 sudah sanggup menangani nilai di atas 100:

```c
mm/vmscan.c:2066
	anon_prio = vmscan_swappiness(sc);
	file_prio = 200 - anon_prio;
```

Jadi mengganti `&one_hundred` menjadi `&two_hundred` cukup untuk membuka
sampai 200. Secara teknis mungkin.

Tetapi pada 200, `file_prio` menjadi **0** -- kernel tidak akan pernah lagi
me-reclaim halaman berkas. Seluruh tekanan dialihkan ke zram 768 MB, padahal
page cache di sini memegang kode yang di-mmap (framework.jar, boot image ART).
Itu menukar risiko thrashing dan OOM demi sesuatu yang **tidak ada buktinya
dibutuhkan**: di bawah ~1 GB tekanan, perilaku pada swappiness 100 sudah benar
-- zram menyala tepat waktu, nol pembunuhan lmkd, pulih bersih.

## Setelan tetangganya

| tunable | nilai | penilaian |
|---|---|---|
| `page-cluster` | 0 | **benar**. Readahead swap-in tidak masuk akal untuk zram -- sumbernya RAM, prefetch hanya membuang CPU |
| `vfs_cache_pressure` | 65 | wajar; menahan cache dentry/inode lebih lama daripada default 100 |
| `min_free_kbytes` | 4096 | sedikit konservatif, lihat catatan di bawah |
| `extra_free_kbytes` | 8192 | menaikkan watermark low, jadi ambang reclaim efektifnya lebih tinggi dari angka di atas |

### KOREKSI soal min_free_kbytes

Saya sempat menghitung default kernel untuk perangkat ini sebagai **22229 kB**
dan itu **SALAH** -- rumusnya saya ingat keliru sebagai `4 * sqrt(x*16)`,
padahal komentar kernelnya sendiri menyebut dua bentuk yang setara:

```
mm/page_alloc.c:5637
 * min_free_kbytes = 4 * sqrt(lowmem_kbytes), for better accuracy:
 * min_free_kbytes = sqrt(lowmem_kbytes * 16)
```

Keduanya sama; saya mengalikan 4 pada bentuk yang sudah mengandungnya. Tabel
di kernel menyebut **2048MB -> 5792k**, jadi 4096 kB kira-kira setara default
untuk perangkat 1 GB yang dipakai di perangkat 2 GB. Konservatif, bukan janggal
-- dan uji tekanan menunjukkan tidak menimbulkan masalah: `MemFree` sempat
tinggal 22 MB tanpa satu pun pembunuhan maupun oops.

Tidak ada bukti yang menuntut perubahan.

# Tiga penyetelan memori: dua dikerjakan, satu ditahan

Dikerjakan **15 September 2026**. Tidak satu pun diambil apa adanya dari a6010 —
dua perlu dikoreksi, satu ternyata rusak.

---

## 1. `pgscan_kswapd` / `pgscan_direct` untuk lmkd — ✅

### Kenapa ini bukan kosmetik

lmkd Android 13 membaca dua nama **datar** dari `/proc/vmstat`:

```c
/* system/memory/lmkd/lmkd.cpp:477-478 */
"pgscan_kswapd",
"pgscan_direct",
```

Kernel ini hanya mengekspor bentuk per-zona (`pgscan_kswapd_dma`, `_normal`,
`_movable`), jadi kedua field itu **selalu terbaca 0**. Akibatnya seluruh blok
penentuan reclaim state di lmkd mati:

```c
/* lmkd.cpp:2651-2657 */
if (vs.field.pgscan_direct > init_pgscan_direct) {      /* tidak pernah */
    reclaim = DIRECT_RECLAIM;
} else if (vs.field.pgscan_kswapd > init_pgscan_kswapd) { /* tidak pernah */
    reclaim = KSWAPD_RECLAIM;
}
```

`reclaim` selamanya `NO_RECLAIM`. Dua akibat yang bisa ditunjuk barisnya:

| baris | yang mati |
|---|---|
| `lmkd.cpp:2795` | alasan pembunuhan `DIRECT_RECL_AND_THRASHING` tidak pernah terpicu |
| `lmkd.cpp:2865` | polling tidak pernah dinaikkan saat direct reclaim |

Terbukti di perangkat: lmkd **aktif membunuh proses**, tetapi **nol** catatan
thrashing maupun direct reclaim.

### Yang dilakukan, dan bedanya dari a6010

Slot zona **terakhir** dinamai ulang jadi nama datar, lalu diisi jumlah seluruh
zona.

a6010 mengisinya di `vmstat_next()`. Itu punya lubang: `seq_file` memanggil
ulang `start()` dengan posisi tersimpan setiap kali buffer keluaran penuh, dan
`/proc/vmstat` jauh lebih besar dari satu buffer — kalau batas buffer jatuh
tepat di entri ini, nilainya terbaca mentah (0). Di sini pengisian dilakukan di
**`vmstat_start()`**, satu kali per pembukaan, sehingga benar di semua jalur.

Panjang blok zona tidak ditulis tangan, melainkan dihitung kompiler dari jarak
dua blok `FOR_ALL_ZONES` yang bersebelahan:

```c
for (i = 1; i < PGSCAN_DIRECT_MOVABLE - PGSCAN_KSWAPD_MOVABLE; i++) {
        v[PGSCAN_KSWAPD_MOVABLE] += v[PGSCAN_KSWAPD_MOVABLE - i];
        v[PGSCAN_DIRECT_MOVABLE] += v[PGSCAN_DIRECT_MOVABLE - i];
}
```

Ongkosnya `pgscan_kswapd_movable` dan `pgscan_direct_movable` tidak lagi muncul.
Di perangkat ini itu gratis: **hanya zona DMA yang nyata** (524288 halaman);
`Normal` dan `Movable` tidak punya satu halaman pun.

---

## 2. Force-`SCAN_ANON` diberi syarat — ✅, tapi BUKAN versi a6010

a6010 memakai `0bf1457f0cfc`, yang **membuang** penjaga force-`SCAN_ANON`
seluruhnya. Patch itu **sudah di-revert upstream oleh penulisnya sendiri**:

> `623762517e23` — *"...it introduced a regression in mostly-anonymous
> workloads, where reclaim would become ineffective and trap every allocating
> task in direct reclaim... the cure is obviously worse than the disease."*

Perangkat ini **persis** beban itu:

```
zram 768 MB, swappiness 100
Mem: 1886 total, 1829 used, cache hanya 63 MB
```

Jadi yang dipakai penggantinya, upstream `06226226773d` ("mm, vmscan: avoid
thrashing anon lru when free + file is low"), diadaptasi dari kernel node-based
(4.12) ke kernel zone-based ini. Penjaganya **dipertahankan**, hanya diberi
syarat: paksa `SCAN_ANON` cuma bila daftar inactive anon memang cukup besar
untuk dipanen pada prioritas saat itu.

```c
if (unlikely(file + free <= high_wmark_pages(zone))) {
        if (!inactive_anon_is_low(lruvec) &&
            get_lru_size(lruvec, LRU_INACTIVE_ANON) >> sc->priority) {
                scan_balance = SCAN_ANON;
                goto out;
        }
}
```

---

## 3. PELT halflife 16 ms — ⛔ DITAHAN, patch sumbernya rusak

### Bukan soal selera: tabelnya salah hitung

Patch a6010 mengganti dua tabel. Yang pertama benar, yang kedua tidak.

| tabel | a6010 | seharusnya |
|---|---|---|
| `runnable_avg_yN_inv` | ✅ benar — persis entri **indeks genap** dari tabel lama, dan memang begitu seharusnya karena y₁₆ = y₃₂² | sama |
| `runnable_avg_yN_sum` | `0, 22380, 22411, 22441, …, 22731` | `0, 980, 1919, 2818, …, 11564` |

Tabel kedua itu **mendatar di ~22700** alih-alih naik. Entri `n=1` berbunyi
22380 padahal seharusnya 980 — sekitar **23× terlalu besar**.

### Metode hitungnya diverifikasi dulu

Angka "seharusnya" di atas tidak dipercaya begitu saja. Rumusnya lebih dulu
diuji dengan mereproduksi tabel `p=32` yang **sudah ada di kernel ini**, dan
cocok pada delapan entri pertama sebelum menyimpang ±1–6 karena pembulatan.
Ketiga varian pembulatan yang dicoba semuanya menghasilkan nilai **≤** nilai
sebenarnya, sesuai maksud komentar upstream (*"floor(true_value) to prevent
over-estimates"*), jadi cukup untuk memastikan besaran yang benar — dan
22380 jelas bukan salah satunya.

### Kenapa itu berbahaya di kernel ini

Tabel itu dipakai langsung:

```c
/* kernel/sched/fair.c:1205-1206 */
if (likely(n <= LOAD_AVG_PERIOD))
        return runnable_avg_yN_sum[n];
```

Setiap task yang runnable ≥ 1 periode penuh akan dihitung berkontribusi 22380
alih-alih 980, langsung mendekati `LOAD_AVG_MAX` (24152). Artinya **semua task
tampak bermuatan maksimal** — dan gejalanya tidak akan terlihat sebagai
kerusakan, hanya sebagai keputusan penjadwalan yang aneh.

### Dan imbalannya pun tidak jelas

- Ini penyetelan **penjadwal**, bukan memori.
- Kernel ini memakai `CONFIG_SCHED_HMP=y` + `CONFIG_SCHED_FREQ_INPUT=y`, jadi
  penempatan task dan pemilihan frekuensi memakai beban berbasis **window**
  QCOM, bukan PELT.
- Alasan a6010 hanya "responsiveness", tanpa pengukuran — dan karena tabel
  mereka rusak, klaim itu tidak menanggung bukti apa pun.

Tabel yang benar sudah dihitung dan bisa dipakai kapan saja. Tetapi menerapkan
perubahan pelacakan beban yang manfaatnya tak terukur, dari sumber yang
terbukti salah hitung, bukan keputusan yang pantas diambil diam-diam.

---

## Status

| # | kandidat | status |
|---|---|---|
| 1 | `pgscan_*` datar untuk lmkd | ✅ terbangun, belum diuji di perangkat |
| 2 | force-`SCAN_ANON` bersyarat (versi upstream) | ✅ terbangun, belum diuji di perangkat |
| 3 | PELT halflife 16 ms | ⛔ ditahan — menunggu keputusan pemilik perangkat |

Verifikasi build: `make Image` exit 0 (1 m 16 s). `pgscan_kswapd` dan
`pgscan_direct` ada di Image sebagai string datar; `pgscan_*_movable` hilang
seperti yang dimaksud.

Yang harus dilihat setelah flash:

```sh
grep -E '^pgscan' /proc/vmstat        # harus ada pgscan_kswapd tanpa akhiran
logcat | grep -i 'thrashing\|direct reclaim'
```

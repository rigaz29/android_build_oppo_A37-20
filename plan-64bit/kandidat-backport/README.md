# Kandidat update/backport kernel A37

Diteliti **15 September 2026**. Kernel kita: `3.10.108`, cabang
`lineage-20-64bit` (445.897 commit).

Tiga sumber yang diminta diperiksa satu per satu.

---

## 0. Dua dari tiga sumber ternyata buntu

| sumber | temuan |
|---|---|
| **git.kernel.org** | ❌ **tidak ada apa-apa lagi.** `3.10.108` adalah rilis stabil **terakhir** seri 3.10 (EOL November 2017). Kita sudah di sana. |
| **ACK `kernel/common`** | ❌ satu-satunya cabang 3.10 adalah `deprecated/android-3.10`, dan Makefile-nya berbunyi **`SUBLEVEL = 0`**. Ia jauh **di belakang** kita, bukan di depan. |
| **a6010 (acroreiser)** | ✅ basisnya sama, `3.10.108`, tetapi **banyak pekerjaan di atasnya** |

Jadi satu-satunya sumber yang benar-benar menawarkan sesuatu adalah a6010 —
kebetulan SoC-nya sama (msm8916) dan sudah jadi rujukan proyek ini sejak T-A3.

---

## 1. Peringkat kandidat, menurut dampak TERUKUR

### ⭐ A. Backport eBPF — paling besar, paling berisiko

Kita **tidak punya eBPF sama sekali**:

```
kernel/bpf/syscall.c     tidak ada
kernel/bpf/lpm_trie.c    tidak ada
include/linux/bpf.h      tidak ada
ro.kernel.ebpf.supported = false
```

Dampaknya terukur tiap boot:

```
E BpfHandler   : 39   "Failed to get socket cookie: Protocol not available"
E NetworkStats :  4   (pernah 123 pada boot yang lebih panjang)
```

a6010 sudah menempuh jalan ini dan commit-nya terlihat jelas: `BACKPORT: bpf:
introduce BPF_PROG_QUERY`, rangkaian perbaikan LPM trie, hook `setsockopt`, dan
yang paling menentukan —

> `a6010: report 5.4 aarch64 kernel version to netbpfload and bpfloader`

yaitu memalsukan versi kernel supaya `bpfloader` Android mau berjalan.

**Imbalannya:** atribusi data jaringan per-aplikasi di layar penggunaan baterai,
`TrafficController`, dan `BpfNetMaps` berfungsi.

**Risikonya besar.** eBPF menyentuh `net/core`, syscall, dan verifier; memalsukan
versi kernel ke 5.4 bisa memicu jalur lain di Android yang mengira kernelnya
modern. Proyek ini pernah **mematikan** spoof versi kernel justru karena
menyesatkan (`b9d9d3fe700`). Kalau ditempuh, harus bertahap dan diukur.

### ⭐ B. `uid_sys_stats` — kecil, murah, melengkapi perbaikan kemarin

a6010 punya `drivers/misc/uid_sys_stats.c`; kita tidak. Ia menyediakan
`/proc/uid_io` dan `/proc/uid_procstat`, keduanya **hilang** di perangkat:

```
ADA     /proc/uid_cputime          <- dari perbaikan CONFIG_PROFILING kemarin
HILANG  /proc/uid_io
HILANG  /proc/uid_procstat
HILANG  /proc/uid_time_in_state
```

Ini pelengkap alami dari perbaikan `CONFIG_UID_CPUTIME`: yang kemarin memulihkan
atribusi **CPU**, yang ini menambah atribusi **I/O** per aplikasi.

Driver tunggal, mandiri, tanpa sentuhan ke jalur kritis. **Kandidat terbaik
untuk dikerjakan lebih dulu.**

> `/proc/uid_time_in_state` butuh `cpufreq_times.c`, dan **a6010 pun tidak
> punya**. Itu harus di-port dari ACK 4.x, jauh lebih mahal.

### C. ROW iosched dengan penandaan UI/RenderThread

Menariknya `block/row-iosched.c` **sudah ada** di kernel kita — yang belum ada
adalah pekerjaan a6010 di atasnya:

```
block: row: extend sys.use_fifo_ui with marking UI and RenderThread IO as urgent
block: row: allow only RenderThread requests to be marked as urgent by iosched
mmc: allow to stop READ requests to serve URGENT
tracing: block: add REQ_URGENT flag to rwbs
a6010: switch to row iosched
```

Pada eMMC yang terukur **~30 MB/s**, mendahulukan I/O UI di atas latar belakang
adalah jenis perbaikan yang benar-benar terasa. Ruang lingkupnya sedang dan
terbatas di `block/` + `drivers/mmc/`.

> **Koreksi 30 Sep 2026 (diukur):** rework a6010 justru lebih buruk. ROW asli
> di kernel kita sudah menandai baca sinkron sebagai urgent dan eMMC (HPI)
> menyela tulis yang sedang berjalan. Rework itu membatasi urgent hanya untuk
> RenderThread, sehingga pembaca lain kembali ke ~30 MB/s. Yang dipakai
> hanyalah `row` sebagai scheduler default. Lihat §5.8.

### D. Tiga penyetelan memori yang cocok dengan pekerjaan Tier A kita

| commit a6010 | kenapa relevan di sini |
|---|---|
| `mm: vmscan: do not swap anon pages just because free+file is low` | kita menyalakan zram 768 MB + swappiness 100 (T-A2) |
| `mm: vmstat: provide pgscan_kswapd/pgscan_direct for lmkd` | kita memindahkan lmkd ke PSI (T-A1) |
| `sched/pelt: lower pelt halflife to 16ms` | responsivitas pada 4 inti lambat |

Kecil-kecil dan berdiri sendiri.

### E. `fs/incfs` — ada di a6010, nilainya rendah

Incremental FS dipakai Play untuk *app streaming* dan `adb install
--incremental`. Tanpa GApps penuh, nilainya mendekati nol di sini.

---

## 2. Hadiah tak terduga: daftar yang JANGAN di-port

Riwayat a6010 juga memuat serangkaian **revert**, dan itu menghemat kita dari
mengulangi percobaan yang sama:

```
Revert "mm, oom: introduce oom reaper"
Revert "oom: make oom_reaper freezable"
Revert "BACKPORT: mm: introduce process_mrelease system call"
Revert "UPSTREAM: mm/oom_kill.c: prevent a race between process_mrelease and exit_mmap"
Revert "BACKPORT: ARM: mm: wire up syscall process_mrelease"
Revert "BACKPORT: dm bufio: don't take the lock in dm_bufio_shrink_count"
```

Mereka mencoba oom_reaper dan `process_mrelease`, lalu mencabutnya semua.
Catat: **jangan ulangi**.

---

## 3. Bug yang justru ditemukan saat meneliti ini

Bukan soal backport, tetapi ketemu sambil memeriksa I/O scheduler.

`rootdir/etc/init.target.rc` menulis scheduler **dua kali dengan nilai
berbeda**:

```
baris 120, on post-fs-data            write .../scheduler deadline
                                      write .../nr_requests 256
baris 215, on property:sys.boot_completed=1
                                      write .../scheduler noop
                                      write .../nr_requests 128
```

Blok `boot_completed` berjalan belakangan, jadi **`noop` yang menang** — dan
komentar di baris 118-119 yang beralasan panjang lebar bahwa "deadline lebih
cocok untuk eMMC daripada cfq" tidak pernah berlaku.

Terverifikasi di perangkat:

```
scheduler    [noop] deadline row cfq bfq
nr_requests  128        <- bukan 256
```

Catatan T-A2 proyek ini juga menyatakan "scheduler **sudah** `deadline`" —
pernyataan itu **tidak benar**.

Perlu diputuskan mana yang dimaui, lalu salah satunya dihapus. `noop` bukan
pilihan buruk untuk flash, tetapi dua baris yang saling bertentangan berarti
tidak ada yang pernah benar-benar memilih.

---

## 4. Saran urutan, dan statusnya

1. ✅ **Kontradiksi scheduler** (§3) — nol risiko, dan menyelesaikan pertanyaan
   "apa yang sebenarnya berjalan". **Selesai 15 Sep 2026.**
2. ✅ **`uid_sys_stats`** (§1B) — kecil, mandiri, melengkapi perbaikan kemarin.
   **Selesai 15 Sep 2026**, terbangun, belum diuji di perangkat.
3. ⚠️ **Tiga penyetelan memori** (§1D) — dua selesai 15 Sep dalam bentuk yang
   disesuaikan (`da9a8e42533`: pgscan datar untuk lmkd, force-SCAN_ANON
   bersyarat). Halflife PELT **tidak relevan**: kernel ini memakai statistik
   beban berbasis *window* secara default (`c497209dd64`).
4. ✅ **ROW urgent** (§1C) — cukup ganti scheduler ke `row` asli, patch a6010
   tidak dipakai. **Selesai 30 Sep 2026**, lihat §5.8.
5. ✅ **eBPF** (§1A) — selesai 15 Sep 2026, bersama cgroup-BPF, xt_bpf, dan
   SO_COOKIE.

Dua yang pertama dikerjakan di
[`../uid-sys-stats/`](../uid-sys-stats/) — termasuk satu hal yang tidak
kelihatan dari analisis ini: `uid_sys_stats` ternyata **pengganti**
`uid_cputime`, bukan tambahan.

---

## 5. Tinjauan ulang — 30 September 2026

Ditinjau ulang setelah kernel harian pindah ke susfs (`wip/susfs`) dan ROM
menjadi enforcing. Ketiga sumber sama, kesimpulan dasarnya tetap: kernel.org
dan ACK buntu untuk naik versi, a6010 satu-satunya sumber nyata.

### 5.1 Cara membandingkan dengan a6010

Cabang a6010 yang masih aktif (`lineage-21` sampai `lineage-23.2`) sudah
di-rebase dan **tidak berbagi riwayat git** dengan kernel kita, jadi
`merge-base` tidak bisa dipakai. Membandingkan subjek commit juga menyesatkan,
karena backport kita ditulis ulang dengan subjek sendiri. Yang dipakai adalah
isi kode:

```
git grep <penanda fitur> wip/susfs          -- <path>
git grep <penanda fitur> a6010/lineage-23.2 -- <path>
```

Commit terakhir a6010 bertanggal 12 Sep 2026, jadi tidak ada karya mereka
yang lebih baru dari riset §1–§4.

### 5.2 Yang sudah ada di kernel harian

Semua hasil 15 Sep ada di `wip/susfs` (selisihnya dengan `lineage-20-64bit`
hanya backport FunctionFS AIO beserta revert-nya, efek bersih nol): eBPF,
hook cgroup-BPF, xt_bpf, SO_COOKIE, `uid_sys_stats`, penyetelan mm, dan -O2.
Selain itu sudah ada PSI (`/proc/pressure`, lmkd `use_psi=true`),
`BINDER_FREEZE`, `MADV_WIPEONFORK`, zram multistream, akselerasi crc32 arm64,
dan `extra_free_kbytes`.

### 5.3 Syscall yang diminta Android 13 tetapi tidak ada

Dari log boot enforcing (nomor syscall arm64):

| nr | syscall | pemanggil | akibat |
|---|---|---|---|
| 291 | `statx` | system_server (sebagian besar dari 782 yang tertahan rate-limit) | fallback ke `fstatat` |
| 282 | `userfaultfd` | system_server, systemui (ART) | ART memakai GC CC |
| 434 | `pidfd_open` | lmkd | kembali ke `kill()` |
| 448 | `process_mrelease` | lmkd | memori korban dibebaskan lebih lambat |

Semuanya punya fallback aman.

### 5.4 Kandidat, diurutkan

| # | kandidat | kenapa | biaya / risiko |
|---|---|---|---|
| 1 | **TCP SACK Panic** (CVE-2019-11477/11478/11479) | kernel kita tidak punya satu pun perbaikannya; paket TCP rakitan dari jaringan bisa memicu kernel panic | kecil / rendah |
| 2 | **time_in_state per-UID** | `/proc/uid_time_in_state` hilang, atribusi baterai per aplikasi tidak akurat. a6010 memasangnya di `drivers/cpufreq/cpufreq_stats.c` (1.727 baris) dengan kait di `fs/proc/base.c`, `sched.h`, `uid_sys_stats.c`, hanya memakai header 3.10 | sedang / rendah-sedang |
| 3 | ✅ **ROW urgent** (§1C) | selesai 30 Sep: `row` asli jadi default, patch a6010 ditolak setelah diukur | kecil / rendah |
| 4 | ✅ **kcompactd + multi-kswapd** | selesai 30 Sep; satu bug a6010 diperbaiki (lihat §5.8) | sedang / sedang |
| 5 | ❌ **MADV_FREE** | dibatalkan 30 Sep: tidak ada pemakainya di ROM ini (lihat §5.8) | sedang / sedang |
| 6 | **`pidfd_open`** tanpa `process_mrelease` | lmkd memanggilnya | kecil-sedang / rendah |

Map BPF time_in_state sudah dimuat bpfloader (`/sys/fs/bpf/map_time_in_state_*`),
tetapi programnya tidak bisa menempel ke tracepoint karena `bpf_trace` tidak
terbangun (tracing mati). Jalur procfs a6010 (#2) tidak butuh itu.

### 5.5 Tanpa backport

- zram `max_comp_streams=1` di 4 inti; bisa dinaikkan ke 4, perlu diuji
  (disetel sebelum `disksize`).
- `extra_free_kbytes` (8192) sudah ada, jadi backport `watermark_scale_factor`
  tidak perlu; cukup disetel.

### 5.6 Tidak disarankan

- **App freezer (cgroup v2):** `BINDER_FREEZE` sudah ada, tetapi a6010 menulis
  ulang cgroup ke gaya 4.x (`kernel/cgroup/cgroup.c` 6.906 baris,
  `freezer.c`). Terlalu besar untuk perangkat harian.
- **schedutil, uclamp, PELT:** msm8916 hanya satu cluster 4×A53 dengan HMP dan
  governor interactive.
- **oom_reaper, `process_mrelease`:** dicabut sendiri oleh a6010 (§2).
- **userfaultfd, statx, binderfs, tracefs, zstd, incfs:** fallback aman atau
  nilainya kecil. `/dev/binderfs` di perangkat hanya direktori fallback dari
  init, bukan binderfs.
- **Akselerasi AES/SHA CE:** CPU tidak punya ekstensinya
  (`Features: fp asimd evtstrm crc32`).

### 5.7 Keamanan

Commit keamanan di kernel kita berhenti sekitar 2019. Dari sampel acak:

| CVE | kita | a6010 |
|---|---|---|
| CVE-2016-5195 Dirty COW | ada | ada |
| CVE-2019-2215 binder epoll UAF | ada | — |
| **CVE-2019-11477/11478/11479 SACK** | **tidak ada** | ada |

SACK ketemu dari sampel acak, jadi kemungkinan besar masih ada CVE 3.10 lain
dari 2019–2023. Itu layak jadi audit tersendiri berdasarkan buletin keamanan
Android.

### 5.8 Status pengerjaan (30 September 2026)

1. ✅ **TCP SACK Panic** — lima patch resmi dari `linux-3.16.y`
   (git.kernel.org): `ef27e3c5`, `dc97a907`, `6b7e7997`, `7ce5a579`,
   `edb0a012`. Versi a6010 terkubur di satu commit squash, jadi tidak dipakai.
   Dua patch perlu penyesuaian konteks 3.10 (dicatat di commit). Terbukti di
   perangkat pada kernel #19: `tcp_min_snd_mss=48`, penghitung
   `TCPWqueueTooBig` ada, TCP normal.
2. ✅ **time_in_state per-UID** — `drivers/cpufreq/cpufreq_times.c` dari ACK
   `deprecated/android-4.9-q` beserta kaitnya, bukan versi a6010 (yang
   mengubah `cpufreq_stats.c` lebih luas). Penyesuaian 3.10: tabel frekuensi
   lewat `cpufreq_frequency_get_table()`, pemisah `seq_put_decimal_ull()`
   berupa char, `single_uid` dibuang (tidak ada `/proc/uid/`), dan jalur tick
   tidak memanggil `cpufreq_cpu_get()`. Terbukti di perangkat pada kernel #20:
   ketiga berkas `/proc/uid_*` terisi dan bertambah, labelnya benar dalam
   enforcing, BatteryStats membaca `CPU freqs`. Data per aplikasi baru
   terakumulasi saat perangkat berjalan dengan baterai.
3. ✅ **ROW urgent** — patch a6010 **tidak dipakai**. Uji: baca 128 MB
   sementara 200 MB ditulis dengan fsync, dua jenis pembaca (proses bernama
   RenderThread dan pembaca biasa):

   | scheduler | RenderThread | pembaca biasa |
   |---|---|---|
   | `deadline` (sebelumnya) | 20–21 MB/s | 31–32 MB/s |
   | `row` asli | 92–98 MB/s | 96–99 MB/s |
   | `row` + rework a6010 (kernel #22) | 110–114 MB/s | 19–34 MB/s |

   Baris a6010 diambil dari putaran yang tenang (`deadline` di putaran yang
   sama 20–33 MB/s). Putaran sesaat setelah boot lebih bising (`deadline`
   9–19, a6010 62–63 / 26–27 MB/s) dan tidak dipakai. Rework a6010 memang
   membuat RenderThread ±20% lebih cepat, tetapi pembaca biasa jatuh ke
   tingkat `deadline`.

   ROW asli sudah menandai semua baca sinkron sebagai urgent dan
   `mmc_stop_request` (HPI) menyela tulis yang sedang jalan. Rework a6010
   membatasi urgent hanya untuk RenderThread, jadi aplikasi lain kehilangan
   keuntungan itu. Perubahannya cukup satu baris di device tree:
   `init.target.rc` menulis `row`, bukan `deadline` (`rb_device_oppo_A37`
   `212e054`). Terbukti pada ROM `20260930_121455` + kernel #20: `[row]`
   aktif sejak boot, dan baris `deadline` serta `row` asli di atas diukur di
   konfigurasi itu. Rework a6010 disimpan di cabang lokal
   `backup/row-urgent-a6010-*`.
4. ✅ **kcompactd + multi-kswapd** — delapan commit, sumber a6010 ditambah satu
   dari upstream:

   | commit | asal |
   |---|---|
   | `mm: compaction: encapsulate defer reset logic` | upstream `de6c60a6c115` (di a6010 hanya ada di commit akar) |
   | `mm, kswapd: remove bogus check of balance_classzone_idx` | a6010 `46e5666d15d` |
   | `mm, compaction: introduce kcompactd` | a6010 `0e2275db526` |
   | `[fixup] mm: psi/compaction` | a6010 `06c188b54a3` (+ `#include <linux/psi.h>`) |
   | `mm, kswapd: replace kswapd compaction with waking up kcompactd` | a6010 `235c265f45a`, **diperbaiki** |
   | `mm: wake kcompactd before kswapd's short sleep` | a6010 `322ef4c8f3e` |
   | `mm/compaction.c: fix zoneindex in kcompactd()` | a6010 `e3bb32df85a` |
   | `vmscan: Support multiple kswapd threads per node` | a6010 `e6fb3d08832`, thread 0 tetap `kswapd0` |

   **Bug a6010:** `235c265f45a` membuang loop di `balance_pgdat()` bersama
   kompaksi kswapd, padahal di 3.10 loop itu juga menjumlah `lru_pages` yang
   diteruskan `kswapd_shrink_zone()` ke `shrink_slab()`. Dengan nilai 0, setiap
   putaran kswapd menyuruh semua shrinker memindai sampai 2× isi cache-nya
   (dentry/inode, pool ION dan kgsl, zsmalloc). Upstream aman membuangnya karena
   sejak 4.0 kswapd tidak lagi memberi `lru_pages` ke `shrink_slab()`. Loop itu
   dipertahankan hanya untuk `lru_pages`. `fix zoneindex` wajib ikut: tanpa itu
   loop `zoneid < classzone_idx` melewati satu-satunya zona (DMA, indeks 0) dan
   kcompactd tidak pernah bekerja. `wakeup_kswapd()` tetap memakai cek low
   watermark kita, yang sudah menguji order sebenarnya.

   multi-kswapd tetap 1 thread (`/proc/sys/vm/kswapd_threads`). kswapd hanya
   memakai ±1–5% satu core, dan zram memakai satu stream kompresi, jadi thread
   tambahan belum ada gunanya tanpa uji terpisah.

   Terbukti pada kernel #23 (`wip/susfs` `a18838c784a`, `lineage-20-64bit`
   `2ba7be9021d`): enforcing, `kcompactd0` dan `kswapd0` berjalan, tidak ada
   BUG/WARNING. Pada boot yang tenang, bangun pertama kcompactd menaikkan blok
   bebas order-3 dari 0 ke 49 dan order-4 dari 0 ke 12 dalam ±1,5 menit. Di
   bawah game (Hill Climb Racing), dinormalkan per 100 ribu halaman swap-out
   terhadap sesi berat di #20:

   | per 100k swap-out | #20 | #23 |
   |---|---|---|
   | `allocstall` | 1003 | 381 (−62%) |
   | `pgscan_direct` | 79.770 | 37.862 (−53%) |
   | `compact_stall` | 146 | 118 (−19%) |
   | direct compaction berhasil | 24% | 36% |

   kcompactd bangun 547 kali dalam 16 menit, total 5,9 detik CPU. Rasio
   `slabs_scanned`/`pgscan_kswapd` 0,096 (#20: 0,117) dan `SReclaimable` tetap
   ±44 MB, bukti perbaikan `lru_pages` bekerja. Dua sesi ini beban
   pemakaiannya berbeda, jadi arahnya jelas tetapi bukan A/B terkontrol.
   Direct compaction tidak hilang di bawah tekanan berat: kswapd jarang tidur
   (kcompactd baru bangun setelahnya) dan `compaction_suitable()` menolak saat
   memori memang habis, bukan terpecah.
5. ❌ **MADV_FREE — dibatalkan, tidak ada pemakainya.** Alasan awal ("jemalloc
   melepas memori secara malas") ternyata tidak berlaku di Android 13 ROM ini:
   - libc memakai jemalloc (`MALLOC_SVELTE := true`), dan Android membangunnya
     **tanpa** `JEMALLOC_PURGE_MADVISE_FREE` (`external/jemalloc_new`,
     `jemalloc_internal_defs.h`: *"MADV_FREE available since kernel 4.5 but not
     all devices support this yet"*). Jadi semua proses native tetap memakai
     `MADV_DONTNEED`, apa pun kemampuan kernelnya.
   - Kalaupun diaktifkan, decay jemalloc di Android adalah 0 ms
     (`arena_types.h`), atau 1 detik untuk aplikasi (zygote memanggil
     `mallopt(M_DECAY_TIME, 1)`). Halaman yang di-MADV_FREE akan kena
     `MADV_DONTNEED` lagi paling lambat 1 detik kemudian: dua syscall untuk
     jendela manfaat yang sangat pendek.
   - ART, bionic, dan scudo di pohon sumber tidak memanggil MADV_FREE.

   Seri a6010 (`472a3c75b42`, `bde0e6f13f2`, `448a655effc`, `cd3acdc27d9`,
   `e525f2784fb`) tetap tersedia kalau kelak ada pemakainya, misalnya biner
   Termux yang memanggil MADV_FREE sendiri.

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
3. ⬜ **Tiga penyetelan memori** (§1D) — kecil dan cocok dengan Tier A.
4. ⬜ **ROW urgent** (§1C) — sedang, imbalan terasa pada eMMC lambat.
5. ⬜ **eBPF** (§1A) — terakhir, bertahap, dan hanya kalau atribusi data
   jaringan memang diinginkan. Ini yang paling mungkin merusak.

Dua yang pertama dikerjakan di
[`../uid-sys-stats/`](../uid-sys-stats/) — termasuk satu hal yang tidak
kelihatan dari analisis ini: `uid_sys_stats` ternyata **pengganti**
`uid_cputime`, bukan tambahan.

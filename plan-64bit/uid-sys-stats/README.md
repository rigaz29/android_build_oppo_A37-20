# Dua hal pertama dari daftar backport

Dikerjakan **15 September 2026**, atas pilihan pemilik perangkat dari
[`../kandidat-backport/`](../kandidat-backport/).

---

## 1. Kontradiksi I/O scheduler — selesai

### Apa yang salah

`device/oppo/A37/rootdir/etc/init.target.rc` menulis antrean `mmcblk0` **dua
kali dengan isi bertentangan**:

| baris | blok | isi |
|---|---|---|
| 120 | `on post-fs-data` | `scheduler deadline`, `nr_requests 256` |
| 215 | `on property:sys.boot_completed=1` | `scheduler noop`, `nr_requests 128` |

Yang belakangan menang. Terverifikasi di perangkat: `[noop] deadline row cfq
bfq`, `nr_requests 128`.

### Mana yang sebenarnya disengaja

`git blame` menjawabnya tanpa perlu menebak:

```
b1fb4fd9 (Harshit Jain 2018-12-14 215) write .../scheduler noop
547f8ca5 (rigaz29    2026-07-31 120) write .../scheduler deadline
```

Baris `noop` adalah **warisan device tree asli 2018** yang tak pernah ditinjau
ulang. Baris `deadline` adalah **pilihan sadar proyek ini**, lengkap dengan
komentar yang beralasan. Yang warisan dibuang; yang disengaja dipertahankan.

### Yang dilakukan

Seluruh penyetelan antrean `mmcblk0` dikumpulkan di **satu** blok
`on post-fs-data` — termasuk `rq_affinity 0` yang tadinya di blok satunya.
Dipilih `post-fs-data`, bukan `boot_completed`, karena justru **sebelum** boot
selesai I/O paling padat: dexopt dan pemasangan aplikasi.

Empat baris di `boot_completed` dihapus: tiga bertentangan, satu
(`read_ahead_kb 128`) cuma mengulang nilai yang sama.

Diperiksa bahwa tidak ada penulis lain: tidak ada `.rc` lain di device tree atau
vendor yang menyentuh `queue/scheduler`, dan `libqti-perfd.so` — satu-satunya
blob yang mungkin — tidak memuat string `queue/scheduler` maupun `mmcblk`.

### Catatan yang ikut terkoreksi

Catatan T-A2 proyek ini menyatakan "scheduler **sudah** `deadline`". Itu tidak
pernah benar. Sekarang barulah benar.

`row` juga tersedia di kernel ini dan dirancang untuk flash, tapi nilainya baru
muncul bersama penandaan urgent UI/RenderThread yang belum di-backport.

---

## 2. `uid_sys_stats` — selesai, terbangun, belum diuji di perangkat

### Kenapa ini penggantian, bukan penambahan

Ini yang tidak kelihatan dari daftar kandidat: `uid_sys_stats.c` adalah
**penerus** `uid_cputime.c` di AOSP common, bukan driver tambahan. Keduanya
memanggil `proc_mkdir("uid_cputime")`, jadi kalau dinyalakan bersamaan yang
kedua gagal. Maka `uid_cputime.c` **dihapus** dan `CONFIG_UID_CPUTIME` diganti
`CONFIG_UID_SYS_STATS` (syarat `depends on PROFILING` sama persis, jadi
perbaikan `CONFIG_PROFILING` kemarin tetap menjadi prasyaratnya).

Yang didapat:

| /proc | sebelum | sesudah | pembacanya |
|---|---|---|---|
| `uid_cputime/show_uid_stat` | ada | ada | `KernelCpuUidUserSysTimeReader`, statsd |
| `uid_cputime/remove_uid_range` | ada | ada | `system_server` |
| **`uid_io/stats`** | **hilang** | **ada** | `storaged`, `StoragedUidIoStatsReader` |
| **`uid_procstat/set`** | **hilang** | **ada** | `system_server` |

`uid_procstat/set` yang membuat `uid_io` berguna: `system_server` menuliskan
uid mana yang sedang latar depan, dan driver memisahkan hitungan I/O-nya ke
ember yang berbeda. Tanpa itu angkanya cuma satu tumpukan.

`storaged` **sudah berjalan** di perangkat (`init.svc.storaged: running`), dan
sepolicy AOSP A13 sudah lengkap — `genfscon` untuk keduanya ada di
`private/genfs_contexts:101-102`, `allow storaged proc_uid_io_stats` ada di
`private/storaged.te:11`. Tidak ada sepolicy yang perlu ditambah.

### Prasyarat yang harus ikut di-backport

Driver ini membaca `task->ioac.syscfs`, penghitung jumlah panggilan `fsync()`
per task. Kernel 3.10 murni **tidak punya** field itu — ia tambahan Android.
Empat sentuhan kecil:

| berkas | perubahan |
|---|---|
| `include/linux/task_io_accounting.h` | `u64 syscfs;` di dalam `CONFIG_TASK_XACCT` |
| `include/linux/task_io_accounting_ops.h` | ikut dijumlahkan saat thread digabung |
| `include/linux/sched.h` | `inc_syscfs()`, dua versi (XACCT hidup dan mati) |
| `fs/sync.c` | `inc_syscfs(current)` di `do_fsync()` — satu-satunya penaik |

`CONFIG_TASK_XACCT` dan `CONFIG_TASK_IO_ACCOUNTING` sudah `=y` di defconfig,
jadi tidak ada yang perlu dinyalakan.

### Satu hal yang sengaja DIBUANG dari sumbernya

Sumber a6010 memanggil `cpufreq_task_stats_remove_uids()` di dalam
`remove_uid_range`, untuk ikut membersihkan `/proc/uid_time_in_state`.
Antarmuka itu butuh `drivers/cpufreq/cpufreq_times.c` yang **tidak ada di
kernel ini — dan tidak ada juga di a6010**. Panggilannya dibuang, bukan
distub: stub hanya akan menyembunyikan bahwa `uid_time_in_state` memang belum
ada. Kalau suatu saat di-port, panggilan itu kembali.

### Yang diverifikasi

```
CONFIG_UID_SYS_STATS=y bertahan di .config hasil   <- bukan dibuang Kconfig
make Image                                exit=0, 71 detik
System.map   proc_uid_sys_stats_init, __initcall_..._initearly
Image        memuat string uid_cputime, uid_io, uid_procstat
```

Pemeriksaan `early_initcall` sengaja dilakukan: driver mendaftar sangat awal,
jadi perlu dipastikan `proc` sudah siap. Sudah — `proc_root_init()` di
`init/main.c:640` berjalan sebelum `rest_init()` di `:660`, sedangkan initcall
baru dijalankan `do_basic_setup()` di `:900`.

**Belum diuji di perangkat.** Yang harus dilihat setelah flash:

```sh
ls /proc/uid_io/stats /proc/uid_procstat/set
cat /proc/uid_io/stats | head          # 11 kolom per uid
```

---

## 3. Temuan sampingan, BELUM diperbaiki

`storaged` ditolak membaca statistik blok, tiap ~4 menit, tiga kali:

```
avc: denied { read open getattr } for comm="storaged"
  path=".../mmc_host/mmc0/mmc0:0001/block/mmcblk0/stat"
  tcontext=u:object_r:sysfs:s0   permissive=1
```

Node itu berlabel `sysfs` generik, bukan tipe blok. Di A13 tipe `sysfs_block`
**tidak ada lagi** sebagai tipe nyata — hanya sisa di `private/compat/*.cil`
dan atribut `sysfs_block_type` di `public/attributes:81`. Jadi memperbaikinya
berarti mendefinisikan tipe baru di device tree, bukan menambah satu baris.

Sekarang tidak merusak apa-apa karena perangkat **permissive**. Akan merusak
separuh `storaged` kalau suatu saat enforcing. Dicatat, tidak dikerjakan.

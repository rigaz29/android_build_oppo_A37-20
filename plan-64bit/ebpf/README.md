# eBPF: dikerjakan sebagian, dan inilah yang ditemukan

Dikerjakan **15 September 2026**. **Belum selesai.** Cabang kerja:
`kernel_oppo_msm8939` → `wip/ebpf` (commit `687317eed96`). Cabang utama tidak
tersentuh.

---

## 1. Yang bikin kaget: sebagian besar tidak butuh spoof versi kernel

Kekhawatiran terbesar di [`../kandidat-backport/`](../kandidat-backport/) adalah
a6010 memalsukan versi kernel ke 5.4. Ternyata untuk **fungsi yang kita
inginkan**, itu tidak diperlukan.

Program BPF Android 13 di `packages/modules/Connectivity/bpf_progs/`:

| program | makro | min_kver |
|---|---|---|
| `cgroupskb/ingress/stats` | `DEFINE_NETD_BPF_PROG` | **`KVER_NONE`** |
| `cgroupskb/egress/stats` | `DEFINE_NETD_BPF_PROG` | **`KVER_NONE`** |
| `skfilter/*/xtbpf` | `DEFINE_XTBPF_PROG` | **`KVER_NONE`** |
| `schedact/ingress/account` | `DEFINE_SYS_BPF_PROG` | **`KVER_NONE`** |
| tethering offload | `BPF_PROG_KVER` | 4.14 / 5.4 |
| DSCP policy, port block | `BPF_PROG_KVER` | 5.8 / 5.15 |

`Loader.cpp:996` berbunyi `if (kvers < min_kver) continue;` — dengan
`KVER_NONE = 0`, program **inti akuntansi data per-aplikasi tidak pernah
dilewatkan.** `offload.c` bahkan menyediakan varian `$stub` khusus kernel tua.

Jadi tujuan sebenarnya — atribusi data per aplikasi di layar baterai — bisa
dicapai **tanpa berbohong soal versi kernel**.

---

## 2. Dan intinya memang bisa dikompilasi di 3.10 arm64

Ini yang paling ingin dibuktikan, dan sudah dibuktikan. 28 berkas inti eBPF
ditransplantasi (`kernel/bpf/` 376 KB, `verifier.c` sendiri 114 KB), lalu
dikompilasi berulang:

```
putaran 1:  21 galat     <- rbtree_latch.h, QDISC_CB_PRIV_LEN, SKF_AD_*
putaran 2:  78 galat     <- naik: tiap perbaikan membuka berkas berikutnya
putaran 3:  36 galat
putaran 4:  30 galat
```

**Tidak satu pun galat bersifat semantik.** Semuanya helper yang belum ada di
3.10, dan tiap satunya kecil:

```
ktime_get_mono_fast_ns   ktime_get_boot_fast_ns   perf_event_get
perf_event_read_local    cgroup_get_from_fd       cgroup_put
INIT_LIST_HEAD_RCU       div64_u64_rem            prandom_init_once
security_bpf_map dkk     satu tipe tak lengkap di moduleloader.h
```

Artinya tidak ada penghalang arsitektural. Ini pekerjaan panjang, bukan
pekerjaan mustahil.

---

## 3. Tetapi bagian yang BELUM disentuh jauh lebih besar dari sisa di atas

```
41 berkas masih memakai API BPF lama (sk_filter / sk_run_filter / SK_RUN_FILTER)
```

Dan satu di antaranya menentukan hidup-matinya perangkat:

```c
/* kernel/seccomp.c:221 */
u32 cur_ret = sk_run_filter(NULL, f->insns);
```

Konversi `sk_filter` → `bpf_prog` adalah **bagian wajib** dari perubahan ini,
dan itu berarti mengonversi seccomp ke eBPF. **Seccomp yang rusak berarti zygote
gagal, dan perangkat tidak boot sama sekali** — bukan gagal sebagian, bukan
fitur hilang, tapi mati total.

Di atas itu masih ada: penyambungan syscall `bpf`, bpffs, cgroup BPF attach,
hook LSM, lalu tahap link, lalu debugging runtime dengan verifier.

---

## 4. Tiga hal tentang a6010 yang perlu diketahui sebelum mengikutinya

### a. Mereka membangun kernel 32-bit, kita 64-bit

`CONFIG_BPF_SYSCALL=y` hanya ada di `arch/arm/configs/`, **tidak satu pun di
`arch/arm64/configs/`**. Backport mereka teruji di arm32; di arm64 kita jadi
yang pertama.

### b. JIT arm64 mereka TIDAK PERNAH dikompilasi

`arch/arm64/net/bpf_jit_comp.c` ada, tapi meng-`#include "bpf_jit.h"` yang
**tidak ada di pohon mereka**, dan tidak ada `arch/arm64/net/Makefile`. Berkas
itu mati. Di arm64 kita akan berjalan **interpreter saja**.

### c. Mereka memalsukan status JIT ke loader

```c
/* HACK: ANDROID: bpf: NetBpfLoad wants bpf progs to be always jited */
-	info.jited_prog_len = 0; //prog->jited_len;
+	info.jited_prog_len = bpf_prog_size(prog->len) / 2;
```

Angka itu **dikarang** — separuh ukuran program, tanpa makna — supaya loader
mengira program sudah di-JIT padahal ditafsirkan. Ditambah
`CONFIG_ANDROID_TREBLE_SPOOF_BPF_KERNEL_VERSION_PREFIX="5.4.295"` dan
`..._BITNESS=y` di defconfig mereka: memalsukan versi **dan** bitness.

Proyek ini justru pernah **membuang** spoof versi kernel karena menyesatkan
(`b9d9d3fe700`). Mengikuti a6010 apa adanya berarti membatalkan keputusan itu.

Kabar baiknya, §1 menunjukkan spoof itu **tidak perlu** untuk tujuan kita.

---

## 5. Jaring pengaman yang sudah ada, dan kenapa itu penting

`bpfloader.rc` diakhiri:

```
reboot_on_failure reboot,bpfloader-failed
```

Komentarnya sendiri: kegagalan bpfloader membuat netd crashloop lalu
system_server crashloop, dan satu-satunya pemulihan adalah reboot kernel penuh.

Proyek ini sudah memasang pengaman: Gerrit 320591 + 320592 menambahkan gerbang
`ro.kernel.ebpf.supported` (kita setel `false`), dan `BpfLoader.cpp:197` sudah
ditambal agar menyetel `bpf.progs_loaded=1` lalu `return 0` bahkan saat gagal.

**Jangan cabut pengaman itu sebelum eBPF terbukti bekerja.** Urutan yang benar:
nyalakan kernelnya dulu, buktikan `bpf()` hidup, baru lepas gerbangnya.

---

## 5b. Tahap 1 SELESAI: `kernel/bpf/` bersih

Commit `87b787eb88b` di `wip/ebpf`. **Nol galat, nol peringatan baru**, 12 objek
terbangun. Tren: `21 → 78 → 36 → 30 → 7 → 0`.

### Prasyarat diambil dari mainline, bukan disalin dari a6010

`div64_u64_rem`, `INIT_LIST_HEAD_RCU`, `u64_to_user_ptr`, `d_backing_inode`,
`BPF_FS_MAGIC`, `prandom_seed_full_state`, `prandom_init_once`,
`ktime_get_mono_fast_ns`, `ktime_get_boot_fast_ns`.

Dua di antaranya **sengaja tidak disalin mentah**:

| helper | kenapa diadaptasi |
|---|---|
| `prandom_init_once` | upstream memakai Tausworthe-113 (`s1..s4`); `struct rnd_state` di 3.10 masih Tausworthe-88 (`s1..s3`). Penyemaian lewat `prandom_seed_state()`, API kernel ini — bukan menulis `s4` yang tidak ada. Penjaganya ditaruh di `lib/random32.c`, bukan makro di `random.h`, karena makro itu butuh `spinlock.h` → include melingkar |
| `ktime_get_mono_fast_ns` | upstream NMI-safe lewat timekeeper bayangan yang tidak ada di 3.10. Versi di sini pakai seqlock biasa — benar untuk program BPF jaringan yang tak pernah jalan dari NMI, dan **dicatat tegas di tempatnya** agar tidak dipakai bila program dipasang ke perf event atau kprobe |

### Bug laten 3.10 yang ikut ketemu

`moduleloader.h` mendereference `me->name`, padahal `struct module` hanya
lengkap di dalam `#ifdef CONFIG_MODULES` — dan stub itu justru dipakai saat
`CONFIG_MODULES=n`, yang berlaku di kernel ini. Tidak pernah terpicu sampai
`kernel/bpf/core.c` menyertakan berkas itu.

### ⚠️ Tiga kecerobohan a6010, diperbaiki

**1. `bpf_prog_array_is_empty()` — bug logika nyata.**

```c
struct bpf_prog **prog = progs->progs;
for (; *prog; prog++)
        if (prog != &dummy_bpf_prog.prog)   /* ** dibandingkan dengan * */
                return false;
```

Kompilator menandainya *"comparison of distinct pointer types lacks a cast"*.
Perbandingan itu **selalu** tidak sama, sehingga array berisi dummy saja
dilaporkan **tidak kosong** — kebalikan dari maksudnya. Dipakai `cgroup.c`
untuk jalur cepat `SETSOCKOPT`/`GETSOCKOPT`. Diperbaiki jadi `*prog !=`.

**2. Panjang JIT dikarang.**

```c
info.jited_prog_len = bpf_prog_size(prog->len) / 2;
```

Separuh ukuran program — angka tanpa makna — supaya NetBpfLoad Android 15
mengira program sudah di-JIT padahal ditafsirkan. Diperiksa: **bpfloader
Android 13 tidak memeriksa `jited` sama sekali.** Dilaporkan `0` apa adanya.

**3. `map_flags` dipalsukan.**

`128` untuk DEVMAP_HASH, `1` untuk LPM_TRIE, menimpa nilai sesungguhnya.
Tidak dibutuhkan — `map_flags` sudah disimpan benar saat pembuatan peta
(`arraymap.c:131`), peta netd A13 memakai `map_flags = 0` sehingga cocok apa
adanya, dan `Loader.cpp` A13 hanya menambah `BPF_F_RDONLY_PROG` untuk DEVMAP
yang tidak dibangun di sini. Nilai palsu justru bisa membuat peta **ditolak**.

### Hook LSM: lengkap, termasuk yang a6010 lupakan

Mengikuti upstream `afdb09c720b6`. a6010 tidak menyediakan stub
`!CONFIG_SECURITY`, sehingga pohon mereka gagal dibangun bila `CONFIG_SECURITY`
dimatikan — ditambahkan di sini. Default `cap_bpf*` + `set_to_cap_if_null` ikut
dipasang; tanpa itu `security_ops->bpf` NULL dan panggilan `bpf()` pertama
**panic**.

### Tipe peta tak didukung: dimatikan jujur, bukan dipalsukan

`CONFIG_BPF_FD_ARRAY_MAPS` (default `n`) memagari PERF_EVENT_ARRAY,
CGROUP_ARRAY, STACK_TRACE, dan DEVMAP. Semuanya menuntut API 4.6
(`perf_event_get`, `get_perf_callchain`, `cgroup_get_from_fd`, …) yang
mem-backport-nya berarti menyentuh inti perf dan cgroup. **Tidak satu pun
program BPF Android 13 memakainya** — netd hanya HASH dan ARRAY.

`bpf(BPF_MAP_CREATE)` untuk tipe itu mengembalikan `-EINVAL` dengan jujur —
kebalikan dari HACK a6010 *"emulate support for BPF_MAP_TYPE_DEVMAP_HASH"*.

Terdaftar sekarang: `array`, `array_of_map`, `htab`, `hash_of_map`,
`prog_array`, `lpm_trie`.

---

## 5c. Tahap 2 SELESAI: `net/core/filter.c` bermigrasi, seluruh `net/` bersih

Commit `2829e227dab` dan `ee363ac1191`. Tren galat `filter.o`:
`70 → 34 → 20 → 14 → 11 → 0`, lalu seluruh `net/core/`: `4 → 0`, lalu seluruh
`net/`: `1 → 0`.

### ⚠️ Bug paling berbahaya yang dicegah: `CLONED_MASK`

Ini nyaris tersalin begitu saja.

```c
/* a6010 (4.x) */          /* kernel ini (3.10) */
__u8  cloned:1,   /*bit0*/ __u8  local_df:1,  /*bit0*/
      ignore_df:1,               cloned:1,    /*bit1*/
#define CLONED_MASK 1
```

Penulis ulang instruksi BPF memakai mask ini untuk jalur cepat *"apakah skb ini
hasil clone"* sebelum memutuskan memanggil `bpf_skb_pull_data()`. Menyalin
`CLONED_MASK 1` akan membuatnya membaca **`local_df`**, bukan `cloned` — skb
hasil clone dikira bukan clone, pull dilewati, dan data skb **bersama** disentuh
tanpa dilinearkan.

Dihitung ulang untuk tata letak kita: `(1 << 1)` LE, `(1 << 6)` BE.
`PKT_TYPE_MAX` diperiksa juga dan memang identik.

### Bug a6010 lain: helper tunnel yang mengembalikan sampah

Seluruh helper tunnel metadata mereka distub dengan badan `return 0;`. Tapi
`bpf_skb_get_tunnel_key()` dideklarasikan `ARG_PTR_TO_UNINIT_MEM` — verifier
menganggap helper **wajib** mengisi buffer keluarannya. Mengembalikan *sukses*
tanpa menulis apa pun membuat program BPF membaca **sampah stack** dan
memperlakukannya sebagai kunci tunnel yang sah. Upstream `memset` lalu
mengembalikan galat.

Diperbaiki dengan membuang blok itu dan mengembalikan `NULL` dari `func_proto`,
sehingga verifier **menolak** program yang memakainya saat dimuat.

Pola yang sama dipakai untuk semua yang tidak didukung kernel ini — helper VLAN,
`bpf_skb_under_cgroup`, `bpf_bind`, `bpf_tcp_sock`: `-EOPNOTSUPP` + `func_proto`
`NULL`. **Gagal terang-terangan, bukan berjalan dengan hasil karangan.**

### Yang ditambahkan dari upstream

`sk_uid` dan `sk_cookie` ke `struct sock`, `cookie_gen` ke `struct net`,
`sock_gen_cookie()` — **inilah yang dibutuhkan `bpf_get_socket_cookie()`,
sumber 39 galat `BpfHandler` tiap boot.** `sock_i_uid()` yang sudah ada tidak
bisa dipakai: ia mengambil `read_lock_bh` sedangkan program BPF berjalan di
konteks atomik.

Plus dua belas inline `skbuff.h`, `skb_ensure_writable()`,
`inet_proto_csum_replace_by_diff()`, `task_get_classid()`, `dst_tclassid()`,
`skb_at_tc_ingress()`, `TC_ACT_REDIRECT`, `XMIT_RECURSION_LIMIT`, dan
`qdisc_skb_cb::tc_classid` yang — seperti upstream — memakai ulang `_pad`
sehingga ukuran `skb->cb` tidak berubah.

### Kekhawatiran "41 berkas" ternyata berlebihan

Setelah migrasi, hanya **dua** berkas yang benar-benar perlu disentuh:
`af_packet.c` (`SK_RUN_FILTER` → `bpf_prog_run_clear_cb`) dan shim WireGuard
(digerbangi, bukan dihapus). Sisanya cuma memanggil `sk_filter(sk, skb)` yang
tanda tangannya tidak berubah.

---

## 5d. Tahap 3 SELESAI: seccomp dikonversi, **kernel utuh ter-link**

Commit `d2eef75ee48`. `make Image` **exit 0, nol galat, nol undefined reference**.

```
Image    18.726.200 byte   (+92 KB, +0,5% dari baseline)
```

Simbol terverifikasi di `System.map`: `sys_bpf`, `bpf_check`,
`bpf_prog_create_from_user`, `populate_seccomp_data`, `seccomp_check_filter`,
`sock_gen_cookie`, `bpf_convert_filter`, `__alloc_percpu_gfp`,
`skb_ensure_writable`.

### ⚠️ BELUM PERNAH DI-BOOT

Ini tahap yang dari awal ditandai paling berisiko. **Seccomp yang rusak berarti
zygote gagal dan perangkat tidak boot sama sekali** — bukan fitur hilang, tapi
mati total. Kernel ini terkompilasi dan ter-link; itu saja yang terbukti.

### Inti konversinya

Pada skema 3.10, program cBPF memuat data lewat opcode ancillary yang memanggil
balik ke kernel (`seccomp_bpf_load()`) untuk membaca `pt_regs` satu per satu.
Pada eBPF, `struct seccomp_data` menjadi **konteks program**, sehingga muatan
`A = *(u32 *)(ctx + K)` membacanya langsung.

Seluruh opcode `BPF_S_*` diganti opcode klasik, mengikuti daftar upstream
`3ad00405c1b8` persis. Satu baris yang layak diperhatikan:

```c
case BPF_LD | BPF_W | BPF_ABS:
        ftest->code = BPF_LDX | BPF_W | BPF_ABS;
```

Itu **bukan salah ketik** — penanda khusus seccomp yang dikenali
`bpf_convert_filter()`. Keberadaannya di `net/core/filter.c` diverifikasi
**sebelum** konversi dimulai; kalau tidak ada, filter seccomp akan gagal
dikonversi dan setiap aplikasi Android gagal start.

`bpf_prog_create_from_user(..., seccomp_check_filter, false)` kini mengerjakan
penyalinan, `bpf_check_classic`, penulisan ulang seccomp, dan konversi sekaligus
— urutan sama dengan skema lama. `save_orig = false` karena seccomp tak pernah
membaca program cBPF aslinya, dan menyimpannya memboroskan memori di **setiap
aplikasi Android**.

### Dua ikutan

`ppp_generic.c` (upstream `568f194e8bd1`): `pass_filter`/`active_filter` dari
`sock_filter` mentah jadi `bpf_prog`.

`__alloc_percpu_gfp` ditambahkan ke `mm/percpu.c`. Upstream mengubah
`pcpu_alloc()` agar menerima gfp; di 3.10 ia belum bisa dan **selalu boleh
tidur**. Maka permintaan atomik (tanpa `__GFP_WAIT`) **ditolak dengan NULL**
alih-alih dilayani — melayaninya berarti berpotensi tidur di konteks atomik,
jauh lebih buruk daripada kegagalan alokasi yang memang sudah diantisipasi
pemanggil.

---

## 5e. BOOT — dan seccomp terbukti bekerja

Diuji di perangkat 15 September 2026 lewat zip AnyKernel3 (kernel saja,
`/system` dan `/data` tidak disentuh).

```
sys.boot_completed = 1
uname -r           = 3.10.108-lineageos-gd2eef75ee48-dirty
crash buffer       = 0     tombstone = 0     oops/BUG = 0
```

### Seccomp: bukti langsung

```
pid 346  Seccomp=2  configstore@1.1
pid 458  Seccomp=2  mediaextractor
pid 476  Seccomp=2  omx@1.0-service
pid 478  Seccomp=2  mediaswcodec
```

`Seccomp=2` adalah `SECCOMP_MODE_FILTER` — program BPF **benar-benar terpasang
dan dijalankan pada setiap syscall** keempat proses itu. Semuanya hidup dan
sehat, **nol SIGSYS**.

Ini sekaligus membuktikan **inti eBPF** bekerja, bukan cuma seccomp: filter
seccomp kini adalah program eBPF, jadi jalur
`bpf_check_classic → seccomp_check_filter → bpf_convert_filter →
bpf_prog_select_runtime → interpreter` dilewati setiap kali salah satu proses
itu memanggil syscall.

### ⚠️ Yang TIDAK terbukti oleh boot ini

```
I Zygote : seccomp disabled by setenforce 0
```

Perangkat ini **SELinux permissive**, dan Zygote melewatkan pemasangan seccomp
untuk aplikasi biasa ketika permissive. Jadi jalur "setiap aplikasi yang start"
**tidak diuji** — yang teruji hanya empat proses di atas, yang memasang
filternya lewat minijail tanpa peduli mode SELinux.

Cukup untuk membuktikan konversinya benar, tapi bukan cakupan penuh.

### `bpf()` mengembalikan ENOSYS — dan kenapa

Uji syscall langsung (program bebas-libc, `svc #0`):

```
bpf(BPF_MAP_CREATE, HASH 4/4/8) -> -38      (-ENOSYS)
```

`sys_bpf` ada di `kallsyms`, fungsinya terkompilasi — **entri tabel syscall-nya
yang belum dipasang.** Terlewat saat penyambungan awal.

### ⚠️ Jebakan a6010 ketiga belas: nomor syscall

Nomor yang benar adalah **280**, karena itulah yang dipakai bionic:

```
bionic/libc/kernel/uapi/asm-generic/unistd.h:346:#define __NR_bpf 280
```

Tabel a6010 memberikan **280 kepada `userfaultfd`**, dan `__NR_bpf` **tidak ada
sama sekali** di asm-generic mereka — kernel mereka 32-bit, dan arm punya tabel
sendiri. **Menyalin tabel mereka akan membuat setiap panggilan `bpf()` dari
Android mendarat di `userfaultfd`.**

Diperbaiki di `29fc3ef95ed`; menunggu uji putaran kedua.

---

## 5f. Putaran kedua: eBPF BEKERJA PENUH, dan program Android termuat

`29fc3ef95ed`. Boot mulus, `uname -r` cocok dengan nama zip.

### Syscall `bpf()` diuji langsung, bukan disimpulkan

Program bebas-libc (`svc #0`) di perangkat:

```
1. MAP_CREATE(HASH 4/4/8)     -> 3        fd, peta terbuat
2. MAP_UPDATE_ELEM k=7 v=1234 -> 0
3. MAP_LOOKUP_ELEM k=7        -> 0        nilai terbaca = 1234
4. PROG_LOAD (program sah)    -> 4        verifier MENERIMA
5. PROG_LOAD (program cacat)  -> -13      verifier MENOLAK
   pesan verifier: 0: (95) exit
                   R0 !read_ok
```

Baris 5 yang paling meyakinkan: verifier benar-benar **menganalisis** program,
melacak keadaan register, dan menolak yang cacat dengan diagnosa upstream yang
tepat. Ini bukan stub.

Tipe peta yang sengaja dimatikan juga berperilaku jujur:

```
MAP_CREATE(PERF_EVENT_ARRAY) -> -22   (-EINVAL)
```

### bpfloader memuat SELURUH program Android

Tanpa diminta, dan ini melampaui perkiraan:

```
/sys/fs/bpf/netd_shared/
  prog_netd_cgroupskb_ingress_stats      <- inti akuntansi per-aplikasi
  prog_netd_cgroupskb_egress_stats       <- idem
  prog_netd_schedact_ingress_account
  prog_netd_skfilter_{allowlist,denylist,egress,ingress}_xtbpf
  + 10 peta netd

/sys/fs/bpf/tethering/    8 program offload + 11 peta
/sys/fs/bpf/              14 peta time_in_state, 3 peta GPU
```

**Verifier menerima program BPF Android yang sesungguhnya** — bukan program uji
buatan sendiri. Galat `E BpfHandler` turun dari **39 menjadi 2**.

### ⚠️ Yang menghalangi: cgroup v2, dan itu lebih besar dari perkiraan

Program **dimuat**, tetapi belum **ter-attach**. Sebelumnya diperkirakan yang
kurang hanya `CONFIG_CGROUP_BPF`. Ternyata lebih dari itu:

```
netd: avc denied open /dev/cg2_bpf     <- titik attach cgroup-BPF
/proc/filesystems: cgroup2 TIDAK ADA   <- 3.10 hanya punya cgroup v1
3 kegagalan attach di logcat
```

`BPF_PROG_ATTACH` untuk `BPF_CGROUP_INET_INGRESS/EGRESS` menuntut **fd cgroup
v2 (unified hierarchy)**, yang baru ada di 4.5. Jadi yang tersisa bukan satu
opsi Kconfig melainkan backport cgroup v2.

### Dua galat tersisa punya sebab yang tepat

```
E BpfHandler: Failed to get socket cookie: Protocol not available
```

`Protocol not available` = `ENOPROTOOPT` dari `getsockopt(SO_COOKIE)`.
`sock_gen_cookie()` sudah ada di kernel ini, tetapi **opsi soket `SO_COOKIE`
belum** — upstream `5daab9db7b65`. Perbaikan kecil dan terdefinisi.

### Jalan alternatif yang murah

`net/netfilter/xt_bpf.c` **ada di pohon** tetapi
`CONFIG_NETFILTER_XT_MATCH_BPF` tidak menyala. Jalur `skfilter/*/xtbpf`
menempel lewat iptables, **tanpa perlu cgroup sama sekali**. Layak dicoba
sebelum menempuh backport cgroup v2.

---

## 5g. Dua jalur termurah: `xt_bpf` dan `SO_COOKIE`

Dipilih setelah §5f membuktikan `cgroupskb` tidak bisa di-attach.

| | |
|---|---|
| **`SO_COOKIE`** | nomor **57**, sesuai bionic. Implementasi mengikuti upstream `5daab9db7b65`; `sock_gen_cookie()` sudah ada sejak tahap sebelumnya. Inilah yang dicari `BpfHandler` |
| **`xt_bpf`** | `net/netfilter/xt_bpf.c` sudah ada di pohon, hanya tidak pernah dibangun. Program `skfilter/*/xtbpf` menempel lewat iptables, **tanpa cgroup** |

### Konversi `xt_bpf` sekaligus memperbaiki bug

```c
/* lama */
program.filter = (struct sock_filter __user *) info->bpf_program;
sk_unattached_filter_create(&info->filter, &program);
```

`info->bpf_program` adalah array **di memori kernel** — xtables sudah menyalin
seluruh matchinfo dari userspace sebelum `checkentry` dipanggil. Tetapi
`sk_unattached_filter_create()` melakukan `copy_from_user()` atas pointer itu.

`bpf_prog_create()` menerima `sock_fprog_kern` dan memperlakukannya sebagai
pointer kernel — yang memang benar.

### ⚠️ Kesalahan proses, dicatat supaya tidak terulang

Putaran pertama menjalankan `make olddefconfig` setelah menyunting defconfig.
**`olddefconfig` membaca `.config` yang sudah ada dan sama sekali tidak melihat
defconfig.** Akibatnya `CONFIG_NETFILTER_XT_MATCH_BPF` tetap mati dan `xt_bpf`
tidak ter-link, padahal defconfig-nya sudah benar dan build "sukses".

Ketahuan karena simbol `bpf_mt` tidak ada di `System.map` — pemeriksaan simbol
inilah yang menangkapnya, bukan exit code build. Yang benar: jalankan ulang
target defconfig.

---

## 6. Perkiraan jujur

| tahap | keadaan |
|---|---|
| inti `kernel/bpf/` kompilasi | ✅ **SELESAI** — 0 galat, 12 objek |
| `net/core/filter.c` + seluruh `net/` | ✅ **SELESAI** — 0 galat |
| berkas pengguna API lama | ✅ ternyata hanya 2, keduanya selesai |
| konversi seccomp | ✅ **SELESAI** — 0 galat |
| syscall + bpffs + LSM | ✅ selesai — `sys_bpf` ada di System.map |
| cgroup attach (`CONFIG_CGROUP_BPF`) | ⬜ masih mati — wajib untuk program netd |
| link kernel utuh | ✅ **SELESAI** — Image 18,7 MB, +0,5% |
| boot | ✅ **BOOT**, seccomp terbukti (4 proses `Seccomp=2`, nol SIGSYS) |
| syscall `bpf()` | ✅ **BEKERJA** — map create/update/lookup, prog load, verifier menolak yang cacat |
| bpfloader memuat program Android | ✅ seluruh netd + tethering ter-pin di `/sys/fs/bpf` |
| attach ke cgroup | ❌ terhalang **cgroup v2** yang tidak ada di 3.10 — lebih besar dari perkiraan |
| bpfloader memuat program | belum |

Ini pekerjaan berhari-hari, bukan berjam-jam, dengan satu titik yang bisa
membuat perangkat tidak boot sama sekali.

**Imbalannya:** atribusi data jaringan per aplikasi di layar penggunaan, dan
hilangnya 39 galat `BpfHandler` + `NetworkStats` tiap boot.

Keputusan melanjutkan ada di pemilik perangkat. Kemajuan tersimpan di
`wip/ebpf` supaya tidak perlu diulang.

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

## 6. Perkiraan jujur

| tahap | keadaan |
|---|---|
| inti `kernel/bpf/` kompilasi | ✅ **SELESAI** — 0 galat, 12 objek |
| `filter.c` + `filter.h` masuk | sudah, belum dikompilasi |
| 41 berkas pengguna API lama | **belum disentuh** |
| konversi seccomp | **belum disentuh** — paling berisiko |
| syscall, bpffs, cgroup attach, LSM | belum |
| link kernel utuh | belum |
| boot | belum |
| bpfloader memuat program | belum |

Ini pekerjaan berhari-hari, bukan berjam-jam, dengan satu titik yang bisa
membuat perangkat tidak boot sama sekali.

**Imbalannya:** atribusi data jaringan per aplikasi di layar penggunaan, dan
hilangnya 39 galat `BpfHandler` + `NetworkStats` tiap boot.

Keputusan melanjutkan ada di pemilik perangkat. Kemajuan tersimpan di
`wip/ebpf` supaya tidak perlu diulang.

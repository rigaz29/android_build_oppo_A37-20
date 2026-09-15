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

## 6. Perkiraan jujur

| tahap | keadaan |
|---|---|
| inti `kernel/bpf/` kompilasi | ~85% — 30 galat kecil tersisa |
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

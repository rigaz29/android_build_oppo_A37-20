# cgroup-BPF: backport penuh cgroup v2 ternyata TIDAK diperlukan

Dimulai **15 September 2026**. **Belum selesai.** Cabang
`kernel_oppo_msm8939` → `wip/cgroup2` (`2ecb896d48a`), bercabang dari
`wip/ebpf`.

---

## 1. Kenapa ini dibutuhkan

[`../ebpf/`](../ebpf/) berakhir di satu tembok: seluruh program BPF Android
**berhasil dimuat**, jalur `xt_bpf` **berhasil dipasang**, tetapi
`app_uid_stats_map` tetap **kosong** — karena yang mengisinya hanya
`cgroupskb/ingress/stats` dan `egress/stats`, dan itu menuntut pemasangan ke
cgroup v2.

---

## 2. Jalan yang ditempuh a6010 — dan kenapa tidak diikuti

Mereka mengganti **seluruh subsistem cgroup** dengan versi 4.x:

```
kernel/cgroup/cgroup.c    185 KB   (punya kita: satu berkas 5.536 baris)
kernel/cgroup/cpuset.c     77 KB
kernel/cgroup/freezer.c    14 KB
kernel/cgroup/pids.c        8 KB
fs/kernfs/                 90 KB   (8 berkas — kita TIDAK punya kernfs)
include/linux/cgroup-defs.h 21 KB
                        ~400 KB, MENGGANTI bukan menambah
```

Di pohon kita itu berarti:

| | |
|---|---|
| berkas menyertakan `<linux/cgroup.h>` | **32** |
| berkas memakai `cgroup_subsys_state`/`css_*` | **18** |
| `fs/sysfs` | harus ditukar ke atas `kernfs` |
| controller | semua di-port ulang, termasuk **`CONFIG_CGROUP_BFQIO`** yang khas CAF dan **tidak ada di pohon 4.x mana pun** |

Berbeda sifatnya dari eBPF. eBPF **menambah** subsistem baru; ini **mengganti**
subsistem yang seluruh kernel dan Android bergantung padanya.

---

## 3. Ternyata tidak perlu

Yang sebenarnya dituntut netd cuma dua hal
(`BpfHandler.cpp:51-79`):

1. fd direktori cgroup
2. `BPF_PROG_ATTACH` ke fd itu

Dan `cgroups.json:48-54` menyatakan:

```json
"Cgroups2": { "Path": "/dev/cg2_bpf", "Mode": "0600", "Optional": true }
```

Hierarki **tanpa satu pun controller** — murni titik tempel BPF. (`Optional:
true` itu pula sebabnya perangkat tetap boot mulus tanpanya.)

Dan kernel 3.10 **sudah** mendukung hierarki tanpa controller lewat opsi `none`
dan `name=` (`kernel/cgroup.c:1149`).

Terbukti kecil: setelah `CONFIG_CGROUP_BPF` dinyalakan, build hanya melaporkan
**enam** galat.

---

## 4. Yang sudah masuk

| | |
|---|---|
| shim jump label 4.3 | `struct static_key_false`, `DEFINE_STATIC_KEY_FALSE`, `static_branch_unlikely` dkk di atas `static_key` 3.10. Pemeriksaan tipe upstream tidak ditiru; perilakunya sama |
| `struct cgroup` | += `struct cgroup_bpf bpf` |
| `cgroup_parent()` | di 3.10 cukup `cgrp->parent` |

---

## 5. SELESAI — kernel ter-link, keenam langkah dikerjakan

`6515c3ada21`. `make Image` **exit 0, nol galat, nol undefined reference**.
**Belum pernah di-boot.**

| langkah | hasil |
|---|---|
| filesystem `cgroup2` | hierarki tanpa controller, memakai ulang mesin `none`/`name=` 3.10 |
| `cgroup_get_from_fd` / `cgroup_put` | ditulis ulang **berbasis dentry**, bukan disalin dari upstream berbasis kernfs |
| pembungkus attach/detach/query | mengambil `cgroup_mutex` seperti upstream |
| `sock_cgroup_data` | di `struct sock`, diisi di `sock_init_data()` |
| `cgroup_bpf_inherit` / `put` | disambungkan ke pembuatan & penghancuran cgroup |
| hook ingress + **egress** | `filter.c:83` + `ip_finish_output()` + `ip6_finish_output()` |

### ⚠️ Perangkap yang dicegah — akan gagal DIAM-DIAM kalau terlewat

```c
/* upstream 4.x  */ css_for_each_descendant_pre(css, &cgrp->self)   ← MENYERTAKAN cgrp
/* 3.10          */ cgroup_next_descendant_pre(NULL, cgrp)          ← MELEWATI cgrp
                    /* "pretends we just visited @cgroup" — kernel/cgroup.c:3174 */
```

Substitusi mentah akan membuat **keempat** loop itu **kosong total** di root
hierarki `cg2_bpf` yang tidak punya anak. Program tidak akan pernah menjadi
efektif, dan seluruh akuntansi diam-diam tidak jalan — **tanpa satu pun galat**.

Karena itu `cgrp` dikerjakan **eksplisit lebih dulu** di setiap loop.
`rcu_read_lock()` ikut dipasang: iterator 3.10 memasang
`WARN_ON_ONCE(!rcu_read_lock_held())`.

### Hook egress — tanpa ini hanya trafik masuk yang terhitung

Upstream memanggilnya dengan parameter `sk`; signature 3.10 tidak membawanya,
jadi diambil dari `skb->sk` — dan makronya memang memeriksa `sock == skb->sk`,
sehingga setara. Diverifikasi lewat `nm`: `ip_output.o` dan `ip6_output.o`
memuat `U __cgroup_bpf_run_filter` dan `U cgroup_bpf_enabled_key`.

### Penyederhanaan yang disengaja, dan batasnya

`cgroup_sk_alloc()` selalu mengisi **root** hierarki cgroup2, bukan cgroup
tempat task berada. Itu **benar untuk pemakaian yang ada** — netd memasang
programnya di root `/dev/cg2_bpf` dan tidak pernah membuat cgroup anak di sana.

Kalau suatu saat ada yang membuat cgroup anak dengan program berbeda,
atribusinya akan salah (semuanya jatuh ke root). Yang benar saat itu:
`task_cgroup_from_root(current, &cgroup2_root)`. Dicatat di tempatnya.

---

## 6. Yang akan membuktikannya

```sh
mount | grep cgroup2                 # /dev/cg2_bpf akhirnya ter-mount?
logcat | grep -c "attach failed"     # sekarang 3
/data/local/tmp/dumpmap              # sekarang "total entri: 0"
dumpsys netstats --uid               # rincian per aplikasi
```

---

## 7. Yang tersisa — 15 galat, semuanya di `kernel/bpf/cgroup.c`

```
css_for_each_descendant_pre(css, &cgrp->self)    4 tempat
sock_cgroup_ptr(&sk->sk_cgrp_data)               2 tempat
```

`cgrp->self` (css milik cgroup itu sendiri) baru ada di 4.x; perlu dipetakan ke
iterator 3.10 `cgroup_for_each_descendant_pre`. `sock_cgroup_data` perlu
ditambahkan ke `struct sock` dan diisi saat socket dibuat.

Di luar berkas itu masih perlu:

- `cgroup_get_from_fd()` dan `cgroup_put()` **berbasis dentry** — 3.10 memakai
  `cgrp->dentry`, bukan kernfs
- pembungkus `cgroup_bpf_attach/detach/query` (yang mengambil `cgroup_mutex`)
- pendaftaran tipe filesystem **`cgroup2`**
- penyambungan `cgroup_bpf_inherit()` / `cgroup_bpf_put()` ke pembuatan dan
  penghancuran cgroup

Catatan: karena netd hanya menempel ke **root** hierarki `cg2_bpf`, dan hierarki
itu tidak punya cgroup anak, penelusuran descendant praktis selalu kosong. Itu
menyederhanakan adaptasi, tetapi jangan dijadikan alasan menulis versi yang
salah — kalau suatu saat ada cgroup anak, hasilnya harus tetap benar.

---

## Panic build #12, dan mengapa satu perbaikan saja tidak cukup

Zip `...-6515c3ada21-...` bootloop di logo OPPO. `console-ramoops-0` menyimpan
sebabnya utuh (kedua `dmesg-ramoops-*` rusak berat — ECC melaporkan "1638
unrecoverable blocks" dan teksnya tidak terbaca):

```
[ 16.473846] Unable to handle kernel NULL pointer dereference at virtual address 00000010
[ 16.474461] Internal error: Oops: 96000085 [#1] PREEMPT SMP
[ 16.474651] CPU: 0 PID: 311 Comm: netd  3.10.108-lineageos-g6515c3ada21 #12
[ 16.474945] PC is at prog_list_length+0x14/0x2c
[ 16.475041] LR is at __cgroup_bpf_attach+0xfc/0x33c
             Call trace:  prog_list_length <- cgroup_bpf_attach <- SyS_bpf
```

ESR `96000085`: EC=0x25 (data abort EL1), **WnR=1 (tulis)**, DFSC=0x05
(translation fault level 1).

### Akar masalah

`cgroup_bpf_inherit()` dipanggil dari `cgroup_create()` saja. Cgroup **root** di
3.10 tidak lewat jalur itu — ia disiapkan `init_cgroup_root()`
(kernel/cgroup.c:1427). Jadi `root->top_cgroup` datang dengan
`bpf.progs[].next == NULL`.

Dan root itulah satu-satunya cgroup yang dipakai: `cgroup2_mount()` menyetel
`cgroup2_root = __d_cgrp(dentry)`, yang persis `&root->top_cgroup`, lalu netd
mem-`BPF_PROG_ATTACH` ke sana. `prog_list_length()` menelusuri list kosong itu
dan mati di `NULL + 0x10`.

Upstream tidak kena karena `cgroup_setup_root()` (4.5+) memanggil
`cgroup_bpf_inherit()` untuk root juga. Ini murni celah backport, bukan cacat
upstream maupun salah salin dari a6010.

### Tiga cacat, bukan satu

Memperbaiki yang pertama saja hanya memindahkan panic beberapa milidetik.

| # | Cacat | Akibat |
|---|---|---|
| 1 | root cgroup tak pernah lewat `cgroup_bpf_inherit()` | `progs[].next == NULL` → panic di atas |
| 2 | `cgroup_sk_alloc()` menyalin `cgroup2_root` yang masih NULL sebelum mount pertama | `cgrp->bpf.effective[]` → NULL deref di jalur paket |
| 3 | `__cgroup_bpf_run_filter_sk()` mendereference `effective[type]->progs[0]` langsung | NULL deref, **dan** hanya menjalankan program pertama |

Cacat #2 pasti jadi panic berikutnya: socket yang dibuat **sebelum**
`/dev/cg2_bpf` di-mount — milik init dan netd sendiri — menyimpan `cgrp = NULL`
seumur hidupnya, dan tetap mengirim paket setelah program terpasang.

Cacat #3 berdiri sendiri: selain NULL deref, ia diam-diam mengabaikan program
kedua dan seterusnya sehingga `BPF_F_ALLOW_MULTI` tidak berlaku di jalur itu.

### Yang dikerjakan

- `init_cgroup_root()`: `INIT_LIST_HEAD()` untuk seluruh `bpf.progs[]`. Hanya
  bagian yang tidak bisa gagal — fungsinya bertipe `void`, `-ENOMEM` tidak punya
  tempat dilaporkan. Berlaku untuk SEMUA root, hierarki v1 sekalipun.
- `cgroup2_mount()`: `cgroup_bpf_inherit()` penuh untuk alokasi `effective[]`,
  digerbangi `!cgroup2_root` supaya mount kedua tidak me-reset list dan
  membocorkan program yang sudah terpasang. Kalau gagal: `pr_warn` dan
  `cgroup2_root` dibiarkan NULL — **mount yang sudah berhasil TIDAK dibatalkan**,
  karena `cgroup_mount()` memulangkan dentry tanpa memegang `s_umount` sehingga
  `deactivate_locked_super()` tidak sah dari titik itu. Menukar kegagalan
  alokasi dengan kerusakan VFS jelas bukan perbaikan.
- Kelima pemakai `sock_cgroup_ptr()` dijaga `if (unlikely(!cgrp)) return 0;`.
  Untuk setsockopt/getsockopt penjagaan ditaruh di
  `__cgroup_bpf_prog_array_is_empty()` — satu tempat, bukan dua pemanggil.
- Jalur skb/sock_addr/sk memakai `BPF_PROG_RUN_ARRAY_CHECK`, bukan varian polos
  seperti upstream. Upstream boleh melewatkannya karena invariannya dijaga di
  semua tempat; di sini invarian itu baru saja terbukti bocor, dan satu cabang
  yang hampir selalu tidak diambil jauh lebih murah daripada kernel panic.
- `__cgroup_bpf_prog_array_is_empty()`: `!prog_array` dihitung kosong.

### Catatan cara baca log

`dmesg-ramoops-*` sama sekali tidak terpakai — korupsinya membuat `grep` meleset
karena teksnya sendiri berubah ("LibBpdLOAdeR", "Intezna e ror"). `console-ramoops-0`
jauh lebih utuh dan berisi seluruh konsol boot, bukan hanya wilayah oops. Cari
offsetnya dengan `grep -abo 'Oops'` lalu `dd`, jangan `tail`: panic-nya tidak di
ujung berkas.

---

## Terbukti di perangkat (15 Sep 2026, kernel g40bd72907a8)

Boot mulus, `dmesg` tanpa oops, `E BpfHandler` tetap 0.

```
$ dumpsys connectivity trafficcontroller
    Cgroup ingress program status: OK
    Cgroup egress program status: OK
```

Dua baris itu yang mustahil sebelumnya — attach cgroupskb-lah yang selama ini
menahan `app_uid_stats_map` di 0 entri.

### Uji terkendali: unduh 5.242.880 byte sebagai uid 0

`mAppUidStatsMap` sebelum → sesudah:

| uid | rxBytes sebelum | sesudah | delta |
|---|---|---|---|
| 0 | 1.319 | 5.440.480 | **5.439.161** |
| 10142 | 4.344 | 4.344 | 0 |
| 1000 | 8.921 | 8.921 | 0 |

Delta 5.439.161 atas muatan 5.242.880 = overhead 3,7%, pas untuk header TCP/IP.
rxPackets +3.765 → 1.392 byte/paket. Dan **hanya uid 0 yang bergerak**: yang
diuji memang atribusi per-aplikasi, bukan sekadar total.

Seluruh peta konsisten satu sama lain:

| Peta | wlan0 rxBytes |
|---|---|
| `mIfaceStatsMap` | 5.458.109 |
| `mStatsMapB` | 687.255 (sejak swap terakhir) |
| `mAppUidStatsMap` uid 0 | 5.440.480 |

Lapisan framework ikut terisi (`dumpsys netstats detail`) — per-uid, terpisah
`set=DEFAULT`/`set=FOREGROUND`, plus `UID tag stats`. Itulah sumber layar
"Penggunaan data" di Setelan.

### Jebakan baca: mStatsMapA kosong itu NORMAL

`mStatsMapA` kosong sempat saya kira tanda program berhenti di tengah. Bukan.
Baris `current statsMap configuration: 1 SELECT_MAP_B` menjelaskannya: A dan B
adalah dua paruh buffer ganda yang ditukar NetworkStats tiap poll, dan yang
sedang aktif memang B. Periksa baris konfigurasi itu dulu sebelum menyimpulkan
apa pun dari salah satu peta yang kosong.

Catatan kecil yang sama menyesatkannya: `dmesg | grep -i 'BUG:'` memberi satu
kecocokan palsu pada `qcom,cc-debug: Registered Debug Mux successfully`
("debug:" mengandung "bug:"). Dan `dumpsys netstats` TIDAK mencetak bagian
per-UID kecuali diberi argumen `detail` — `full` maupun `--full` tidak cukup.

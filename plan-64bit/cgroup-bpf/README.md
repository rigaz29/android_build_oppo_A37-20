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

## 5. Yang tersisa — 15 galat, semuanya di `kernel/bpf/cgroup.c`

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

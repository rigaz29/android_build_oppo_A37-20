# Apakah eBPF + cgroup-BPF meregresi stabilitas?

Diukur 15 Sep 2026 di kernel `g40bd72907a8`, uptime 9 menit.
**Tidak ditemukan regresi. Ada ongkos, dan ongkosnya bisa disebut angkanya.**

## 1. Yang diukur, dan hasilnya bersih

| pemeriksaan | hasil |
|---|---|
| oops / panic | 0 |
| `WARNING:` / `WARN_ON` / RCU stall / soft lockup / hung task | 0 nyata |
| crash aplikasi (`logcat -b crash`) | 0 |
| tombstone native | 0 |
| ping flood loopback 20.000 paket | 0% hilang, rtt **0,043 ms** |
| akuntansi unduhan 5 MB | tepat, 3,7% overhead header |

Tiga kecocokan `grep` di dmesg semuanya benigna dan perlu disebut supaya tidak
dihitung dua kali: `qcom,cc-debug: Registered Debug Mux` (cocok dengan pola
"bug:"), `unable to open an initial console`, dan `qseecomd uses 32-bit
capabilities`. Ketiganya ada sejak sebelum pekerjaan ini.

## 2. Ongkos yang nyata, dihitung bukan dikira

### RAM peta BPF — 4,25 MB

Peta hash BPF **diprealokasi** (`kernel/bpf/hashtab.c:230`, kecuali
`BPF_F_NO_PREALLOC`). Dihitung dengan rumus `cost` kernel itu sendiri
(hashtab.c:317), `elem_size = 48 + round_up(key,8) + round_up(value,8)`,
`n_buckets = roundup_pow_of_two(max_entries)`, `sizeof(struct bucket) = 16`:

| peta | entri | elem | byte |
|---|---|---|---|
| `cookie_tag_map` | 10.000 | 64 | 902.144 |
| `app_uid_stats_map` | 10.000 | 88 | 1.142.144 |
| `stats_map_A` | 5.000 | 96 | 611.072 |
| `stats_map_B` | 5.000 | 96 | 611.072 |
| `uid_counterset_map` | 4.000 | 64 | 321.536 |
| `uid_owner_map` | 4.000 | 72 | 353.536 |
| `uid_permission_map` | 4.000 | 64 | 321.536 |
| `iface_stats_map` | 1.000 | 88 | 104.384 |
| `iface_index_name_map` | 1.000 | 72 | 88.384 |
| **total netd** | | | **4.455.808 = 4,25 MB** |

Itu **peta netd saja**. Ada 49 peta ter-pin seluruhnya (time_in_state, gpu,
clat, dscp, tethering, blocked_ports), jadi angka sebenarnya lebih besar —
belum dihitung. Di perangkat 1,84 GB ini 4,25 MB = 0,23%.

### Struktur data

- `struct cgroup_bpf` = `24 * (8 + 16 + 4) + 8` = **680 byte per cgroup**.
  Perangkat punya 388 cgroup → ~264 KB.
- `struct sock` bertambah `sk_uid` + `sk_cookie` + `sk_cgrp_data` ≈ 24 byte
  per socket.

### Jalur panas yang kini membawa panggilan

```
net/core/filter.c:83      BPF_CGROUP_RUN_PROG_INET_INGRESS   (sk_filter_trim_cap)
net/ipv4/ip_output.c:239  BPF_CGROUP_RUN_PROG_INET_EGRESS    (ip_finish_output)
net/ipv6/ip6_output.c:164 BPF_CGROUP_RUN_PROG_INET_EGRESS    (ip6_finish_output)
```

Digerbangi `static_branch_unlikely(&cgroup_bpf_enabled_key)` — NOP yang
di-patch saat mati. **Tapi netd sudah attach, jadi gerbangnya TERBUKA**:
program BPF sungguhan berjalan di setiap paket masuk dan keluar. Ini ongkos
permanen, bukan nol.

## 3. Dua hal yang BELUM terbukti — dan harus dibaca sebagai itu

### a. Konversi seccomp ke eBPF baru teruji tipis

`net/core/filter.c` adalah perubahan terbesar (+3.970 baris) dan konversi
seccomp lewat `bpf_prog_create_from_user()` adalah bagian paling berisiko.
Cakupannya sekarang **5 dari 304 proses**:

```
Seccomp: 0  -> 299 proses
Seccomp: 2  ->   5 proses   (mediaextractor, mediaswcodec, omx@1.0-service,
                             configstore@1.1, satu isolated app process)
```

Kelimanya berjalan tanpa crash maupun tombstone, jadi jalur itu **bekerja** —
tapi hanya untuk filter minijail. Filter seluruh-aplikasi dari zygote tidak
pernah dipasang karena `Zygote: seccomp disabled by setenforce 0`. Begitu
SELinux dijadikan enforcing, cakupannya melompat dari 5 proses ke hampir
semuanya, dan bukti yang ada sekarang tidak menanggung itu.

Dugaan awal saya "jalur seccomp tidak dijalankan sama sekali" SALAH; angka di
atas yang benar.

### b. Belum ada A/B throughput

rtt loopback 0,043 ms terlihat sehat, tapi tidak ada angka "sebelum" untuk
dibandingkan. A/B yang bersih butuh satu flash kernel `wip/ebpf`
(`78a02983f52`) — kernel yang sama persis tanpa cgroup-BPF — lalu ukur ulang
dengan perintah yang sama, lalu flash balik.

### c. Uptime 9 menit

Tidak menjawab kebocoran memori lambat atau stall yang butuh berjam-jam.

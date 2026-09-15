# Fitur apa yang bisa dibangun di atas eBPF + cgroup-BPF?

Inventaris 15 Sep 2026, kernel `g40bd72907a8`. Sumbernya bukan daftar fitur
Android 13, melainkan apa yang **sudah ada di perangkat tapi belum jalan**.

Petunjuk pertama: ada kelompok peta yang lengkap dibuat tapi nol program.

| kelompok | peta ter-pin | program ter-pin |
|---|---|---|
| `netd` | 10 | 7 (jalan) |
| `clatd` | 2 | 4 (jalan) |
| `offload` (tethering) | 9 | 8 (varian `$stub`) |
| **`time_in_state`** | **14** | **0** |
| **`gpu_mem` + `gpu_work`** | **3** | **0** |
| **`dscp_policy`** | **7** | **0** |
| **`block`** | **1** | **0** |

Jenis program yang kernel kita daftarkan: `SOCKET_FILTER`, `KPROBE`,
`TRACEPOINT`, `PERF_EVENT`, `SCHED_CLS`, `SCHED_ACT`, `XDP`, `CGROUP_SKB`,
`CGROUP_SOCK`, `CGROUP_SOCK_ADDR`, `CGROUP_SOCKOPT`. Itu lebih luas daripada
yang sedang dipakai.

---

## Tingkat 1 — prasyarat sudah lengkap

### A. `time_in_state` → CPU dan baterai per-aplikasi  ⬅ paling berharga

Layar Setelan > Baterai sekarang tidak punya data CPU per-aplikasi. Peta untuk
itu **sudah dibuat dan ter-pin** (14 buah), tapi nol program dimuat.

Setiap prasyarat yang bisa diperiksa TERPENUHI:

| syarat | keadaan |
|---|---|
| tracepoint `sched/sched_switch` | ada di 3.10 |
| tracepoint `sched/sched_process_free` | ada di 3.10 |
| tracepoint `power/cpu_frequency` | ada di 3.10 |
| `BPF_PROG_TYPE_TRACEPOINT` | terdaftar |
| helper: `get_current_uid_gid`, `ktime_get_ns`, `get_smp_processor_id`, `map_*_elem`, `probe_read` | semua ada di `tracing_func_proto` |
| pemetaan seksi `"tracepoint/"` di bpfloader | ada (`Loader.cpp:175`) |
| gerbang `KVER` | **tidak ada** — `DEFINE_BPF_PROG` polos |
| peta `PERCPU_HASH`/`PERCPU_ARRAY` | jalan (petanya berhasil dibuat) |

Jadi penghalangnya bukan salah satu dari itu. Penyebab pastinya **belum
diketahui** dan butuh satu boot dengan logcat ditangkap sejak awal — log boot
sudah berputar, dan `logcat -L` tidak menyimpan apa-apa.

Langkah berikutnya yang benar: reboot sambil `adb logcat -b all` berjalan, saring
`LibBpfLoader`. Murah, dan menjawab langsung.

### B. `cgroupsock/inet/create` → penegakan izin INTERNET di kernel

`netd.c:428` menggerbanginya dengan `KVER(4, 14, 0)`, jadi bpfloader
melewatinya. Padahal:

- `BPF_PROG_TYPE_CGROUP_SOCK` **terdaftar** di kernel kita
- `cgroup_bpf_attach()` **terbukti bekerja** hari ini
- `uid_permission_map` **sudah dibuat** dan diisi netd

Yang tersisa hanya melonggarkan gerbang versi lalu memastikan akses konteks
`struct bpf_sock` lolos verifier. Ini kandidat termurah kedua.

---

## Tingkat 2 — butuh kait kernel baru, jenis programnya sudah ada

### C. `block.c` → blokir port per-aplikasi

`KVER(5, 4, 0)`, memakai attach type `bind4`/`bind6`.
`BPF_PROG_TYPE_CGROUP_SOCK_ADDR` sudah terdaftar, dan makro
`BPF_CGROUP_RUN_PROG_INET4_BIND` / `INET6_BIND` **sudah ada di
include/linux/bpf-cgroup.h** — tapi tidak ada satu pun pemanggil.

Pekerjaannya persis sebentuk dengan kait egress yang baru saja selesai: pasang
panggilan di `inet_bind()` dan `inet6_bind()`.

### D. `dscp_policy` (QoS) dan tethering offload sungguhan

`KVER(5, 15, 0)` dan `KVER(5, 4, 0)`, lewat `schedcls` di tc clsact.
`BPF_PROG_TYPE_SCHED_CLS` terdaftar, tapi ini butuh helper yang lebih baru
(`bpf_skb_change_head`, `bpf_skb_adjust_room`) plus qdisc clsact. Program
tethering yang ter-pin sekarang adalah varian `$stub`, bukan offload nyata.

Jauh lebih besar daripada A/B/C, dan manfaatnya di perangkat ini tipis —
tethering 4G di msm8916 tidak dibatasi CPU.

---

## Tingkat 3 — tidak sepadan

### E. `gpu_mem` / `gpu_work`

Butuh tracepoint `gpu_mem/gpu_mem_total` dan `power/gpu_work_period`. Keduanya
**tracepoint khas Android yang harus dipancarkan driver GPU**. KGSL/Adreno di
msm8916 tidak punya keduanya, jadi ini pekerjaan menambah tracepoint ke driver
vendor, bukan backport eBPF.

### F. `fuse_media.o` (FUSE-BPF)

Minta seksi `fuse/media` — jenis program yang **tidak ada sama sekali** di enum
`bpf_prog_type` kita, dan FUSE-BPF sendiri belum masuk mainline. Besar sekali,
hasilnya tidak pasti.

---

## Di luar BPF: sisi cgroup

Yang kita punya **bukan cgroup v2 sungguhan** — hierarki v1 tanpa controller
yang dinamai "cgroup2" (`/dev/cg2_bpf` tidak punya `cgroup.controllers`).
Controller v2 sungguhan (freezer, io, memory) adalah backport yang jauh lebih
besar. Freezer v2 akan memungkinkan revert `CachedAppOptimizer` dibuang, tapi
freezer v1 sudah bekerja — nilainya rendah.

## Bonus yang sudah terbuka tapi belum dipakai

`BPF_PROG_TYPE_KPROBE` dan `PERF_EVENT` terdaftar. Android tidak bergantung
padanya, tapi itu membuka perkakas penelusuran gaya bcc/simpleperf — berguna
justru untuk mendiagnosis perangkat ini sendiri, termasuk menjawab pertanyaan
A di atas.

## Urutan yang disarankan

1. **A** — tangkap log boot, cari kenapa `time_in_state` gagal dimuat. Satu
   reboot, dan itu gap paling terlihat pengguna.
2. **B** — longgarkan gerbang `KVER(4,14,0)` pada `cgroupsock/inet/create`.
3. **C** — kait `inet_bind()`, bentuknya sama dengan kait egress.

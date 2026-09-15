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

---

# Hasil boot terinstrumentasi (15 Sep 2026)

Pertanyaannya terjawab, dan jawabannya **membatalkan penilaian "Tingkat 1"
saya di atas**. Lihat koreksi di bawah.

## Cara menangkapnya

Log boot tidak pernah muncul di logcat: bpfloader jalan di detik ~17, sebelum
logd siap, jadi keluarannya masuk **kernel log**. `logcat -b all` memberi 0
baris bpfloader; `dmesg` memberi 1.668.

(`persist.logd.size=8M` sempat disetel untuk ini lalu dikembalikan ke default
— tidak perlu, dan 8M per-buffer mahal di perangkat 2 GB.)

## Yang terbaca

```
LibBpfLoader: cs[0].name:tracepoint_sched_sched_switch min_kver:0 .max_kver:ffffffff (kvers:30a006c)
LibBpfLoader: bpf_prog_load lib call for .../time_in_state.o (tracepoint_sched_sched_switch)
              returned fd: -1 (Invalid argument)
LibBpfLoader: bpf_prog_load - BEGIN log_buf contents:
LibBpfLoader: bpf_prog_load - END log_buf contents.
bpfloader: Failed to load object: /system/etc/bpf/time_in_state.o, ret: Operation not permitted
```

**Log verifier KOSONG.** Itu kuncinya: `bpf()` gagal SEBELUM verifier jalan.
Dan pembedanya jelas — netd.o (`CGROUP_SKB`, `SCHED_ACT`, `SOCKET_FILTER`)
berhasil, sementara SETIAP objek yang gagal memakai `TRACEPOINT`.

Penyebabnya `find_prog_type()` di `kernel/bpf/syscall.c`: ia memulangkan
`-EINVAL` kalau jenis program tidak ada di daftar `bpf_prog_types`.

## KOREKSI: "BPF_PROG_TYPE_TRACEPOINT terdaftar" itu SALAH

Klaim itu saya buat dari grep **source**, bukan kernel terbangun. Faktanya:

```
$ grep bpf kernel/trace/Makefile          -> TIDAK ADA aturan bpf_trace.o
$ ls out/kernel/trace/bpf_trace.o         -> tidak dibangun
$ grep tracepoint_prog_ops out/System.map -> tidak ada
```

`bpf_trace.c` ikut ditransplantasi tapi **tidak pernah dikompilasi**. Jenis
program `TRACEPOINT`, `KPROBE`, dan `PERF_EVENT` karenanya tidak pernah
didaftarkan. Semua yang saya sebut "bonus yang sudah terbuka" di bagian
sebelumnya juga tidak terbuka.

## Celah sebenarnya: enam bagian, bukan satu gerbang

| # | yang hilang | ukuran |
|---|---|---|
| 1 | **seluruh infrastruktur ftrace event** — `CONFIG_EVENT_TRACING` mati, tidak ada `/sys/kernel/debug/tracing` sama sekali (debugfs sendiri ter-mount) | fondasi |
| 2 | `CONFIG_KPROBES` + `CONFIG_KPROBE_EVENT` (dependensi `BPF_EVENTS` di hulu) | defconfig |
| 3 | `config BPF_EVENTS` di Kconfig | sepele |
| 4 | `obj-$(CONFIG_BPF_EVENTS) += bpf_trace.o` di kernel/trace/Makefile | sepele |
| 5 | `PERF_EVENT_IOC_SET_BPF` di kernel/events/core.c + uapi/perf_event.h — jalur ATTACH, tidak ada sama sekali | sedang |
| 6 | pemanggil `trace_call_bpf()` — fungsinya ada di bpf_trace.c tapi nol pemanggil; butuh kait di `perf_trace_buf_submit()` plus field `struct bpf_prog *prog` pada `struct ftrace_event_call` | sedang |

## Penilaian ulang

Bukan "murah". Sebanding dengan pekerjaan cgroup-BPF yang baru selesai,
mungkin sedikit di bawahnya. Nomor 1 juga membawa ongkos tetap yang nyata:
ring buffer ftrace per-CPU dan deskriptor event untuk setiap tracepoint,
beberapa MB di perangkat 2 GB, plus tambahan waktu boot.

Imbalannya lebih luas daripada baterai saja: nomor 1-6 sekaligus membuka
`KPROBE` dan `PERF_EVENT`, yaitu perkakas penelusuran gaya bcc/simpleperf.

**Kandidat B (`cgroupsock/inet/create`, hanya digerbangi `KVER(4,14,0)`)
sekarang jelas lebih murah daripada A**, dan urutan yang disarankan di atas
sebaiknya dibalik.

# Patch mana yang perlu dilucuti setelah eBPF + cgroup-BPF jalan?

Inventaris 15 Sep 2026. Tambalan "tanpa-BPF" dipisahkan dari commit LineageOS
hulu dengan `git branch -r --contains` — yang `inup=0` adalah cherry-pick lokal.

| repo | commit | penulis | isi |
|---|---|---|---|
| netd | `2fb47c31` | PHH | `exit(1)` dikomentari saat setup cgroup/bpf gagal |
| netd | `9c327a88` | ChonDoit | `exit(1)` dikomentari saat BandwidthController gagal |
| Connectivity | `2d75dc270` | PHH | attach cgroup boleh gagal, `RETURN_IF_NOT_OK` -> `ALOGE` |
| Connectivity | `da0a10cca` | PHH | `BpfMap` pakai `isOk()`, bukan assert |
| Connectivity | `666946f0b` | PHH | penjaga `mCookieTagMap == null` |
| Connectivity | `e51d7b94f` | koron393 | fallback qtaguid untuk indikator trafik |
| Connectivity | `33060ad22` | rigaz29 | laporkan peta hilang sekali saja |

## 1. Lucuti sekarang, risiko nol

### `ro.kernel.ebpf.supported=false` (device.mk:635)

**Tidak ada yang membacanya.** Dibuktikan dua kali: grep seluruh source tree
(0 kecocokan di luar device.mk), dan grep biner `system/` + `apex/` hasil build
— string itu hanya muncul di `build.prop`, tempat ia disetel.

Komentarnya menyebut gerbangnya ada di `BpfLoader.cpp:115` dan
`Controllers.cpp:280` dari repopick 320591/320592. Kedua repopick itu **tidak
ada di tree ini** — nomor barisnya pun sudah tidak cocok dengan isi berkas
sekarang. Jadi baris ini bukan cuma usang, ia menyesatkan: ia menjanjikan
gerbang yang tidak pernah terpasang, dan bpfloader tetap memuat semuanya
(`bpf.progs_loaded=1`) meski nilainya `false`.

## 2. Perbaiki sekarang, bukan lucuti: bug di `2d75dc270`

```c
auto ret2 = attachProgramToCgroup(BPF_INGRESS_PROG_PATH, cg_fd, BPF_CGROUP_INET_INGRESS);
if (!isOk(ret)) {                    // <-- ret, bukan ret2
    ALOGE("Failed loading ingress program");
}
```

`ret2` tidak pernah diperiksa. Kalau attach ingress gagal sendirian, statusnya
dibaca dari hasil egress — diagnosisnya akan salah persis ketika paling
dibutuhkan. Bug salin-tempel di patch hulu PHH, bukan bawaan kita.

Catatan: `da0a10cca` punya bug sejenis (`ifaceIndexNameMap.isValid() ||
ifaceStatsMap.isOk()`) yang sudah diperbaiki `33060ad22`.

## 3. Tahan dulu: kedua `exit(1)`

Menggoda untuk dikembalikan — keduanya adalah sistem peringatan dini, dan
keduanya **diam sepanjang panic hari ini**. Dengan `exit(1)` hidup, kegagalan
setup BPF akan terlihat seketika, bukan berubah jadi akuntansi yang diam-diam
mati.

Tapi netd yang keluar = crash loop, dan pemulihannya lewat recovery. Bukti yang
ada baru satu boot sukses dan uptime 9 menit. Kembalikan setelah ROM ini
dipakai beberapa hari tanpa insiden, bukan sekarang.

## 4. Biarkan: fallback qtaguid dan `CONFIG_NETFILTER_XT_MATCH_QTAGUID`

`e51d7b94f` dipakai **hanya sebagai fallback** —
`com_android_server_net_NetworkStatsService.cpp:152` mencoba `bpfGetIfaceStats()`
dulu dan baru jatuh ke `parseIfaceStats()` kalau gagal.

Dan qtaguid terukur benar-benar mati:

```
/proc/net/xt_qtaguid/ctrl:  match_calls=0  sockets_tagged=0  match_found_sk=0
iptables/ip6tables yang memakai qtaguid: 0 aturan
/proc/net/xt_qtaguid/stats: kosong (cuma header)
```

Jadi melucutinya tidak memenangkan apa pun yang terukur — ongkos per-paketnya
sudah nol — sambil membuang jaring pengaman terakhir kalau BPF meregresi.
Dugaan bahwa qtaguid membebani jalur paket TIDAK terbukti.

## 5. WAJIB tetap: revert freezer cgroup v1 di frameworks/base

```
fcf8ec255b95 CachedAppOptimizer: revert freezer to cgroups v1
8f90496f106b Revert "CachedAppOptimizer: don't hardcode freezer path"
1b3e3a02d221 Revert "CachedAppOptimizer: remove native freezer enabling code"
39b86b9805ec Revert "CachedAppOptimizer: use new cgroup api for freezer path"
```

Menggoda untuk dibuang karena "cgroup v2 sudah ada". **Tidak ada.** Yang kita
punya adalah hierarki cgroup **v1 tanpa controller** yang diberi nama "cgroup2"
supaya netd mau attach ke sana. Buktinya di perangkat:

```
$ cat /dev/cg2_bpf/cgroup.controllers
cat: No such file or directory          <- berkas khas v2, tidak ada
$ ls /dev/freezer
cgroup.clone_children  cgroup.event_control  cgroup.procs   <- berkas khas v1
```

Tidak ada freezer controller di `/dev/cg2_bpf`, dan tidak akan ada. Membuang
revert ini akan mematikan pembekuan aplikasi.

## Ringkas

| tindakan | sasaran |
|---|---|
| lucuti | `ro.kernel.ebpf.supported=false` |
| perbaiki | `ret` -> `ret2` di `2d75dc270` |
| tahan | dua `exit(1)`, sampai ada waktu pakai tanpa insiden |
| biarkan | fallback qtaguid + `CONFIG_NETFILTER_XT_MATCH_QTAGUID` |
| jangan sentuh | revert freezer cgroup v1 |

# Audit log: bug yang tidak punya gejala

**15 September 2026**, ROM `20260914_164631`. Dilakukan atas pertanyaan pemilik
perangkat: *"apakah ada bug lain yang hanya terlihat di log?"*

Perangkat ini berjalan **Permissive**, jadi banyak hal gagal tanpa terlihat.
Bahan: 4.398 baris logcat + 4.458 baris dmesg dari satu boot.

---

## Ringkasan

| # | temuan | pemilik | status |
|---|---|---|---|
| 1 | `ada_dex2oat()` 35× terlalu mahal, membanjiri audit log | **saya** | ✅ diperbaiki |
| 2 | daftar cooling device kosong dianggap gagal | **saya** | ✅ diperbaiki |
| 3 | `CONFIG_UID_CPUTIME` gugur diam-diam → statistik CPU per-aplikasi mati | kernel | ⚠️ **belum**, perlu rebuild kernel |
| 4–8 | galat lain | — | wajar, didokumentasikan |

---

## 1. `ada_dex2oat()` — mahal dan membanjiri dmesg ✅

Fungsi yang **baru saya tambahkan kemarin** untuk memperbaiki watchdog ternyata
punya dua cacatnya sendiri.

**Ongkosnya.** Versi pertama men-spawn satu `cat` per entri `/proc`, sekitar 300
proses tiap sapuan. Diukur di perangkat:

```
varian cat    2121 ms per sapuan
varian read     60 ms per sapuan     <- 35x lebih murah
```

Dengan `JEDA=5`, varian lama menghabiskan **42% duty cycle** watchdog untuk
menyapu `/proc` — di perangkat yang justru sedang kepayahan boot.

**Efeknya pada diagnosis, dan ini lebih buruk.** SELinux menolak `toolbox`
membaca `/proc/<pid>/comm` milik domain lain:

```
avc: denied { open } for comm="cat" path="/proc/91/comm"
     scontext=u:r:toolbox:s0 tcontext=u:r:kernel:s0 permissive=1
```

Versi pertama menyumbang **1030 dari 1544 denial** dalam satu boot — **67%** —
dan membanjiri `dmesg`, yang justru kanal diagnosis utama proyek ini lewat
ramoops.

**Diperbaiki dua lapis:** `read n < "$c"` menggantikan `$(cat ...)` sehingga nol
spawn, dan sapuannya hanya berjalan **setelah setengah anggaran habis**. Boot
yang lancar tidak pernah sampai ke sana, jadi ongkosnya nol pada kasus normal.

> Catatan untuk yang suatu saat menyalakan enforcing: di sana fungsi ini akan
> selalu mengembalikan 1 dan perlindungannya hilang **diam-diam**. Batas 300
> detik tetap jaring pengaman utamanya.

---

## 2. Cooling device kosong dianggap gagal ✅

Tujuh kali dalam satu boot:

```
E ThermalHalWrapper: Couldn't get cooling device because of HAL error:
                     Failed to read thermal sensors.
```

Pesannya menyesatkan — tidak ada sensor yang gagal dibaca; memang tidak ada yang
perlu dibaca. `thermal-helper.cpp:547` mengembalikan `ret.size() > 0`, warisan
device tree a6010, sehingga perangkat **tanpa** cooling device selalu dianggap
gagal.

Diverifikasi di perangkat: `/sys/class/thermal/cooling_device*` **kosong sama
sekali** (0 entri). Kernel ini memang tidak mengekspos satu pun.

Diubah menjadi `return true`. Kegagalan sungguhan tetap tertangkap —
`readCoolingDevice()` yang gagal sudah `return false` lebih awal di dalam loop.

---

## 3. Statistik CPU per-aplikasi mati ⚠️ belum diperbaiki

27 galat dalam satu boot:

```
E KernelCpuUidUserSysTimeReader: failed to remove uids 99000 - 99000 from uid_cputime module
java.io.FileNotFoundException: /proc/uid_cputime/remove_uid_range: ENOENT
```

Ini **bukan** akibat perubahan mana pun di proyek ini — cacat lama yang tidak
pernah terlihat karena tidak punya gejala yang kasat mata.

Rantainya terlacak penuh:

```
defconfig:290   CONFIG_UID_CPUTIME=y          <- disetel
defconfig:95    # CONFIG_PROFILING is not set  <- TIDAK disetel

drivers/misc/Kconfig:622-624
  config UID_CPUTIME
      tristate "Per-UID cpu time statistics"
      depends on PROFILING                     <- syarat tidak terpenuhi
```

Karena ketergantungannya tidak terpenuhi, Kconfig **membuang** `UID_CPUTIME`
diam-diam. `uid_cputime.o` tidak pernah dibangun, `/proc/uid_cputime` tidak
pernah ada — diverifikasi di perangkat, yang ada hanya `/proc/uid_stat`.

**Akibatnya:** layar penggunaan baterai tidak bisa mengatribusikan waktu CPU ke
aplikasi. Baterai tetap terukur; yang hilang adalah rinciannya per aplikasi.

**Perbaikannya** menyalakan `CONFIG_PROFILING` di defconfig kernel. Itu menuntut
rebuild kernel dan `boot.img` baru, jadi ditahan sampai diputuskan — ongkosnya
lebih besar daripada nilainya kalau rincian baterai per-aplikasi tidak dipakai.

---

## 4–8. Galat lain: wajar, dan alasannya

| sumber | pesan | kenapa wajar |
|---|---|---|
| `BpfHandler` | `Failed to get socket cookie: Protocol not available` | eBPF tidak ada di kernel 3.10. ROM ini memang menyetel `ro.kernel.ebpf.supported=false` |
| `zygote` (382 denial) | tulis ke `cg2_bpf`, `cgroup.procs`, `uid_*` | jalur cgroup v2; proyek ini sudah sengaja mengembalikan freezer ke cgroup v1 (patch `frameworks_base/0028`) |
| `rild` (23 denial) | `ioctl` pada `/data/misc/radio/qcril.db` | blob RIL 2016 memakai ioctl berkas yang tidak dilabeli policy modern |
| `keystore2` | `handle_super_encryption_on_key_init: User ECDH key missing` | boot pertama sesudah factory reset, sebelum kunci pengguna dibuat |
| `PackageManager` | `[Optimistic Bind] Didn't bind to resolver in time` | Instant App resolver tidak dipasang di ROM ini |
| `ActivityThread` | `Failed to find provider info for instantapp-dev-manager` | idem |
| `TaskPersister` | `File error accessing recents directory` | direktori recents belum ada pada boot pertama |
| `MDD` | `Trying to add expired group enpromo-state-config` | milik GApps, bukan ROM |

---

## Yang TIDAK ditemukan

Nol tombstone, nol baris di buffer `crash`, nol servis restart-loop, dan tidak
ada satu pun galat pada jalur kamera, RIL, sensor, Widevine, WireGuard, maupun
audio.

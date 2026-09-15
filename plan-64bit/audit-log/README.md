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
| 3 | `CONFIG_UID_CPUTIME` gugur diam-diam → statistik CPU per-aplikasi mati | kernel | ✅ diperbaiki (`9266716`) |
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

**Diperbaiki** 15 September 2026 (kernel `9266716`) dengan menyalakan
`CONFIG_PROFILING`. Masuk ROM `20260914_231027`, yang karena itu **juga membawa
boot.img baru**.

Diverifikasi **sebelum** membangun apa pun, lewat kconfig dua arah:

```
tanpa PROFILING   ->  UID_CPUTIME DIBUANG dari .config
dengan PROFILING  ->  UID_CPUTIME BERTAHAN di .config
```

Dan sesudah build, bukti definitifnya: **`uid_cputime.o` benar-benar
terkompilasi** di `obj/KERNEL_OBJ/drivers/misc/`.

`OPROFILE` sengaja tidak ikut dinyalakan — `PROFILING` hanya membuatnya bisa
*dipilih* (`arch/Kconfig:7`), dan diverifikasi ia tidak muncul di `.config`.

Baris `# CONFIG_PROFILING is not set` sebelumnya ternyata **bawaan defconfig
awal** (`59585edea76`), bukan keputusan yang pernah diambil proyek ini —
diperiksa lewat `git log -S`. Komentar *"NYALAKAN LAGI hanya kalau ada konsumen
baru yang terbukti menuntutnya"* di dekatnya merujuk
`ANDROID_TREBLE_SPOOF_KERNEL_VERSION`, bukan baris ini. Kalaupun ia merujuk
baris ini, syaratnya justru terpenuhi: konsumennya terbukti.

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


---

## Terverifikasi di perangkat (ROM 20260914_231027, 15 September 2026)

Ketiganya terbukti, diukur dengan membandingkan satu boot penuh sebelum dan
sesudah:

| | sebelum | sesudah |
|---|---|---|
| `E KernelCpuUidUserSysTimeReader` | 27 | **0** |
| `E ThermalHalWrapper` | 7 | **0** |
| denial SELinux di `dmesg` | 1544 | **311** (−80%) |
| di antaranya `comm="cat"` | 1030 | **0** |

### Kernel: `/proc/uid_cputime` kini ada dan terisi

```
/proc/uid_cputime/remove_uid_range      <- berkas yang dulu ENOENT
/proc/uid_cputime/show_uid_stat

show_uid_stat, 77 baris, contoh (uid: user_ns sys_ns):
     0: 33606000  29220000
  1000: 120236000 48473000
  2000:   366000    236000
```

Jadi statistik CPU per-UID benar-benar dikumpulkan kernel, bukan sekadar
berkasnya muncul.

### Watchdog jauh lebih ringan

Keluar pada **73,3 detik**, dibanding 137,5 detik pada boot sebelumnya —
dexopt GApps sudah selesai, dan sapuan `/proc` yang mahal itu tidak pernah
dijalankan karena anggaran belum mencapai separuh.

### Nol regresi

Kamera 2 device, keempat sensor fisik, `ThermalHAL 2.0 connected: yes` dengan
`Thermal Status: 0`, Widevine `running`, `wg` terpasang, GPU istirahat 200 MHz,
`hung_task` 90, pinner 146,6 MB. Nol tombstone, nol baris di buffer `crash`.

`getCurrentCoolingDevices` kini mengembalikan **0 perangkat tanpa galat** —
persis perilaku yang benar untuk kernel yang tidak mengekspos satu pun.

### Catatan: GApps hilang, dan itu wajar

Paket `com.google` tinggal 1 (GCam yang terpasang di `/data`). NikGApps
memasang dirinya ke `/system/product`, dan mem-flash ROM menimpa partisi itu.
**Setiap flash ROM menghapus GApps** — ia harus dipasang ulang sesudahnya.


---

# Putaran kedua (15 September 2026, ROM `20260914_231027`)

Sisiran ulang setelah log jauh lebih bersih. **Satu bug nyata, satu perilaku
boros yang bukan milik kita, sisanya wajar.**

## A. `ramoops.ecc=1` — alat diagnosis kita sendiri rusak ✅ diperbaiki

Komentar di `BoardConfig.mk` sudah menyatakan syaratnya sejak awal:

> *"Nilai ini HARUS sama antara kernel ROM dan kernel recovery, karena ecc
> mengubah tata letak buffer — kalau berbeda, recovery membaca sampah."*

**Syarat itu sudah dilanggar sejak lama tanpa ada yang menyadarinya:**

| | |
|---|---|
| device tree TWRP | `ramoops.ecc=32` sejak 31 Agustus 2026 |
| device tree ROM | `ramoops.ecc=1` |

Akibatnya terukur di ekor setiap dump:

```
0 Corrected bytes, 2030 unrecoverable blocks    (boot biasa)
0 Corrected bytes, 3388 unrecoverable blocks    (dump kegagalan boot GApps)
```

**"0 Corrected bytes"** itu intinya — dengan `ecc=1` praktis tidak ada yang bisa
dikoreksi. Boot ini sendiri mencatat **13×** `persistent_ram: uncorrectable
error in header`.

Yang membuatnya pantas disebut bug, bukan sekadar setelan kurang optimal: saat
mendiagnosis kegagalan boot 14 September, dump yang dibaca memuat **3388 blok
rusak**. Baris penyebabnya kebetulan selamat. Kalau tidak, diagnosis itu buntu.

Dinaikkan ke 32, mengikuti pengukuran proyek TWRP di perangkat yang sama (laju
kerusakan 6,9% versus kapasitas `ecc=16` yang hanya 6,25%). Device tree
`e2614f8`, masuk ROM **`20260915_003358`**.

Diverifikasi di `boot.img` hasil build, bukan di sumber — cmdline yang tertanam
kini berbunyi:

```
ramoops.mem_address=0x9ff00000 ramoops.mem_size=0x400000
ramoops.record_size=0x40000 ramoops.console_size=0x100000
ramoops.pmsg_size=0x40000 ramoops.dump_oops=1 ramoops.ecc=32
```

Yang membuktikannya berhasil nanti adalah ekor dump berikutnya: `Corrected
bytes` harus tidak lagi nol, dan jumlah `unrecoverable blocks` harus turun
drastis dari 2030–3388.

## B. SetupWizard memanggil provider Google 1341× — bukan milik kita

```
E ActivityThread: Failed to find provider info for com.google.android.setupwizard.partner
```

1457 kejadian dalam 2 menit, ~11 per detik, dari `org.lineageos.setupwizard`
(1341) dan `com.android.settings` (116).

Sumbernya `PartnerConfigHelper.SUW_AUTHORITY` di `external/setupcompat` —
pustaka Google, bukan kode proyek ini. Ia menanyai provider partner Google untuk
tema, dan GApps tidak terpasang sesudah flash ROM.

**Transien**, hanya selama setup: diuji ulang dengan membuka Settings pada
perangkat yang sudah ter-setup, hasilnya **0 kejadian**. Tidak ditambal —
menambal pustaka hulu demi kebisingan log saat setup nilainya lebih kecil
daripada risikonya. Dicatat kalau suatu saat setup terasa lambat.

## C. Wajar, diperiksa dan diberhentikan

| temuan | putusan |
|---|---|
| `SELinux: denied { find } name=suspend_control_internal` (2×) | **bukan bug** — servisnya terdaftar (`service list` #192); ini balapan sesaat saat boot |
| `i2c: error probe() failed with err:-517` (10×) | `-517` = `EPROBE_DEFER`, probe tertunda normal |
| `BpfHandler` (15×) | eBPF tidak ada di kernel 3.10, sudah diketahui |
| `q6asm_send_asm_cal: DSP returned error[-2]` (3×) | kalibrasi audio opsional tidak ada di blob |
| `msm_voice_source_tracking_get: err=-22` (2×) | fitur voice tidak didukung perangkat |
| `set_battery_data: get bq2022 manu id fail` | chip ID baterai tidak ada, memakai profil bawaan |
| `UserRestrictionsUtils`, `TaskPersister`, `NetlinkEvent`, `MtpServer`, `OMXNodeInstance`, `vold` xattr | semuanya sesaat atau tidak berdampak |
| denial `zygote` (150×) ke `device` | jalur cgroup v2; proyek sudah sengaja memakai v1 |
| denial `rild` (50×) ke `radio_core_data_file` | blob RIL 2016, ioctl tak dilabeli policy modern |

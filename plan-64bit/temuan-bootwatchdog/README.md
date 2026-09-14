# Watchdog boot menjatuhkan boot yang sehat setelah GApps

**14 September 2026.** Pemilik perangkat memasang NikGApps lewat TWRP 32-bit.
Pemasangannya berhasil, tetapi boot berikutnya **masuk recovery tepat sebelum
setup wizard**.

Sebabnya bukan GApps dan bukan ROM, melainkan **pengaman boot proyek ini
sendiri**.

---

## 1. Buktinya bertahan lewat reboot

Justru di sinilah `ramoops` yang dipasang jauh-jauh hari terbayar. Setelah
perangkat masuk recovery, `/sys/fs/pstore/console-ramoops-0` masih memuat log
konsol boot yang gagal:

```
bootwatchdog: sys.boot_completed tidak muncul — reboot ke recovery
bootwatchdog: tanpa-kemajuan=120s (batas 120s) total=120s (pagu 600s) kompilasi-ART=0s
bootwatchdog: init.svc.zygote=running init.svc.surfaceflinger=running init.svc.adbd=stopped
bootwatchdog: jejak tersimpan di /data/bootfail
...
init: Received sys.powerctl='reboot,recovery' from pid: 3683 (setprop)
init: Reboot start, reason: reboot,recovery, reboot_target: recovery
Restarting system with command 'recovery'.
```

Jadi reboot itu **disengaja**, bukan crash.

---

## 2. Sistemnya sehat — dijatuhkan di detik terakhir

Linimasa `init` dari ramoops yang sama:

| waktu | kejadian |
|---|---|
| t = 24,7 s | `bootanim` mulai |
| **t = 43 … 121 s** | **jeda 78 detik** — `system_server` memproses paket GApps baru |
| t = 121,3 s | `wpa_supplicant` |
| t = 124,4 s | `idmap2d` — pemrosesan overlay, dipicu paket baru |
| **t = 135,1 s** | **`bootanim` KELUAR setelah 110 detik — boot sebenarnya selesai** |
| t = 135,8 s | watchdog memicu reboot |

Boot selesai **di detik yang sama** ia dijatuhkan.

Dan jejak yang disimpan watchdog sendiri membuktikannya. Baris terakhir
`/data/bootfail/logcat.txt`:

```
ActivityManagerTiming: OnBootPhase_1000_com.android.server.MmsServiceBroker took to complete: 0ms
ActivityManagerTiming: OnBootPhase_1000_com.android.server.autofill.AutofillManagerService
```

`OnBootPhase_1000` adalah `PHASE_BOOT_COMPLETED`, fase **terakhir**, dan tiap
handler selesai dalam 0–1 ms. Sistemnya tidak menggantung; ia sedang menyelesaikan
langkah terakhir.

> Stempel waktu berkas di `/data/bootfail` sempat membingungkan karena tertulis
> 13 September. Itu jam perangkat yang mundur setelah flash — stempel `audit`
> di ramoops hari itu juga berbunyi 13 September, jadi keduanya konsisten dan
> jejaknya memang milik kegagalan ini.

---

## 3. Akar masalah: satu sinyal kemajuan yang terlalu sempit

Loop watchdog hanya mengenal **satu** tanda bahwa boot masih bekerja:

```sh
if [ "$(getprop init.svc.odsign)" = "running" ]; then
    kompilasi=$((kompilasi + JEDA))   # tidak dihitung sebagai stagnasi
else
    habis=$((habis + JEDA))
fi
```

Tetapi `odsign` hanya membungkus kompilasi **BOOT CLASSPATH** (`odrefresh`).
Optimalisasi paket aplikasi — yang persis terjadi pada boot pertama setelah
GApps dipasang — berjalan lewat jalur lain, yaitu `installd` dengan `DexInv`.
Terlihat langsung di perangkat:

```
installd: DexInv: --- END '/data/app/…/com.android.vending-…/base.apk' (success) ---
```

Karena `odsign` tidak pernah `running`, seluruh 78 detik itu masuk ke penghitung
stagnasi. Laporan watchdog sendiri mengakuinya: **`kompilasi-ART=0s`**.

---

## 4. Pertolongan pertama: properti, seperti yang skripnya sarankan

Komentar `bootwatchdog.sh` sudah meramalkan gejala ini kata per kata:

> *"Kalau boot pertama setelah flash ternyata butuh lebih dari 120 detik di eMMC
> yang lambat, gejalanya jelas: perangkat masuk recovery padahal
> `/data/bootfail` menunjukkan boot sedang berjalan normal. Naikkan lewat
> properti, bukan rebuild."*

Masalahnya, `persist.` tidak bisa disetel dari TWRP dengan `setprop`. Jadi
`/data/property/persistent_properties` disunting langsung — berkas protobuf
sederhana:

```
PersistentProperties  { repeated PersistentPropertyRecord properties = 1 }
PersistentPropertyRecord { optional string name = 1; optional string value = 2 }
```

Pengaman yang dipakai sebelum menulis: berkasnya dicadangkan di perangkat, lalu
parser diuji dengan **round-trip** — membangun ulang dari hasil parse dan
memastikannya **byte-identik** dengan aslinya. Baru setelah itu entri baru
ditambahkan, dan atribut (`root:root`, `0600`,
`u:object_r:property_data_file:s0`) dikembalikan persis.

```
persist.a37.bootwatchdog.timeout = 300
```

**Hasilnya: perangkat boot.** `boot_completed=1` pada uptime **186 detik**,
dengan `com.google.android.gms` dan `gsf` terpasang, nol tombstone, nol crash,
nol restart-loop.

---

## 5. Perbaikan permanen

Device tree `f639e2e`. `bootwatchdog.sh` kini juga menghitung keberadaan proses
`dex2oat` sebagai kemajuan:

```sh
ada_dex2oat() {
    for c in /proc/[0-9]*/comm; do
        case "$(cat "$c" 2>/dev/null)" in
            dex2oat*) return 0 ;;
        esac
    done
    return 1
}
```

`pgrep`/`pidof` sengaja tidak dipakai, dengan alasan yang sama seperti
pemakaian `getprop` untuk `odsign`: keduanya bergantung pada toybox yang
terpasang, sementara glob `/proc` dan `cat` selalu ada. Pola `dex2oat*` menutupi
`dex2oat`, `dex2oat32` dan `dex2oat64`, ketiganya ada di ART APEX perangkat ini.

**Diuji di mksh perangkat, bukan hanya diperiksa sintaksnya.** Fungsinya
berjalan dan menemukan proses `dex2oat` yang sedang hidup — sekaligus bukti
langsung bahwa dexopt memang aktif pada periode ini. Pola `case` diuji terhadap
`dex2oat`, `dex2oat32`, `dex2oat64` dan `zygote64` (yang harus ditolak).

### 5.1 Batas default dinaikkan 120 → 300 detik

Device tree `9b539cf`, atas permintaan pemilik perangkat.

Argumen lama untuk 120 detik ditulis di skripnya sendiri: false positive dinilai
**murah** (perangkat masuk recovery, adb hidup, semuanya bisa dibereskan lewat
properti), sedangkan menunggu dinilai **mahal**. Asimetrinya berpihak pada batas
pendek.

Kenyataan membantahnya **dua kali**, dan keduanya tercatat di berkas yang sama:

| kejadian | penyebab lambat | akibat |
|---|---|---|
| `report/bootfail3` | `odrefresh` kompilasi penuh, 81,5 detik | boot sehat dijatuhkan di detik 120 |
| 14 Sep 2026 (ini) | dexopt GApps, 78 detik | boot sehat dijatuhkan di detik 135 |

Yang tidak diperhitungkan argumen lama: **false positive tidak murah kalau
pemiliknya tidak tahu penyebabnya.** Ia terlihat persis seperti ROM rusak, dan
ongkos sebenarnya adalah waktu mendiagnosisnya.

300 detik tetap memadai untuk hang sungguhan — boot sehat di sini ~40 detik
tanpa GApps, 186 detik dengan GApps.

**Rasio terhadap pagu mutlak dicatat sebagai keputusan sadar:** dengan `BATAS`
300 dan pagu tetap 600, rasionya turun dari 5× ke 2×, lebih ketat daripada 4×
yang tersirat di baris auto-koreksi. Itu disengaja — pagu mengukur waktu dinding
**total termasuk kompilasi**, dan 10 menit sudah lebih dari cukup untuk boot
terburuk yang pernah terukur di perangkat ini.

Logika resolusinya diuji di mksh perangkat atas enam kasus, termasuk yang
menjebak:

```
tanpa properti   -> BATAS=300  PAGU=600
properti 0       -> BATAS=300     (bukan 0; untuk mematikan ada persist.a37.bootwatchdog=0)
properti "abc"   -> BATAS=300
properti 900     -> BATAS=900  PAGU=3600   (pagu naik otomatis 4x)
```

---

## 6. Keadaan saat ini

Belum masuk ROM mana pun — perangkat masih menjalankan ROM dengan default 120.
Yang membuatnya boot sekarang adalah **properti** `persist.a37.bootwatchdog.timeout=300`
yang disetel langsung ke `/data/property/persistent_properties`.

Properti itu **menang atas default**, jadi setelah ROM baru di-flash pun ia
tetap berlaku (nilainya kebetulan sama). Ia bertahan melintasi flash ROM selama
`/data` tidak dihapus. Kalau suatu saat ingin memakai default ROM, hapus
entrinya — cadangan aslinya ada di
`/data/property/persistent_properties.bak-a37`.


---

## 7. Terbukti di perangkat (ROM 20260914_164631)

Pemilik perangkat melakukan **factory reset** lalu flash ROM baru dan memasang
ulang NikGApps (`ro.boot.bootreason: reboot,factory_reset`, `/data/bootfail` dan
DCIM kosong, properti persist ter-reset).

Itu justru menjadikannya uji yang bersih: properti
`persist.a37.bootwatchdog.timeout=300` yang dipakai sebagai pertolongan pertama
**ikut terhapus**, sehingga yang berlaku adalah default ROM.

```
init: Service 'bootwatchdog' (pid 247) exited with status 0
      oneshot service took 137.490005 seconds in background
```

**Keluar dengan status 0 setelah 137,5 detik** — `sys.boot_completed` muncul dan
watchdog berhenti sendiri tanpa mengeluh. Nol baris keluhan di `dmesg`.

Angka itu sekaligus membuktikan perbaikannya perlu: **137 detik melewati batas
lama 120 detik**, jadi ROM sebelumnya akan menjatuhkan boot ini juga.

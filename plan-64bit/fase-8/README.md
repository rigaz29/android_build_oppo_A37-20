# Fase 8 — verifikasi di perangkat

Diukur **14 September 2026**, ROM `lineage-20.0-20260913_225500-UNOFFICIAL-A37`,
4 menit sesudah boot pertama.

---

## 1. Vonis

**LineageOS 20 userspace 64-bit BOOT di OPPO A37, dan fungsi intinya jalan.**

```
sys.boot_completed   1
uptime               up 4 min
tombstone            0
logcat -b crash      0 baris
servis restart loop  NOL
```

---

## 2. Arsitektur — persis yang dirancang

```
ro.product.cpu.abi         arm64-v8a
ro.product.cpu.abilist     arm64-v8a,armeabi-v7a,armeabi
ro.product.cpu.abilist32   armeabi-v7a,armeabi
ro.product.cpu.abilist64   arm64-v8a
ro.zygote                  zygote64_32
uname                      3.10.108-lineageos-gb9d9d3fe700 ... aarch64
```

**Dua zygote hidup berdampingan:** `zygote64` (pid 307) **dan** `zygote` (pid 308).

Ini pembenaran keputusan Fase 2 yang sengaja berbeda dari proyek LOS 23.2. Di sana
`zygote_secondary` dua kali menyebabkan bootloop sehingga mereka memakai
`ZYGOTE_FORCE_64` dan kehilangan kemampuan memasang aplikasi 32-bit-saja. Di sini
`abilist` memuat **kedua** arsitektur — aplikasi 32-bit-saja tetap bisa dipasang.

Dan `uname` melaporkan **3.10.108 apa adanya**, tanpa awalan `3.17-`: keputusan
Fase 3 mematikan spoof versi kernel terbukti tidak merusak apa pun.

---

## 3. Kamera — dan ini yang membenarkan koreksi Fase 7

```
Number of camera devices: 2
Device 0 maps to "0"   Device 1 maps to "1"
Active Camera Clients: (Camera ID: 1, PID: 6545, Client: org.lineageos.aperture)

lshal: android.hardware.camera.provider@2.4::ICameraProvider/legacy/0   pid 443
```

**pid 443 = `mediaserver`.** Provider dilayani di dalam proses itu — persis jalur
passthrough yang dipulihkan Fase 7 setelah premis Fase 4 terbukti salah.

Kedua kamera terdeteksi, dan Aperture benar-benar membukanya saat pengukuran
dilakukan. Riwayat layar hitam build `20260803_161352` **tidak terulang**.

⚠️ Satu catatan kecil: SELinux mencatat denial untuk `/proc/qcom_flash`
(`scontext=mm-qcamerad`, `permissive=1`). Ia hanya dicatat, tidak ditegakkan —
tetapi kalau kelak pindah ke enforcing, senter kemungkinan butuh aturan sendiri.

---

## 4. RIL — hidup penuh

```
gsm.sim.state            LOADED,ABSENT
gsm.sim.operator.alpha   Telkomsel
gsm.operator.alpha       by.U
gsm.network.type         LTE,Unknown

lshal  android.hardware.radio@1.0::IRadio/slot1  pid 468
       android.hardware.radio@1.0::IRadio/slot2  pid 433
       android.hardware.radio@1.1::IRadio slot1+slot2, ISap slot1+slot2
```

`rild` (pid 433, 468), `qmuxd` 430, `netmgrd` 431, `qseecomd` 369/384 — semuanya
**running, nol restart**. Keputusan Fase 5 memaksa `rild` 32-bit terbukti tepat.

Bandingkan dengan proyek LOS 23.2, tempat set RIL 64-bit menyebabkan
`ril-daemon0 exited with status 1` berulang dan bootloop.

---

## 5. Penyimpanan dan jaringan

```
/data   /dev/block/mmcblk0p38  type f2fs (rw,lazytime,...,background_gc=on,user_xattr)
Wi-Fi   enabled
```

`/data` benar-benar **f2fs**, bukan jatuh ke entri ext4 cadangan.

Bluetooth **belum diuji** — adapter dalam keadaan mati (`bluetooth_on=0`), proses
`com.android.bluetooth` tidak berjalan. Itu keadaan mati, bukan kerusakan.

---

## 6. Memori — dan satu hal yang harus dipantau

```
Total RAM   1.932.200K        zram   256 MB, terpakai 122 MB
Free RAM      896.093K        PSI    some avg10=0,06  full avg10=0,03
Used RAM    1.060.054K
```

Tekanan memori **rendah** (PSI avg10 0,06 %), dan PSI aktif — membuktikan backport
PSI kernel `lineage-24` bekerja.

⚠️ **lmkd membunuh tiga proses** saat boot pertama:
`com.android.onetimeinitializer`, `com.android.managedprovisioning`,
`com.android.packageinstaller` — ketiganya `oom_score_adj 999`, prioritas paling
rendah, memang proses setup sekali-pakai.

Ini **tidak** memicu kriteria batal rencana (*"pembunuhan saat idle dalam pemakaian
normal"*): ini boot pertama dengan aplikasi kamera terbuka. Tetapi ia layak dipantau
pada pemakaian harian.

**Terkait itu: `ro.lmk.use_psi = false`.** lmkd masih memakai jalur vmpressure/memcg
walau kernel sudah menyediakan PSI. **T-A1** di `PLAN-64BIT.md` §6 — menyalakannya
tinggal satu properti, dan sekarang ada alasan konkret.

---

## 7. Galat yang tersisa, semuanya kosmetik

```
Can't open /sys/kernel/ion/total_pools_kb          statistik ION tidak ada di 3.10
Can't open /sys/fs/bpf/map_gpu_mem_gpu_mem_total   eBPF memang nol di ROM ini
Cannot obtain CPU frequency count                  format sysfs 3.10 berbeda
```

Ketiganya bawaan kernel 3.10 di Android 13, bukan akibat 64-bit. Nol tombstone,
nol baris di buffer crash.

---

## 8. Yang BELUM diuji

Batas §8 `HANDOFF.md` tetap berlaku — daftar ini jujur, bukan diremehkan:

| | |
|---|---|
| Bluetooth | adapter mati saat pengukuran |
| Audio | belum diputar apa pun |
| Pemotretan & perekaman video | kamera terbuka, tetapi hasil foto/video belum diperiksa |
| Telepon & SMS nyata | jaringan LTE terdaftar, panggilan belum dicoba |
| Aplikasi 32-bit-saja | `abilist` mendukungnya, tetapi belum ada yang dipasang untuk membuktikan |
| Pemakaian harian | 4 menit uptime tidak mengukur apa pun soal stabilitas |
| Sensor, GPS, senter | belum |

---

## 9. Berkas

```
getprop-20260914.txt    865 baris
lshal-20260914.txt      124 baris
meminfo-20260914.txt    500 baris
camera-20260914.txt     353 baris
```

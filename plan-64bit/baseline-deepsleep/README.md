# Baseline deep sleep — 8 jam idle

Diukur **15 September 2026** atas permintaan pemilik perangkat, sebelum
mem-flash ROM `20260915_003358`. Yang diukur adalah ROM `20260914_231027`.

Perangkat dibiarkan 8 jam dengan layar mati.

---

## Putusan: deep sleep bekerja dengan benar

```
Time on battery:  8h 11m 51s (99,6%) realtime,  4m 16s (0,9%) uptime
screen off     :  8h 11m 43s (100%)  realtime,  4m 08s (0,8%) uptime
```

Dalam `batterystats`, **realtime** adalah jam dinding (termasuk suspend) dan
**uptime** adalah waktu CPU benar-benar hidup. Jadi:

| | |
|---|---|
| CPU terjaga | 256 detik dari 29.511 = **0,87%** |
| di suspend | **99,13%** |
| jumlah bangun | 79 kali / 8,2 jam = **9,6 per jam** |

Sepuluh kali bangun per jam itu wajar untuk perangkat dengan modem dan Wi-Fi
aktif (paging modem, pemeliharaan Wi-Fi, polling BMS).

## Pengurasan baterai

```
terkuras          8-9%  (seluruhnya saat layar mati)
laju              0,98 - 1,10 % per jam
proyeksi standby  91 - 102 jam  (3,8 - 4,3 hari)
```

Kapasitas terukur 2600 mAh. Laju ~1%/jam adalah angka yang baik untuk msm8916
2 GB dengan Wi-Fi menyala.

## Siapa yang membangunkan

```
All wakeup reasons
  unknown                                  43,5 s  (79x)
  Abort: Pending Wakeup Sources: wlan       8,3 s  (7x)
  Abort: Pending Wakeup Sources:            2,7 s  (7x)

Kernel wake locks
  PowerManagerService.WakeLocks           2m 57s  (39x)   <- agregat framework
  qpnp-vm-bms-9                              46 s  (89x)   <- polling BMS
  bam_dmux_wakelock                          41 s  (18x)   <- modem
  wlan                                       25 s  (28x)
  [timerfd]                                  18 s  (405x)
  NETLINK                                   5,8 s  (594x)
```

Totalnya ~4–5 menit, cocok dengan 4m 16s waktu terjaga. Tidak ada satu pun
wakelock yang menonjol atau menahan perangkat.

**Nol wakelock aplikasi** saat diperiksa (`dumpsys power` → `Wake Locks: size=0`),
dan `stay_on_while_plugged_in=0` sehingga mengisi daya tidak memaksa terjaga.

## Yang TIDAK menjadi masalah

Sempat dicurigai perangkat tercolok USB dengan adb aktif akan mencegah suspend.
Data membantahnya: `Time on battery` mencatat 8j 11m, artinya ia memang
discharging sepanjang itu, dan 99,1% di antaranya dalam suspend.

## Catatan untuk pembanding berikutnya

Ukur ulang dengan cara yang sama sesudah flash ROM `20260915_003358`, karena
build itu mengubah `boot.img` (ramoops ECC) dan membawa T-A2 zram 768 MB serta
T-B6 GPU 200 MHz yang keduanya menyentuh perilaku idle:

```bash
adb shell dumpsys batterystats | grep -E "Time on battery|Total run time"
adb shell dumpsys batterystats | grep -A8 "All wakeup reasons"
```

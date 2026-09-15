# WiFi diukur: sudah mentok kemampuan perangkat kerasnya

Diukur **15 September 2026** pada ROM `20260915_105952`, setelah laporan
"speed download WiFi di LOS 20 terasa lambat dan tidak stabil dibanding
LOS 23.2".

---

## Kesimpulan

WiFi **bekerja di batas atas perangkat kerasnya**. Tidak ada yang bisa
diperbaiki dari sisi ROM tanpa mengganti radionya.

```
Unduhan 50 MB, tiga kali berturut-turut:
  #1  36,1 Mbps   11,6 s
  #2  38,5 Mbps   10,9 s
  #3  34,3 Mbps   12,2 s

Puncak sesaat terukur: 50,3 Mbps
```

Tautannya **802.11n HT20 1×1 pada 72,2 Mbps MCS 7 short-GI** — itu laju PHY
tertinggi yang mungkin untuk satu aliran di kanal 20 MHz. Throughput TCP nyata
pada tautan semacam itu lazimnya 50–60% dari laju PHY, yaitu **36–43 Mbps**.
Kita mendapat 34–38 Mbps berkelanjutan dengan puncak 50,3.

---

## Yang diperiksa dan hasilnya

| aspek | hasil |
|---|---|
| Sinyal | **−34 dBm** (sangat kuat; di bawah −70 baru bermasalah) |
| Laju PHY | **72,2 Mbps MCS 7 SGI**, tidak pernah turun selama pengukuran |
| Ping ke router | min **1,33 ms**, **95% di bawah 5 ms**, **0% loss** dari 150 paket |
| Galat antarmuka | `rx_errors` 0, `tx_dropped` 0, `rx_dropped` 0 |
| CPU saat transfer | idle **75–97%** — sama sekali tidak menjadi penyempitan |
| Suhu | 45–48 °C, tidak throttling |
| Galat HAL WiFi | **nol** |
| Scan/roaming saat transfer | **nol kejadian** — tidak ada yang memotong |

---

## Dua jebakan pengukuran yang sempat menyesatkan

Keduanya dicatat karena hampir membuat kesimpulan yang salah.

### 1. Layar mati

Pengukuran pertama memberi ping **44,7 ms** ke router — terlihat parah. Ternyata
`mWakefulness=Dozing`: layar mati, dan WiFi masuk power save sehingga AP menahan
paket sampai beacon berikutnya. Dengan layar menyala angkanya jadi **1,03 ms**.

Semua pengukuran sesudahnya menjaga layar tetap menyala.

### 2. Jaringan internet, bukan WiFi

Serangkaian uji sempat menunjukkan **1,8–2,6 Mbps** dan terlihat memburuk terus.
Dugaan pertama — layar keburu mati — sudah diuji dan **salah**: dengan layar
dijaga menyala hasilnya sama buruknya.

Yang benar: penyempitannya **di luar perangkat**. Terbukti karena pengukuran
berikutnya di hari yang sama, dengan konfigurasi yang persis sama, memberi
34–50 Mbps. Yang berubah hanya keadaan jaringan di hulu.

**Pelajarannya:** uji throughput ke server internet mengukur ISP + server +
WiFi sekaligus. Untuk menilai WiFi saja, yang dipakai adalah ping ke router
(LAN murni), laju PHY, hitungan galat antarmuka, dan pemakaian CPU.

---

## Perangkat ini 2,4 GHz saja

`iw phy` melaporkan **nol kanal 5 GHz** — radionya WCN3620, 2,4 GHz saja.
Jadi pindah ke SSID 5 GHz router bukan pilihan yang tersedia.

Konsekuensinya: kita berbagi udara dengan tetangga. Terpindai di kanal yang
**sama persis** (2462 MHz, kanal 11):

```
08:2f:e9:9d:42:a4   2462   -77 dBm   "Kos Bu Nani"
```

plus dua lagi di 2452 MHz yang kanalnya tumpang tindih. Ini di luar kendali
ROM, dan menjelaskan kenapa kecepatan bisa berbeda-beda menurut waktu.

Satu-satunya tuas yang tersisa ada **di router**, bukan di ponsel: pindahkan
2,4 GHz-nya ke kanal 1 atau 6 kalau tetangga ada di 11.

---

## Patch WiFi LOS 23.2 TIDAK berlaku di sini

Proyek LOS 23.2 punya dua patch WiFi:

| patch | masalah yang diperbaiki |
|---|---|
| `0815-...getLinkLayerStats...` | HAL menolak `getLinkLayerStats` dengan `ERROR_INVALID_ARGS`, 58 kegagalan dalam 33 menit |
| `0816-...wifi_get_logger_supported_feature_set` | hasil panggilan itu tidak di-cache |

Keduanya menambal HAL **AIDL** yang baru dipakai Android 15. LOS 20 memakai
HAL **HIDL**, dan diperiksa di perangkat: **nol** kejadian `getLinkLayerStats`,
`LL_STATS`, maupun galat WiFi apa pun.

Artinya kedua patch itu memperbaiki regresi yang muncul **di** 23.2 — bukan
sesuatu yang kurang di LOS 20.

---

## Cara mengukur ulang sendiri

`tools/wifi-probe.sh` mencuplik throughput per detik berikut laju PHY dan CPU:

```sh
adb push tools/wifi-probe.sh /data/local/tmp/ && adb shell sh /data/local/tmp/wifi-probe.sh
```

Yang dibaca:

- **laju PHY tetap 72,2 MCS 7** → radio sehat, masalahnya bukan WiFi
- **laju PHY turun** (MCS rendah) → sinyal lemah atau interferensi
- **CPU idle rendah** → penyempitan di CPU
- **throughput rendah tapi PHY dan CPU sehat** → penyempitan di ISP atau server

# T-A6 — server PSDS untuk GPS

Dikerjakan **14 September 2026**, commit device tree `5efa89b`.

---

## 1. Kenapa dikerjakan

Fase 8 menemukan GPS terdaftar dan tanpa galat, tetapi `gps.conf` tidak memuat
server bantuan apa pun. Tanpa data orbit prediktif, cold start harus mengurai
almanak langsung dari sinyal satelit — bisa menit-menitan di langit terbuka.

---

## 2. Solusi LOS 23.2 tidak bisa disalin — tiga perbedaan versi

Rencana menaksir **30 menit, "tidak ada prasyarat"**. Itu meremehkan, dan
sebabnya tiga hal yang harus diperiksa di sumber Android 13, bukan diwarisi:

| Jalur | Android 16 (LOS 23.2) | **Android 13 (LOS 20)** |
|---|---|---|
| overlay `config_gnssParameters` | dibaca `GnssConfiguration` | **dideklarasikan, NOL pembaca** |
| `/vendor/etc/gps_debug.conf` | dibaca (`DEBUG_PROPERTIES_VENDOR_FILE`) | **konstanta itu tidak ada** |
| `/etc/gps_debug.conf` | dibaca | **satu-satunya jalan** |

Bukti:

```
GnssConfiguration.java:57   DEBUG_PROPERTIES_FILE = "/etc/gps_debug.conf"
                            grep DEBUG_PROPERTIES -> tepat 3 baris, semuanya
                            merujuk konstanta tunggal itu. Nol varian vendor.
config_gnssParameters       nol pembaca di seluruh pohon (*.java/*.kt);
                            bandingkan lineage-23.2 yang memakainya.
LONGTERM_PSDS_SERVER_1/2/3  GnssConfiguration.java:79-81
pesan galat                 GnssPsdsDownloader.java:75
```

**Konsekuensinya keras:** memasang berkas ke `vendor/etc/` seperti LOS 23.2 tidak
akan berpengaruh **sama sekali** di LOS 20. Kalau disalin apa adanya, hasilnya
tampak "selesai" tapi tidak mengubah apa pun.

---

## 3. Halangan yang tidak dihadapi LOS 23.2

`/etc/gps_debug.conf` **sudah dimiliki modul Soong AOSP** —
`frameworks/base/services/core/Android.bp:204`, sebuah `prebuilt_etc` yang memasang
template berisi komentar saja (1871 byte, berjudul *"Sample file for use for on
device debug override only"*).

Itu alasan **sesungguhnya** LOS 23.2 memakai `vendor/etc/` — bukan sekadar karena
Android 16 mendukungnya.

Diuji empiris, bukan diasumsikan:

```
m nothing                                   build completed successfully (18:21)
m out/.../system/etc/gps_debug.conf          build completed successfully (02:13)
hasil: 1955 byte dengan 3 LONGTERM_PSDS_SERVER — bukan template 1871 byte
```

`PRODUCT_COPY_FILES` ke tujuan yang sama **tidak bentrok dan menang**. Karena itu
tidak perlu menambal framework.

---

## 4. Yang dipasang

```
device/oppo/A37/gps/gps_debug.conf                    berkas baru
device/oppo/A37/device.mk  + gps/gps_debug.conf:system/etc/gps_debug.conf

LONGTERM_PSDS_SERVER_1=http://xtrapath1.izatcloud.net/xtra2.bin
LONGTERM_PSDS_SERVER_2=http://xtrapath2.izatcloud.net/xtra2.bin
LONGTERM_PSDS_SERVER_3=http://xtrapath3.izatcloud.net/xtra2.bin
```

XTRA generasi 2 Qualcomm, sesuai umur blob GPS msm8916 (2016). Nilai yang sama
dipakai proyek LOS 23.2.

---

## 5. Yang BELUM terbukti

**Bahwa PSDS benar-benar terunduh.** Itu menuntut dua hal yang belum ada:

1. **Reboot** — properti dibaca saat init `GnssLocationProvider`
   (`reloadGpsProperties()`), bukan saat berkasnya muncul. Berkasnya sudah
   didorong ke perangkat yang berjalan, tetapi baru berlaku setelah boot ulang.
2. **Klien yang meminta lokasi** — ROM ini tidak memuat aplikasi peta/GPS, dan
   `cmd location` hanya menyediakan sakelar utama. Tanpa klien, PSDS tidak pernah
   diminta dan pesan galatnya pun tidak pernah muncul.

Yang terbukti: berkasnya mendarat di jalur yang **memang dibaca Android 13**,
dengan isi yang benar, tanpa bentrok build.

**Cara membuktikannya nanti:** reboot, pasang aplikasi peminta lokasi, buka di
dekat jendela, lalu
`logcat | grep -iE 'psds|GnssConfiguration'` — pesan
*"No Long-Term PSDS servers were specified"* harus **hilang**, dan unduhan PSDS
muncul menggantikannya.

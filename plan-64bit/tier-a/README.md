# Tier A — empat item pertama

Dikerjakan **14 September 2026**, device tree `64c815a`. (T-A6 terpisah di
[`../t-a6/`](../t-a6/).)

| # | Perubahan | Perkiraan | Nyatanya |
|---|---|---|---|
| **T-A1** | `ro.lmk.use_psi` `false` → **`true`** | 15 menit | premis lamanya **gugur** — §1 |
| **T-A2** | zram `256` → **768 MB**, swappiness `60` → **100** | 30 menit | scheduler **sudah** benar |
| **T-A5** | `/data` f2fs **+`discard`** | 15 menit | sesuai |
| **T-A7** | buang `FMRadio` + `libfmjni` | 10 menit | sesuai |

---

## 1. T-A1 — dan kenapa komentar lama harus dibaca sebelum dipercaya

`device.mk` mematikan PSI dengan alasan tertulis:

> *"kernel 3.10 tidak punya PSI (baru ada di 4.20+) … terverifikasi di `.config`
> kernel branch **lineage-19.1** (Fase 1.4)."*

Premis itu **benar saat ditulis** dan **gugur sejak Fase 3**. Kernel
`lineage-20-64bit` membawa backport PSI tanpa cgroup (`367e1f5c7d0`),
`CONFIG_PSI=y`, dan `/proc/pressure/memory` terbukti hidup di perangkat —
terukur 14 Sep 2026: `some avg10=0,06  full avg10=0,03`.

Sisi framework ikut diverifikasi, supaya tidak mengulang kekeliruan T-A6:

```
lmkd.cpp:3330  use_psi_monitors = GET_LMK_PROPERTY(bool, "use_psi", true)
                                  && init_psi_monitors();
lmkd.cpp:3333  if (!use_psi_monitors && ...) -> jatuh ke vmpressure
```

Dua hal yang menentukan: defaultnya memang **`true`** — baris `false`-lah yang
selama ini mematikannya; dan bila `init_psi_monitors()` gagal, lmkd **jatuh
sendiri** ke vmpressure. Jadi menyalakannya tidak menghilangkan pelindung.

`ro.lmk.use_new_strategy` **tetap `false`** — properti terpisah, belum diukur.

---

## 2. T-A2 — angkanya datang dari perangkat, bukan dari rentang umum

```
zram 256 MB, terpakai 122 MB (48%)   hanya 4 menit sesudah boot
lmkd sudah membunuh 3 proses         saat boot pertama
```

768 MB = 40 % dari 1,84 GB, batas atas rentang lazim 25–50 %. Dengan LZ4 rasio
~2,5:1 ia menampung ~1,9 GB efektif; ongkosnya hanya RAM yang benar-benar terisi.

`swappiness` 60 adalah default untuk swap ke **disk**. Di sini swap-nya ke RAM
terkompresi — jauh lebih murah daripada membunuh aplikasi lalu memuatnya ulang
dari eMMC.

⚠️ **Satu bagian commit 23.2 tidak diperlukan:** mereka mengubah scheduler
`noop` → `deadline`; pohon ini **sudah** `deadline`. Menyalin borongan akan
menambah perubahan kosong.

---

## 3. T-A5 — eMMC diverifikasi, bukan diwarisi

```
/sys/block/mmcblk0/queue/discard_max_bytes    2199023255040  (~2 TB)
/sys/block/mmcblk0/queue/discard_granularity  524288         (512 KB)
```

Dibaca dari perangkat ini sendiri. Tanpa TRIM, blok yang sudah dihapus tetap
dianggap terpakai oleh controller eMMC, sehingga write amplification naik seiring
umur pemakaian.

---

## 4. T-A7 — yang dibuang hanya aplikasinya

`packages/apps/FMRadio` adalah varian **MediaTek** yang meng-hardcode `/dev/fm`
(`jni/fmr/fm.h:78`), sedangkan Qualcomm memakai `/dev/radio0` lewat V4L2. Ia tidak
akan pernah bekerja di perangkat ini, dan penggantinya tidak ada di hulu —
`android_hardware_qcom_fm` berhenti di `lineage-17.0`.

**Dipertahankan:** `CONFIG_RADIO_IRIS` di defconfig kernel (ongkos 36 KB, dan
prasyarat solusi FM apa pun nanti) serta `BOARD_HAVE_QCOM_FM`, yang dibaca
`android_soong_config_vars.mk` untuk namespace soong `qcom_bluetooth` — **bukan**
untuk aplikasi FM.

---

## 5. Penjaga

```
m nothing                                  build completed successfully (02:19)
PRODUCT_PACKAGES memuat FMRadio/libfmjni   0
```

---

## 6. Dua cacat suntingan sendiri, ditangkap sebelum commit

1. **`PRODUCT_PACKAGES += \` menjadi kosong** setelah FM dibuang. Di GNU Make,
   backslash-newline dihapus **sebelum** pemrosesan komentar, jadi
   `PRODUCT_PACKAGES += \` diikuti baris `# …` menelan seluruh assignment.
   Diganti menjadi blok komentar murni.
2. **Komentar lama masih menyebut `swappiness 60`** tepat di atas baris yang kini
   100 — persis jenis komentar menyesatkan yang berkali-kali menjebak proyek ini.

---

## 7. Yang BELUM terbukti

Keempatnya baru terbukti **diterima build**. Efeknya di perangkat menuntut ROM
dibangun ulang dan di-flash:

| | Cara membuktikan |
|---|---|
| T-A1 | `/proc/$(pidof lmkd)/fd` → fd ke `/proc/pressure` bertambah, ke `memcg` berkurang |
| T-A2 | `free -m` → swap total ~768 MB; `cat /proc/sys/vm/swappiness` → 100 |
| T-A5 | `mount \| grep /data` → opsi memuat `discard` |
| T-A7 | aplikasi FM tidak lagi ada di laci aplikasi |

**T-A3 (Thermal HAL 2.0)** dan **T-A4 (Widevine L3)** sengaja belum disentuh —
keduanya jauh lebih besar (1–2 jam dan 2–8 jam) dan memasang HAL baru. Lebih baik
dikerjakan terpisah setelah keempat ini terbukti di perangkat.

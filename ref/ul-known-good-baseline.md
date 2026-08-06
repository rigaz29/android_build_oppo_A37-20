# M0 — Jaring pengaman migrasi basis official (6 Agustus 2026)

Catatan resmi fase M0 `PLAN-OFFICIAL.md`. Keadaan tree UL yang **terbukti jalan**
sebelum migrasi, supaya bisa direproduksi persis kapan pun.

## 1. Snapshot tree

| Berkas | Isi |
|---|---|
| `ul-tree-snapshot-20260806.xml` | `repo manifest -r` — seluruh 1213 project terpin ke SHA aktual (bukan branch) |
| `ul-tree-shas-20260806.txt` | `path + HEAD SHA` semua 1213 project (repo forall, urut path) |
| `ul-uncommitted-20260806-*.diff` | diff 5 project kotor — **semua = hasil `tools/apply-legacy-patches.sh`** (langkah 3 sepolicy×2 repo, 5 display, 6+6b Bluetooth, 4 vendor/lineage) |

Kelima project kotor itu diverifikasi cocok dengan langkah skrip; tidak ada perubahan
liar. Skripnya idempoten, jadi diff ini arsip kedua saja.

## 2. Repo A37 (terverifikasi di GitHub 6 Agustus 2026)

| Repo | HEAD | Branch | Status |
|---|---|---|---|
| `rigaz29/rb_device_oppo_A37` | **`7902422`** (lebih baru dari `7938923` di PLAN — sudah memuat perbaikan Fase 9/10: charging `e92c32a`, usb `0345221`, wpa_supplicant duplikat, volume `7902422`) | `lineage-20` | bersih, **== GitHub** |
| `rigaz29/kernel_oppo_msm8939` | `8cc1519` | `lineage-20` | bersih, == GitHub |
| `rigaz29/rb-vendor_oppo_A37` | `2e5c6f7` | `lineage-18.1` | bersih, == GitHub |

## 3. Zip baseline untuk uji paritas & rollback flash

```
/root/a37-dl/lineage-20.0-UL-baseline-20260806_165815.zip
sha256 519dcfd662ff27bc275722795dc81f2b1d748dd22d9d8523800270908a2b3abd
```

⚠️ Fakta disk: seluruh 9 zip di `out/target/product/A37/` adalah **hardlink ke satu
inode** — hanya isi build TERAKHIR (`20260806_165815`) yang ada; isi build lama sudah
tertimpa. Salinan di `/root/a37-dl/` juga hardlink inode yang sama (nol byte tambahan),
jadi menghapus `out/` tidak menghapus baseline ini.

Isi zip = seluruh perbaikan s.d. 6 Agu: boot ✅ · Wi-Fi ✅ · kamera ✅ · BT ON ✅
(uji connect/inquiry §10.6 masih berjalan di build ini) · volume ✅ · sensor ✅ ·
audio ✅ · charging control ✅ · RIL ❌ (risiko terbuka). Build `20260806_133829`
adalah yang terakhir diverifikasi penuh di perangkat; selisihnya dengan zip ini hanya
patch uji inquiry scan STANDARD (langkah 6b).

## 4. Arsip manifest

`A37-20-ul.xml` di root repo = salinan persis `A37-20.xml` pra-migrasi (basis UL).

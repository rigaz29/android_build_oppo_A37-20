# HANDOFF — konteks untuk AI/pengembang yang melanjutkan proyek ini

Berkas ini ditulis supaya siapa pun (manusia atau LLM) bisa melanjutkan **tanpa** riwayat
percakapan sebelumnya. Baca ini dulu, lalu `PLAN.md`.

Terakhir diperbarui: 5 Agustus 2026, setelah Fase 2 selesai.

---

## 1. Apa yang sedang dikerjakan

Porting **LineageOS 20 (Android 13, SDK 33)** ke **OPPO A37 / A37f / A37fw** —
Qualcomm MSM8916 (Snapdragon 410), **kernel 3.10.108 arm64**, 2 GB RAM, Adreno 306.

Pendahulunya **LineageOS 19.1 sudah boot sampai homescreen di perangkat nyata** dengan
kamera depan+belakang dan Bluetooth berfungsi (repo `android_build_oppo_A37-19.1`). Enam
kegagalan boot di sana (10.A–10.F) sudah ditemukan akarnya dan diperbaiki; **seluruh
perbaikannya jadi modal proyek ini**, bukan diulang dari nol.

**Dokumen utama: `PLAN.md`** — 10 fase, dan setiap klaim teknis di sana diikat ke sumber
yang bisa diverifikasi ulang. Kalau ada konflik antara berkas ini dan `PLAN.md`,
`PLAN.md` yang menang.

---

## 2. Status per 5 Agustus 2026

| Fase | Status |
|---|---|
| **1 Kernel** | ✅ **selesai di sisi build.** Branch `lineage-20` @ `8cc1519`. Zip AnyKernel3 sudah dibuat |
| 1.5b uji di perangkat | ⏳ **menunggu pemilik perangkat** — hanya bisa dilakukan manusia yang memegang A37 |
| **2 Manifest & sync** | ✅ **selesai.** `lunch lineage_A37-userdebug` berhasil, `PLATFORM_VERSION=13` |
| **3 Device tree** | ⬅️ **BERIKUTNYA.** Pemblokir pertama sudah diketahui pasti (lihat §6) |
| 4–10 | belum |

### Repo kerja (semuanya milik akun GitHub `rigaz29`)

| Repo | Branch | SHA | Isi |
|---|---|---|---|
| `rigaz29/android_build_oppo_A37-20` | `main` | — | rencana + tool (repo ini) |
| `rigaz29/rb_device_oppo_A37` | `lineage-20` | `ce39cf5` | device tree, **belum disunting** untuk 20 |
| `rigaz29/kernel_oppo_msm8939` | `lineage-20` | `8cc1519` | kernel, Fase 1 sudah masuk |
| `rigaz29/rb-vendor_oppo_A37` | `lineage-18.1` | `2e5c6f7` | blob, dipakai apa adanya |

### Lingkungan (mesin tempat ini dikerjakan)

```
/root/a37-20      repo ini
/root/los20       source tree LineageOS 20 — 1213 project, 131 GB, sudah sync & sehat
/root/a37-19.1    proyek 19.1 (rujukan; source tree-nya SUDAH DIHAPUS)
/root/a37-dl      artefak build (zip kernel, checksum)
```

Sisa disk ± 122 GB. `out/` butuh 45–50 GB, jadi **tanpa margin** — bersihkan sebelum
`mka bacon`.

Kalau melanjutkan di mesin lain, bangun ulang tree dengan §4.

---

## 3. Keputusan yang SUDAH diambil — jangan diperdebatkan ulang tanpa bukti baru

Semuanya diturunkan dari bukti, bukan preferensi. Rinciannya di `PLAN.md` §0–§3.

| Keputusan | Alasan singkat |
|---|---|
| Basis manifest **`LineageOS-UL/android` `lineage-20.0`**, bukan `LineageOS/android` | 37 fork legacy sudah terpasang; menggantikan 9 repopick + 23 patch Camera HAL1 |
| **Nol repopick.** Jangan tambahkan repopick Gerrit | fungsinya sudah ada di fork UL, terverifikasi di source **dan** di biner ROM yang dirilis |
| Device tree = **milik kita sendiri** (`lineage-19.1-rb` @ `ce39cf5`), **bukan** tree `meghs-playground` | tree kita mandiri (tanpa `msm8916-common`), membawa 6 perbaikan terverifikasi, dan hanya memakai 1 dari 53 variabel build yang usang |
| Kernel tetap **arm64**, basis kernel A37 sendiri | Android 13 tidak menuntut fitur kernel baru (diukur: delta binder 233 baris, 1 fungsional) |
| Audio HAL **tetap `@6.0`** | ROM msm8916 A13 yang boot pakai `@2.0`; rentang 2.0–7.1 semua jalan. Yang wajib: versi manifest **cocok** dengan `-impl` yang dibangun |
| **Pertahankan `cryptfshw`**; `/data` polos lewat **fstab tanpa `encryptable=`** | ROM yang boot melakukan persis itu. Mencabut HAL menyentuh 3 berkas untuk efek yang bisa dicapai 1 baris |
| Casefold: **defensif saja**, bukan syarat | `emulated_storage.mk` tidak di-inherit target nyata mana pun di LOS 20 |
| `PRODUCT_SHIPPING_API_LEVEL := 21` **+** `BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true` | **pasangan** perbaikan 10.A. Menghapus salah satunya mengembalikan crash-loop SurfaceFlinger |
| `lunch ...-userdebug`, **bukan `-eng`** | build `eng` memasang StrictMode `penaltyFlashScreen()` tanpa syarat (bug 10.F) |
| **RIL adalah risiko terbuka**, bukan kriteria keberhasilan boot | belum pernah jalan di 19.1 kita maupun di tree meghs; tidak ada sumber yang membuktikannya jalan di A37 pada Android 12+ |

---

## 4. Membangun ulang tree dari nol

```bash
mkdir -p ~/los20 && cd ~/los20
repo init -u https://github.com/LineageOS-UL/android.git -b lineage-20.0 --git-lfs
mkdir -p .repo/local_manifests
cp /path/ke/repo-ini/A37-20.xml .repo/local_manifests/

repo sync -c -j8 --force-sync --no-clone-bundle     # PERHATIKAN: TANPA --no-tags

/path/ke/repo-ini/tools/apply-legacy-patches.sh ~/los20
source /path/ke/repo-ini/tools/envsetup-a37.sh      # sudah memanggil lunch userdebug
```

---

## 5. Jebakan yang SUDAH pernah menjebak — jangan diulang

Semuanya benar-benar terjadi di proyek ini, bukan teori.

1. **Jangan `repo sync --no-tags`.** Remote `aosp` di manifest UL dipin ke
   `refs/tags/android-13.0.0_r75`. Dengan `--no-tags`, **1051 project gagal checkout**
   dengan pesan `checkout <sha>` yang menyesatkan — `<sha>` itu objek **tag**, bukan commit.

2. **Sync yang terputus meninggalkan berkas untracked** di project tanpa HEAD.
   `--force-sync` **tidak** membersihkannya dan `git checkout` menolak menimpa, jadi sync
   berikutnya tetap gagal walau perintahnya sudah benar.
   Penawarnya: **`tools/repo-doctor.sh`**.

3. **XML melarang `--` di dalam komentar.** `A37-20.xml` pernah gagal diparse karena ini.
   Selalu validasi sebelum menyalin:
   ```bash
   python3 -c "import xml.etree.ElementTree as E; E.parse('A37-20.xml')"
   ```

4. **Hulu hanyut (upstream drift).** Manifest UL menyematkan project ke **branch**, bukan
   SHA. Lini UL **beku 2025-04-04**, tapi repo LineageOS terus bergerak di branch bernama
   sama. Ini **sudah memutus build** (lihat `PLAN.md` §2.7 — `external/dng_sdk`).
   Deteksi: **`tools/check-drift.sh`**. Kebijakan: **pin hanya yang terbukti memutus
   build**, jangan memin semuanya secara preventif.

5. **`tools/apply-legacy-patches.sh` WAJIB dijalankan ulang setiap habis `repo sync`.**
   `repo sync` mengembalikan tiap project ke revisi manifest, jadi tambalan hilang diam-diam.
   Skripnya idempoten — aman dijalankan berulang.

6. **`pkill -f "repo sync"` ikut membunuh shell-nya sendiri**, karena string perintahnya
   memuat pola itu. Pakai pola yang tidak cocok dengan diri sendiri, mis.
   `pkill -f "repo/mai[n].py"`.

---

## 6. Fase 3 — pemblokir pertama sudah diketahui

`m nothing` berhenti di:

```
build/make/core/base_rules.mk:338: error: device/oppo/A37/gps/utils:
MODULE.TARGET.SHARED_LIBRARIES.android.hidl.base@1.0 already defined by hardware/lineage/compat
```

Device tree kita membangun dummy `android.hidl.base@1.0` (`libhidl/Android.mk:18`, dipasang
lewat `device.mk:586`) untuk blob era Oreo. **LineageOS 20 kini menyediakannya sendiri** di
`hardware/lineage/compat/Android.bp:228`. Buang milik kita.
Sepadan dengan commit meghs `031a09a` *Revert "Build a dummy android.hidl.base@1.0..."*.

⚠️ **Ini pemblokir pertama, bukan satu-satunya.** kati berhenti di error pertama, jadi
Fase 3 kemungkinan besar memunculkan beberapa lagi berurutan. Daftar lengkap butir Fase 3
ada di `PLAN.md` Fase 3.1–3.3.

---

## 7. Cara kerja yang diharapkan

Ini yang membuat proyek 19.1 berhasil setelah percobaan sebelumnya gagal, dan yang
diteruskan di sini:

- **Ukur, jangan perkirakan.** "Delta binder 233 baris" berasal dari `diff`, bukan
  perasaan. Kalau menulis angka, sertakan perintah yang menghasilkannya.
- **Setiap klaim teknis diikat ke sumber yang bisa diverifikasi** — path berkas + nomor
  baris, SHA commit, atau perintah. `PLAN.md` Lampiran B berisi perintah bedah ulang.
- **Satu variabel pada satu waktu.** Percobaan 19.1 yang gagal mengganti arsitektur kernel
  **dan** device tree sekaligus, lalu kehilangan alat ukurnya. Fase 1 sengaja melewati dua
  perubahan opsional supaya uji perangkat hanya menguji satu hal.
- **Verifikasi di lapisan terendah yang masuk akal.** Contoh: perubahan binder tidak cuma
  dicek di source, tapi lewat `nm` pada object file hasil kompilasi.
- **Deklarasikan interface HIDL hanya kalau servisnya terbukti register di ROM ini** —
  bukan karena ia pernah jalan di versi Android sebelumnya. Ini pelajaran termahal 19.1
  (bug 10.C: Watchdog membunuh `system_server` tiap ~2 menit).
- **Koreksi diri secara terbuka.** Dokumen ini sudah beberapa kali membatalkan
  rekomendasinya sendiri setelah bukti baru (audio `@7.1`→`@6.0`, "cabut FDE"→pertahankan,
  klaim UL "aktif"→ternyata beku). Itu perilaku yang diharapkan, bukan kegagalan.
- **Jangan mengadopsi tree orang lain borongan.** Tree meghs, a6010, dan retiredtab dipakai
  sebagai **daftar periksa**, dan setiap selisih ditanya: *apakah ini berlaku untuk A37?*

---

## 8. Batas yang harus dihormati

- **Uji di perangkat hanya bisa dilakukan pemilik A37.** Jangan mengklaim sesuatu "berfungsi
  di perangkat" tanpa log dari perangkat. Tulis "belum diuji" apa adanya.
- **Jangkar bukti ROM (`ref/evidence/`) berasal dari device LAIN** (Samsung SM-T350,
  msm8916, kernel 3.10.108 — Wi-Fi-only). Ia menjawab pertanyaan level chipset dan level
  Android 13, **bukan** level A37. RIL, panel, kamera, dan sensor A37 di luar jangkauannya.
- **`/data` tidak terenkripsi** di rancangan ini. Perangkat uji saja.

# HANDOFF — konteks untuk AI/pengembang yang melanjutkan proyek ini

Berkas ini ditulis supaya siapa pun (manusia atau LLM) bisa melanjutkan **tanpa** riwayat
percakapan sebelumnya. Baca ini dulu, lalu `PLAN.md`.

Terakhir diperbarui: 6 Agustus 2026 — **Fase 1-9 selesai, Fase 10 berjalan**. ROM boot
sampai homescreen; Wi-Fi dan kamera terverifikasi normal; crash Bluetooth ditemukan
(controller WCNSS mengembalikan opcode vendor tanpa OGF — PLAN §10.4) dan diperbaiki di
build `20260806_133829` (menunggu flash). RIL tetap risiko terbuka (ANR com.android.phone
adalah efek sampingnya, bukan bug baru). adb diagnostik AKTIF — matikan sebelum rilis.

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

> **6 Agustus 2026:** ada rencana baru — **migrasi basis ke LineageOS official** —
> di [`PLAN-OFFICIAL.md`](PLAN-OFFICIAL.md) (delta UL↔official terukur, seri patch
> legacy, fase M0–M5). **Update 7 Agustus:** **M0–M4 SELESAI** — tree `/root/los20`
> berbasis official lineage-20.0 tersinkron + 135 patch legacy terpasang
> (skrip `tools/apply-official-patches.sh`, rc=0), dan ROM basis official
> **TERBUILD PENUH**: `m bacon` 01:38:57 rc=0 + `verify-rom.sh` SEMUA LOLOS;
> zip `lineage-20.0-20260807_020319-UNOFFICIAL-A37.zip` (587M, sha256
> `2a78a1b6…`, salinan di `/root/a37-dl/lineage-20.0-official-M4-20260807_020319.zip`),
> `ro.build.version.security_patch=2026-02-01` (tujuan migrasi tercapai; UL beku
> 2025-03). Tiga pemblokir M4: korupsi Android.bp warisan keep-both M3 (seri
> vendor_lineage diregenerasi, SHA `977058d5…69d8465e`), `libcnefeatureconfig`
> dibuang (device tree `434e530` sudah push), patch T3 wlan dipromosikan wajib.
> Rincian: PLAN-OFFICIAL §"Pemblokir M4". **M5 berjalan + M6 SELESAI (7 Agustus)** —
> uji BT menemukan 3 bug device tree (fix `ddf0253`); RIL mati ternyata karena
> prop `vendor.rild.libpath` hilang (fix 1 baris `c5291cc`; telepon/SMS/LTE by.U
> teruji jalan; 16 patch T-RIL UL tak diperlukan). **Zip final**
> `lineage-20.0-20260807_122340-UNOFFICIAL-A37.zip` (verify lolos, sha256
> `ae261c4b…`, di `/root/a37-dl/lineage-20.0-official-FINAL-BT-RIL-…zip`) memuat
> fix BT+RIL permanen — menunggu flash user. Rincian: PLAN-OFFICIAL §"Temuan M5".
> ⚠️ Disk ~30 GB. Sisa M5: matriks paritas Wi-Fi/kamera/sensor/audio/charging;
> matikan `WITH_ADB_INSECURE` sebelum rilis publik.

---

## 2. Status per 5 Agustus 2026

| Fase | Status |
|---|---|
| **1 Kernel** | ✅ **selesai di sisi build.** Branch `lineage-20` @ `8cc1519`. Zip AnyKernel3 sudah dibuat |
| 1.5b uji di perangkat | ⏳ **menunggu pemilik perangkat** — hanya bisa dilakukan manusia yang memegang A37 |
| **2 Manifest & sync** | ✅ **selesai.** `lunch lineage_A37-userdebug` berhasil, `PLATFORM_VERSION=13` |
| **3 Device tree** | ✅ **selesai** — pemblokir kati beres, `m nothing` exit 0, @ `7938923` (detail §6) |
| **4 VINTF** | ✅ **selesai** — nol perubahan source; sepolicy 33.0 ter-injeksi otomatis, manifest terakit identik ROM jangkar. Catatan `check_vintf_compatible` di PLAN §4.7 |
| **5 SEPolicy** | ✅ **selesai** — `m selinux_policy` exit 0; layout identik ROM yang boot (detail PLAN §5.1b–5.1d). ⚠️ **Jalankan `tools/apply-legacy-patches.sh` ulang pasca `repo sync`** — langkah 3 (buang sysfs_disk_stat) baru |
| **6 Vendor blobs** | ✅ **selesai** — set 320 blob 19.1 dipertahankan; deklarasi HAL iop dibuang (PLAN §6.2); 64-bit/protobuf aman; `verify-rom.sh` diperluas (blob hilang + lokasi sepolicy) |
| **7 Init & rootdir** | ✅ **selesai** — nol perubahan source; rc file lolos verifier init A13; ueventd gate API 21 terbuka (PLAN §7) |
| **8 Build** | ✅ **selesai** — `m -j6 bacon` rc=0, zip 588 MB, verify-rom.sh LOLOS. 7 pemblokir dibereskan (PLAN §8.1a-d) — termasuk **5 pin anti-hanyut baru di A37-20.xml** |
| **9 Boot pertama** | ✅ **HOMESCREEN TERCAPAI 6 Agu 2026** — satu pemblokir boot dibereskan (charging control/Watchdog, PLAN §9.6). ⚠️ adb diagnostik AKTIF (`WITH_ADB_INSECURE`) — matikan sebelum rilis |
| **10 Debug device** | 🔧 **berjalan** — Wi-Fi diperbaiki (duplikat wpa_supplicant, PLAN §10.1); RIL risiko terbuka; kamera/sensor/audio/BT belum diuji |

### Repo kerja (semuanya milik akun GitHub `rigaz29`)

| Repo | Branch | SHA | Isi |
|---|---|---|---|
| `rigaz29/android_build_oppo_A37-20` | `main` | — | rencana + tool (repo ini) |
| `rigaz29/rb_device_oppo_A37` | `lineage-20` | `7938923` | device tree, **Fase 3 sudah masuk** (basis `ce39cf5`) |
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
| ~~**Pertahankan `cryptfshw`**~~ → **DICABUT di Fase 3** | ⚠️ **DIBATALKAN oleh bukti baru 5 Agustus 2026:** modul `cryptfshw` tidak ada sama sekali di tree LOS 20 (hulu mencabut source-nya setelah 19.1; diverifikasi: 0 definisi di seluruh tree). ROM gt58wifi yang boot pun **tidak mengirim biner cryptfshw** — deklarasinya di VINTF hanya sisa. Premis keputusan lama ("HAL sudah ada, mencabut = 3 berkas") gugur. `/data` tetap polos lewat fstab tanpa `encryptable=` — bagian ini tetap |
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

7. **`repo init` ke manifest lineage-20.0 official men-DOWNGRADE `.repo/repo`** ke
   revisi era Python 2 (`4b32581`); Python sistem ≥ 3.10 tidak punya modul
   `formatter` → semua perintah repo mati seketika dengan `ModuleNotFoundError`.
   Perbaikan (dialami M2, 6 Agu 2026):
   `git -C .repo/repo fetch --tags && git -C .repo/repo checkout v2.66`, lalu
   jalankan semua perintah repo dengan **`REPO_REV=v2.66`** di depan.

8. **Sync pertama pasca-ganti basis manifest bisa meninggalkan state setengah-jadi.**
   Gejala (M2): `fatal: not a git repository: .repo/projects/<path>.git` (direktori
   ada tapi tanpa HEAD/refs) dan error `checkout <sha>` pada project baru
   (worktree terisi tapi `.repo/projects`-nya tidak dibuat). Perbaikan: hapus
   **dua-duanya** — `.repo/projects/<path>.git` + `.repo/project-objects/<nama>.git`
   bila korup, plus worktree project gagal — lalu `repo sync --force-sync` ulang.
   `--force-sync` saja TIDAK membersihkan state ini.

---

## 6. Fase 3 — status 5 Agustus 2026

Pemblokir pertama (`android.hidl.base@1.0` duplikat) dan seluruh pemblokir kati
berikutnya **sudah diselesaikan**; `m nothing` kini exit 0, dan dua modul uji
(`libwcnss_qmi`, `android.hardware.drm@1.4-service.clearkey`) ter-build. Rincian:

1. **Dummy `android.hidl.base@1.0` dibuang** — `libhidl/Android.mk` dihapus,
   dua baris `device.mk` dibuang. LOS 20 menyediakan keduanya di
   `hardware/lineage/compat/Android.bp:228,236`. Sepadan dengan meghs `031a09a`.

2. **Pemblokir kedua: `wcnss_service` menautkan QMI.** Fork UL
   `hardware/qcom-caf/wlan lineage-20.0-caf` menghilangkan gerbang `QCPATH`
   yang ada di `lineage-19.1-caf`, sehingga `wcnss_service` menautkan
   `libqmi_cci`/`libqmi_common_so`/`libmdmdetect` — tidak ada sebagai modul di
   LOS 20. Perbaikan: `TARGET_PROVIDES_WCNSS_QMI := true` di BoardConfig
   (sama dengan meghs BoardConfig.mk:91) → jalur `-DWCNSS_QMI_OSS` + libdl,
   persis build 19.1. Baca `PLAN.md` Fase 3.3 baru.

3. **Pemeriksaan baru LOS 20: `vendor/lineage/config/common.mk:104`**
   (`enforce-product-packages-exist`) — 19.1 tidak memilikinya. Menangkap
   **10 entri `PRODUCT_PACKAGES` yang tidak pernah dibangun** di 19.1 pun
   (diverifikasi dari log build 19.1: nol baris build/install):
   `libgenlock`, `libOmxVdecHevc`, `libOmxSwVencHevc`, `sensord`, `accelcal`,
   `AccCalibration`, `textclassifier.bundle1`, `libhidltransport.vendor`,
   `libhwbinder.vendor`, dan `android.hardware.drm@1.3-service.clearkey`
   (yang terakhir DIGANTI `@1.4-service.clearkey` — biner yang sama dengan
   ROM gt58wifi; fqname manifest dinaikkan ke @1.4). Semua dibuang dari
   `device.mk` kecuali clearkey yang diganti.

4. **Koreksi `cryptfshw`** — lihat tabel §3. Keputusan lama gugur oleh bukti:
   hulu mencabut source-nya di LOS 20; ROM jangkar tidak mengirim binernya.

5. **Sisa enkripsi dibersihkan (audit pasca-Fase 3).** `encryptable=userdata` masih
   tertinggal di entri `voldmanaged=sdcard1` `fstab.qcom` walau `/data` sudah bersih.
   Dicabut di `7938923`. ROM jangkar gt58wifi memakai baris itu tanpa opsi tersebut
   (`ref/evidence/ramdisk-fstab.qcom`).

### Jejak bukti Fase 3 — perintah yang bisa diulang

```bash
cd /root/los20 && source /root/a37-20/tools/envsetup-a37.sh

m nothing                       # -> work/fase3-kati3.log : build completed successfully (01:17)
m libwcnss_qmi android.hardware.drm@1.4-service.clearkey
                                # -> work/fase3-modul-uji.log : build completed successfully (01:12)

# artefak yang dihasilkan
find out -name "libwcnss_qmi*" -o -name "*1.4-service.clearkey*"
```

⚠️ **Lingkup `m nothing`: ia hanya MEMBACA makefile, tidak mengompilasi apa pun.**
Lolosnya berarti build system menerima device tree — **bukan** bahwa ROM bisa dibangun.
Kegagalan kompilasi nyata baru muncul di Fase 8 (`mka bacon`).

Belum diuji di perangkat apa pun — semua kesimpulan di atas dari log build
19.1, tree LOS 20, dan ROM gt58wifi.

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

# Rencana Migrasi Basis — LineageOS 20.0 OFFICIAL untuk OPPO A37f (MSM8916)

> **Status:** Rencana baru (6 Agustus 2026). Belum ada fase yang dikerjakan.
> **Eksekusi (repo re-init, sync, rebuild) hanya dilakukan atas persetujuan eksplisit.**
>
> **Target:** Pindah basis dari `LineageOS-UL/android` `lineage-20.0` (beku) ke
> **`LineageOS/android` `lineage-20.0` (official, masih menerima ASB)**, lalu
> mengimplementasikan ulang fungsi legacy yang selama ini disediakan fork UL —
> sebagai seri patch terukur yang disimpan di repo ini.
>
> **Dokumen induk:** `PLAN.md` (10 fase basis UL — ROM sudah boot, kamera/BT/Wi-Fi/volume
> jalan). Dokumen ini **melanjutkan**, bukan mengulang: seluruh keputusan §3 HANDOFF,
> keenam perbaikan 10.A–10.F, device tree `7938923`, kernel `8cc1519`, dan blob `2e5c6f7`
> dibawa apa adanya. Kalau ada konflik, data pengukuran di dokumen ini menang atas asumsi.

---

## 0. Ringkasan eksekutif

### 0.1 Kenapa pindah basis — berdasarkan data, bukan preferensi

| Fakta | Bukti (dikumpulkan 6 Agustus 2026) |
|---|---|
| **Official `lineage-20.0` masih hidup dan menambal keamanan.** Commit manifest terbaru `0f52348` (2026-05-18): *"Track our own forks for **2026-06** ASB patching"*. Rantai ASB yang terlacak di log manifest: 2025-03 → 04 → 05 → 06 → 09 → 12 → 2026-03 → 04 → **06** | `git clone -b lineage-20.0 https://github.com/LineageOS/android.git` lalu `git log` (perintah di Lampiran A) |
| **UL beku sejak 2025-04-04; ASB terakhirnya 2025-03** — seluruh lini (19.1/20.0/21.0) beku di tanggal yang sama | `PLAN.md` §1.1 (verifikasi `.repo/manifests` + HEAD tiap fork) |
| **Selisih keamanan ≈ 15 bulan ASB** (2025-03 → 2026-06) yang tidak akan pernah didapat dari UL | dua baris di atas |
| Contoh nyata dampaknya: `frameworks/base` official bergerak **144 commit** setelah titik fork UL (2025-03-06), mayoritas backport keamanan; `frameworks/av` official +7 commit | pengukuran §1.3, log `work/official-delta/frameworks_base.log` |

### 0.2 Keputusan inti

| # | Keputusan | Alasan berbasis data |
|---|---|---|
| 1 | **Basis: `repo init -u https://github.com/LineageOS/android.git -b lineage-20.0`** | §0.1 — ASB berjalan; cabang `lineage-20.0` diverifikasi masih ada di semua repo kunci |
| 2 | **Fungsi legacy UL dibawa sebagai seri patch per-repo** (`git format-patch` dari fork UL, disimpan di `patches/official/`, diterapkan skrip idempoten pasca-sync) — **bukan** dengan mem-pin fork UL | Mem-pin fork UL = repo terpenting (`frameworks/av`, `frameworks/base`) tetap di ASB 2025-03 → tujuan pindah basis gugur. Precedent: proyek 19.1 kita sendiri (official + 8 repopick + 22+5 patch kamera + revert libbfqio) **boot, kamera+BT jalan** |
| 3 | **Beban port terukur: 142 commit fungsional wajib** (T0=8, T1=60 —termasuk 1 revert libbfqio kita—, T2=74), 12 commit T3 kondisional, 16 commit opsional RIL. Dua repo besar hanya 2 dari 23; sisanya 1–21 commit kecil | Tabel §1.3 + daftar commit §3 |
| 4 | **Enam pin anti-hanyut di `A37-20.xml` DIHAPUS** (dng_sdk, skia, Mms, Telephony, Trebuchet, Settings) | Semua pin itu ada karena **campuran** UL-beku × official-bergerak (komentar tiap pin di `A37-20.xml` sendiri yang menyatakan: "tak ada di fork UL beku"). Basis official murni menghapus akar masalahnya — tree konsisten sebagai satu set |
| 5 | **Satu-satunya pin baru: `device/qcom/sepolicy-legacy`** → `LineageOS-UL/android_device_qcom_sepolicy` @ `470e8d88` (branch `lineage-20.0-legacy`) | Tidak ada di manifest official (diverifikasi); repo official hanya punya branch `lineage-20.0` dan `lineage-20.0-legacy-um` (bukan yang kita pakai). Precedent: resep retiredtab 19.1 juga mengambil repo ini dari UL |
| 6 | **Semua yang khas A37 tidak berubah**: device tree `7938923`, kernel `8cc1519`, vendor `2e5c6f7`, qcom-caf msm8916 (3 SHA), seluruh properti 10.A–10.F | Fase 3–7 PLAN.md; migrasi ini hanya mengganti **userspace platform** di bawahnya |
| 7 | **Rebuild penuh + uji perangkat ulang wajib** — ROM UL yang sekarang jalan jadi **baseline paritas**, bukan alasan melonggarkan uji | Kebijakan §7 HANDOFF: klaim fungsi hanya dengan log perangkat |

### 0.3 Satu kalimat

ROM UL kita sudah membuktikan *apa* yang dibutuhkan A37 dari sisi legacy; pekerjaan
sekarang adalah memindahkan daftar kebutuhan itu — yang kini **terukur per commit** —
ke atas basis official yang masih ditambal keamanannya.

---

## 1. Fakta yang mendasari rencana ini

Semua data dikumpulkan 6 Agustus 2026 di mesin ini. Perintah ulang di Lampiran A;
log mentah di `work/official-delta/` (ter-ignore git — tabel di dokumen ini adalah
salinan permanennya).

### 1.1 Status kedua basis

| | LineageOS-UL `lineage-20.0` | LineageOS **official** `lineage-20.0` |
|---|---|---|
| Commit manifest terakhir | 2025-04-04 (`03ea6ac`) — beku | **2026-05-18 (`0f52348`)** — "2026-06 ASB" |
| ASB terakhir | 2025-03 | **2026-06** |
| Remote `aosp` | tag `android-13.0.0_r75` | **sama** — jebakan `--no-tags` tetap berlaku (HANDOFF §5.1) |
| Jumlah project manifest | ±1213 | 1081 di `default.xml` + snippet `lineage.xml`/`pixel.xml` |

### 1.2 Pemetaan 37 fork UL terhadap manifest official

Setiap path di `snippets/losul.xml` dicari di manifest official (Lampiran A.2):

**A. Ada di official sebagai fork LineageOS (branch `lineage-20.0`, terus bergerak) — 24 path:**
`bionic`, `device/lineage/sepolicy`, `frameworks/av`, `frameworks/base`,
`frameworks/native`, `frameworks/opt/telephony`, `hardware/interfaces`,
`hardware/lineage/interfaces`, `hardware/ril`, `hardware/qcom/{audio,display,media}`,
`hardware/qcom-caf/wlan` (`lineage-20.0-caf`), `packages/apps/Nfc`,
`packages/inputmethods/LatinIME`, `packages/modules/{adb,Bluetooth,Connectivity,Wifi}`,
`system/core`, `system/netd`, `system/sepolicy`, `vendor/lineage`,
`vendor/qcom/opensource/power`

**B. Ada di official sebagai AOSP murni (tag `android-13.0.0_r75`, BEKU selamanya) — 6 path:**
`art`, `external/jemalloc_new`, `external/perfetto`, `frameworks/libs/net`,
`packages/modules/NetworkStack`, `system/bpf`

→ Untuk kategori B, patch legacy cukup dibuat **sekali**: basisnya tidak akan pernah
bergerak, jadi nol risiko konflik di masa depan.

**C. TIDAK ADA di manifest official — 4 path:**
`device/qcom/sepolicy-legacy` (→ pin UL, keputusan §0.2#5),
`external/connectivity`, `hardware/broadcom/nfc`, `system/tools/dtbtool`
(→ ketiganya diverifikasi **tidak dikonsumsi build A37**, §1.5).

**D. Tidak dipetakan (bukan kebutuhan A37):** `hardware/qcom-caf/msm8974/{audio,display,media}`
(device lain; msm8974-caf juga tidak ada di manifest official 20).

### 1.3 Pengukuran delta UL ↔ official (23 repo)

Metode: ke tiap checkout UL di `/root/los20`, fetch cabang/tag official yang sama,
lalu hitung `git rev-list` dua arah dari merge-base
(skrip: `tools/measure-official-delta.sh`).

| Repo | UL-only fungsional | official-only (pasca fork) | Tanggal fork | Kelas |
|---|--:|--:|---|---|
| `packages/modules/adb` | **1** | 1 | 2023-04-30 | T0 |
| `art` | **1** | 0 (tag r75) | — | T0 |
| `system/bpf` | **2** | 0 (tag r75) | — | T0 |
| `external/perfetto` | **1** | 0 (tag r75) | — | T0 |
| `frameworks/libs/net` | **1** | 0 (tag r75) | — | T0 |
| `packages/modules/NetworkStack` | **2** | 0 (tag r75) | — | T0 |
| `vendor/lineage` | **13** (12 UL + 1 kita) | 4 | — | T1 |
| `system/core` | **4** | 0 | — | T1 |
| `system/netd` | **3** | 0 | — | T1 |
| `packages/modules/Connectivity` | **4** | 5 | — | T1 |
| `system/sepolicy` | **7** (1 dibuang) | 0 | — | T1 |
| `device/lineage/sepolicy` | **2** | 0 | — | T1 |
| `hardware/interfaces` | **5** | 0 | — | T1 |
| `frameworks/native` | **21** | 13 | 2025-03-06 | T1 |
| `packages/modules/Wifi` | **1** | 4 | — | T1 |
| `packages/modules/Bluetooth` | **1** | 21 | — | T1 |
| `frameworks/av` | **45** | **7** | 2024-09-06 | T2 |
| `frameworks/base` | **29** | **144** | 2025-03-06 | T2 |
| `bionic` | 7 | 0 | — | T3 |
| `external/jemalloc_new` | 3 | 0 (tag r75) | — | T3 |
| `hardware/qcom-caf/wlan` | 2 | 0 | — | T3 |
| `frameworks/opt/telephony` | 8 | 3 | — | RIL (opsional) |
| `hardware/ril` | 8 | 1 | — | RIL (opsional) |

Dua pembacaan penting dari tabel ini:

1. **Risiko konflik terkonsentrasi di satu repo.** `frameworks/base` official bergerak
   144 commit (backport ASB) sejak UL mem-fork; semua repo lain 0–21. `frameworks/av`
   — repo kamera yang paling besar deltanya — justru hanya 7 commit di belakang,
   jadi port kamera berisiko rendah.
2. **Kebanyakan port berukuran 1–5 commit.** Kategori T0 seluruhnya basis AOSP beku:
   bikin sekali, tidak pernah konflik lagi.

### 1.4 Verifikasi silang kebutuhan flag device tree

`device/oppo/A37/BoardConfig.mk` memakai flag yang **sudah dicabut vendor/lineage
official** (UL menghidupkannya lewat revert):

| Flag kita | Di vendor/lineage official | Di fork UL |
|---|---|---|
| `TARGET_HAS_LEGACY_CAMERA_HAL1 := true` | **0 file** (`git grep` di FETCH_HEAD) | ada |
| `TARGET_HAS_MEMFD_BACKPORT := true` | dicabut (commit revert UL `c36deab6`) | ada |
| `TARGET_DISABLE_POSTRENDER_CLEANUP := true` | dicabut (`b6fde0b9`) | ada |
| `TARGET_USES_QTI_CAMERA_DEVICE := true` | dikonsumsi sisi av (UL `1ca4e4e239`) | ada |
| `TARGET_PROCESS_SDK_VERSION_OVERRIDE` (BoardConfig.mk:344-346, HANDOFF §6.5) | dicabut (`8a81cccc`); sisi runtime bionic UL `d51393f91` — **verifikasi saat M3** | ada |

Konsumsi `TARGET_CUSTOM_DTBTOOL := dtbToolOppo` aman: `vendor/lineage/build/tasks/
dt_image.mk` **ada di official** (`git ls-tree FETCH_HEAD build/tasks/`), dan modul
`dtbToolOppo` dibangun dari **device tree kita sendiri**
(`device/oppo/A37/dtbtool/Android.bp:27`) — tidak bergantung repo `system/tools/dtbtool`.

### 1.5 Yang diverifikasi TIDAK dibutuhkan (jadi tidak di-port)

| Item | Bukti |
|---|---|
| `system/tools/dtbtool` (fork UL) | dtbToolOppo dari device tree (§1.4); repo ini tidak dirujuk build kita |
| `external/connectivity` (fork UL) | checkout-nya hanya berisi `cnefeatureconfig` (CNE — tidak dipakai A37); tidak ada di manifest official dan build sekarang tidak menuntutnya |
| `hardware/broadcom/nfc` + `packages/apps/Nfc` (UL) | A37 tanpa NFC; official tetap punya `packages/apps/Nfc` lineage-20.0 bila dibutuhkan |
| `packages/inputmethods/LatinIME` (UL) | tidak ada temuan ketergantungan; official menyediakan |
| `hardware/qcom/{audio,display,media}` non-CAF (UL) | build msm8916 memakai jalur `qcom-caf/msm8916` (pin kita), bukan `hardware/qcom/*` |
| `vendor/qcom/opensource/power` (UL) | nol referensi di `device/oppo/A37` (grep `*.mk` + `manifest.xml`) |
| `external/jemalloc_new` (UL) | hanya relevan bila port `bionic` "Switch to jemalloc" diambil (T3, tidak default) |

### 1.6 Precedent — ini bukan jalur tanpa bukti

| Precedent | Apa yang dibuktikan |
|---|---|
| **Proyek 19.1 kita sendiri** (basis official + 8 repopick + 22 patch `frameworks/av` + 5 patch `frameworks/base` + revert libbfqio) | Workflow "official + patch" **boot di A37 nyata**, kamera depan+belakang dan BT berfungsi |
| Resep retiredtab **19.1** msm8916 (`research/retiredtab/19.1/191-msm8916-build-instructions.txt`) | Daftar patch yang hampir identik dengan yang kita ukur (repopick 318097/287706/326385/320591/320592/318817/320546 + patch av/base + revert `8f67d055`); juga pola pin `sepolicy-legacy` dari UL dan `dtbtool` dari branch lama |
| Resep retiredtab **20** (`20-msm8916-build-instructions.txt`) | Pola pemeliharaan bulanan stash → sync → `git am` di atas UL; patch-nya (`20/UL-patches-2024/`) dipakai sebagai **pembanding isi**, bukan diambil langsung (basisnya UL, bukan official) |

---

## 2. Strategi — yang dipilih dan yang ditolak

### 2.1 DIPILIH — official + seri patch per-repo (Opsi A)

```
repo init -u LineageOS/android -b lineage-20.0
        │
        ▼  repo sync (A37-20-official.xml: device/kernel/vendor/qcom-caf/sepolicy-legacy)
        │
        ▼  tools/apply-official-patches.sh   ← git am patches/official/<repo>/*.patch
        │                                        (idempoten; cek subjek commit)
        ▼  build bertahap (M4) → uji paritas perangkat (M5)
```

Properti penting:
- **Keamanan:** seluruh repo official naik ke ASB resmi; hanya isi patch legacy kita
  yang "beku" — dan memang itulah kode HAL1/gerbang kernel lama, bukan permukaan
  serangan yang ditambal bulanan.
- **Reproduktif:** patch tersimpan di repo (`patches/official/`), bukan di kepala
  atau riwayat chat. Siapa pun bisa rebuild dari nol.
- **Terukur:** 142 commit fungsional wajib, daftar per commit di §3 — tidak ada
  "37 fork misterius" seperti saat mulai proyek 20.

### 2.2 DITOLAK — pin fork UL di local manifest (Opsi B)

Mem-`remove-project` + deklarasi ulang 20-an repo ke `LineageOS-UL/*` di atas
manifest official. Nyaris nol kerja port, **tetapi** `frameworks/av` dan
`frameworks/base` — dua repo dengan permukaan keamanan terbesar — tetap di keadaan
2025-04/ASB-2025-03. Tujuan pindah basis (§0.1) gugur untuk komponen terpenting.
Opsi ini tetap menjadi **fallback per-repo** (§6 risiko 1) bila satu port terbukti
tidak layak.

### 2.3 DITOLAK — adopsi patch retiredtab `20/UL-patches-2024` apa adanya

Dibuat untuk basis **UL** (menambal UL yang beku), bukan official; beberapa
commit-nya device-spesifik Samsung. Nilainya: **checklist isi** untuk membandingkan
seri patch kita di M1 (terutama `frameworks_av-aug-2024.patch` dan
`frameworks-base-june-2024.patch`).

---

## 3. Inventaris port — daftar kerja per repo

Commit yang dicetak adalah isi sebenarnya di fork UL (log lengkap:
`work/official-delta/*.log`, bisa dibuat ulang dengan
`tools/measure-official-delta.sh`). Urutan tier = urutan pengerjaan.

### T0 — gerbang kernel-lawas, basis AOSP beku (8 commit; port sekali, aman selamanya)

| Repo | Commit | Fungsi | Padanan 19.1 |
|---|---|---|---|
| `packages/modules/adb` | `14f86741` *adb: Bring back support for legacy FunctionFS* | adb di FunctionFS kernel 3.10 — tanpa ini **tidak ada adb** | Gerrit 326385 |
| `art` | `291054d302` *art: Conditionally remove version check for memfd_create()* | gerbang memfd | Gerrit 318097 |
| `external/perfetto` | `33a23d1a4` *perfetto: Conditionally remove version check for memfd_create()* | gerbang memfd | Gerrit 287706 |
| `system/bpf` | `4968dc7` *Support no-bpf usecase*; `d913c49c6` *Allow failing to load bpf programs, for BPF-less devices* | gerbang eBPF | Gerrit 320591 |
| `frameworks/libs/net` | `4181eef` *Restore back the behavior of isValid()… BpfMap* | system_server tidak abort saat BpfMap tak bisa diakses | — |
| `packages/modules/NetworkStack` | `099ed891` *TcpSocketTracker: Opt-out for TCP info parsing on legacy kernels*; `6074124a` *Revert "Enable parsing netlink events from kernel since T"* | jaringan di kernel 3.10 | — |

### T1 — fork LineageOS, wajib (50 commit)

| Repo | Commit UL (non-merge) | Catatan |
|---|---|---|
| `vendor/lineage` (12 UL + 1 kita) | `bfa35ee6` Revert "QCOM: RIP pre-UM families"; `8a81cccc`/`b6fde0b9`/`9c7c9094`/`c36deab6`/`0b45b0ad`/`0bb1c80a`/`f1a1152f`/`09e39bf4` (delapan Revert pencabutan flag legacy — **termasuk `TARGET_HAS_LEGACY_CAMERA_HAL1` dan `TARGET_HAS_MEMFD_BACKPORT` yang kita pakai**, §1.4); `03a14c2b` Revert pahole; `110e6898` soong: Update camera_in_mediaserver_defaults; `b9431b10` BOARD_CUSTOM_KERNEL_MK; **+ `d4a23dfd` Revert "Remove libbfqio" (langkah kita, tetap wajib** — `hardware/qcom-caf/msm8916/display/libhwcomposer/Android.mk:20` masih menautkan libbfqio) | §1.4 membuktikan official tak punya flag-flag ini |
| `system/core` (4) | `eb906fc25` Fix support for devices without cgroupv2; `ce1e67e3c` Camera: Add feature extensions; `a112cd1ad` Fix samsung healthd building; `e5cbaa57c` Revert "libprocessgroup: switch freezer to cgroup v2" | kernel 3.10 tanpa cgroup v2 |
| `system/netd` (3) | `ed974e22` netd: Allow devices to force-add directly-connected routes; `8f675a2a` Support no-bpf usecase; `79c122a2` Don't abort in case of cgroup/bpf setup fail | gerbang BPF/cgroup |
| `packages/modules/Connectivity` (4) | `d913c49c6` Allow failing to load bpf programs; `722eef775` BpfMap isOk; `59e502cd5` Dont delete UID from BpfMap on BPF-less kernel; `ff018f7a6` Bring back traffic indicators for legacy devices | BPF-less |
| `system/sepolicy` (6 dari 7) | `85a0067c5` sysprop LeGetVendorCapabilities; `704f7e17d` exempt system_app adbd_config_prop; `d55a8748e` sdcard_posix_contextmount_type; `086040f14` mediaprovider mlstrustedsubject; `6579b5603`+`dc010480e` recovery whitelist. **BUANG `a6cfe58e0`** (storaged/sysfs_disk_stat — di official tipe itu tak pernah ada; inilah yang memicu pemblokir 5.1b/5.1d di basis UL) | langkah 3 skrip lama terbelah: sisi platform tak perlu lagi, sisi `sepolicy-legacy` tetap (§4.2 langkah K) |
| `device/lineage/sepolicy` (2) | `68ab0f4` Revert "Remove legacy camera HAL1 sepolicy"; `9ad78cd` Revert "qcom: Drop support for ultra legacy platforms" | sepolicy kamera HAL1 + qcom legacy |
| `hardware/interfaces` (5) | `bf7ca85ef` audio: Bring back 2.0 hal support; `5f8be6929` Revert "audio: use binder threadpool"; `51f11119d` Revert "Audio: Load Bluetooth AIDL HAL"; `8d8ae34e8` keymasterV4 FBE wrapped key; `d36aa2c2a` vendor800 hwc command | pasangan audio `@6.0` kita + BT audio HIDL |
| `frameworks/native` (21) | seluruh delta UL — kecil (16 file, +111/−32): tweak SurfaceFlinger (backpressure, no-ops REThreaded revert, scheduler vote), `libbinder: O_CLOFORK`, `unshared_oob` deteksi via vndk, dsb. | port utuh lebih sederhana daripada memilih; official hanya 13 commit di muka |
| `packages/modules/Wifi` (1) | `b55d107afb` wifi: resurrect mWifiLinkLayerStatsSupported counter | Wi-Fi kita sudah jalan di UL; official +4 commit — verifikasi |
| `packages/modules/Bluetooth` (1) | `33857b4804` *le_set_event_mask … UNSUPPORTED_LMP_OR_LL_PARAMETER* | toleransi controller legacy (WCNSS). **Di atasnya tetap dipasang dua patch device kita** (opcode vendor OCF-only + standard inquiry scan, skrip lama langkah 6/6b) — official +21 commit, konteks file harus diverifikasi dulu (M3) |

### T2 — kamera, dua repo besar (74 commit)

**`frameworks/av` — 45 commit** (risiko rendah: official hanya +7 sejak fork 2024-09-06):

- Inti HAL1: `b24da7c94b` Restore camera HALv1 support [1/2] · `1ca4e4e239` Support legacy
  HALv1 camera in mediaserver · `9dcfaf8a22`+`3c5a4f2cf5` libcameraservice reset+revert
  massif ke keadaan Android 12 · `688023852a` custom CameraParameter · `aa59c12fe0`
  boottime timestamp · `ed4ee2a54c` CameraClient extensions · `05e72ff419` Revert
  "Remove old recording path" · `f3f2b82615` preview frame fd · `2052d76a9b` metadata
  type check · `72ec795a85` overlayed header · `9dd7bcf99a` NV21 · `ec98dc39cc`
  high-framerate CameraSource · `1c4fd46ee8` leak fix · `5b033a305c` NULL parameter
- stagefright/OMX legacy: `8f8ae50018` YVU420SemiPlanar · `6222e8cf46` 64-bit usage ·
  `b988386221` free buffers on observer died · `a47a0321ee` empty vendor params ·
  `edf9226cfe` no dataspace change on legacy QCOM · `e178eb5a77` nuplayer crash
- Audio: `6288025d2d` libaudiohal: Bring back 2.0 HAL (pasangan manifest `@6.0` kita;
  ROM jangkar bahkan `@2.0`)
- BT SCO: `3cc4beb4e1` three SCO devices fallback · `35be82f39d` Fix BT in-call on CAF
- 18 commit Revert fitur kamera A13 (overrideToPortrait, rotate&crop, dejittering,
  roundBufferDimensions, dsb.) — bagian dari "reset ke keadaan A12"
- `e456007ebf` adaptive playback QCOM_BSP_LEGACY — **opsional** (flag tidak kita setel)

**`frameworks/base` — 29 commit** (risiko tertinggi: official +144 ASB sejak fork
2025-03-06; kerjakan per commit dengan `git am -3`):

- Inti HAL1: `26ef16fbadb6` Restore camera HALv1 support [2/2] · `b5d27d01b3f8` Camera
  feature extensions · `9f132c83ae93` CameraServiceProxy: Loosen UID check ·
  `234cc488c32d` Revert Camera Injection · `e84cab5d4685` Revert readout timestamp ·
  5 Revert overrideToPortrait/slowJpeg/stream-size · `99f574a42ce3` Revert
  CameraManager getProperty swap
- Wajib non-kamera: `b175b72cc082`+`74b63393c99c`+`68e222442e5e`+`7acad85587fe`
  (empat commit CachedAppOptimizer → freezer cgroup **v1** — kernel 3.10 tak punya
  cgroup v2 freezer) · `14c2dda62682` Hack: Ignore SensorPrivacyService Security
  Exception (ada juga di resep 19.1) · `ab4c178b2239` sensors timestamp bool ·
  `792b418a8c71` Revert multiprocess WebView (RAM 2 GB) · `2e4e8df2caa4` disable
  vendor mismatch warning · `1660be3a38fe` BiometricScheduler cancel-if-not-idle ·
  `ae6e81a4406d` hwui reset ke r13 · `43027840af65`+`c146910ca5e4` tuning kill cached
  processes
- Kosmetik/opsional (ikut di-port demi paritas 1:1 dengan ROM yang sudah jalan; boleh
  dibuang bila konflik): `f8c83f3e7611` batterysaver night mode · `78a960148b74` ripple ·
  `c64137a25d5f` stretch effect · `b9fab207e18e` hapus dialog target SDK ·
  `d6affd45028d` brightness slider curve

### T3 — kondisional, hanya bila gejala muncul (12 commit)

| Repo | Isi | Kapan |
|---|---|---|
| `bionic` (7) | `81d13327e` SHIM libraries · `29425b71f` pre-P mutex · `d51393f91` per-process target SDK override · 2× hosts file · `7bdcdf399` switch jemalloc · `b73b342e8` revert scudo-free | blob gagal link/mutex deadlock. **Pengecualian:** `d51393f91` diverifikasi DULU saat M3 — `TARGET_PROCESS_SDK_VERSION_OVERRIDE` kita setel; jika mekanisme official tak mencakup sisi runtime-nya, commit ini naik kelas ke T1 |
| `external/jemalloc_new` (3) | tuning jemalloc | hanya bila `bionic` switch jemalloc diambil |
| `hardware/qcom-caf/wlan` (2) | `607daca` %llx format · `fc391a4` revert TSF fixup | bila build wcnss/wpa gagal di M4 |

### Opsional — fase RIL tersendiri (16 commit)

`frameworks/opt/telephony` (8: simactivation squash, dsb.) + `hardware/ril` (8: RIL
v6/v8/v9, IOem, overlayable headers, `9511fb3` allow board to provide libril).
RIL tetap **risiko terbuka** (PLAN §10.3-D); tidak masuk kriteria keberhasilan migrasi.

### Tambahan manifest — pin baru

| Path | Sumber | Revisi | Alasan |
|---|---|---|---|
| `device/qcom/sepolicy-legacy` | `LineageOS-UL/android_device_qcom_sepolicy` | SHA `470e8d88f1490b24bfe76aa17bd2ea57bcaa4c27` (branch `lineage-20.0-legacy`, 2021-12-11 — tak bergerak; pin SHA aman) | §1.2C; tidak ada di manifest official; dipakai `sepolicy.mk` device tree |

---

## 4. Komponen baru yang dibuat saat eksekusi

### 4.1 `A37-20-official.xml` (local manifest baru; draf penuh Lampiran B)

Isi: remote `gh` + `losul`; tiga repo proyek (device `lineage-20`, kernel
`lineage-20`, vendor `2e5c6f7`); tiga pin qcom-caf msm8916 (SHA tidak berubah);
pin sepolicy-legacy (§3). **Dihapus:** seluruh enam pin anti-hanyut (§0.2#4).
**Tidak dideklarasikan:** repo-repo yang ditambal — patch bekerja di atas checkout
official, bukan lewat manifest.

### 4.2 `tools/apply-official-patches.sh` (pengganti apply-legacy-patches.sh)

Desain (idempoten; pola sama dengan skrip lama yang teruji):

1. **A–F (T0)** lalu **G–Q (T1)** lalu **R–S (T2)**: untuk tiap repo, cek apakah
   subjek commit terakhir seri sudah ada (`git log --oneline -n | grep -F`); bila
   belum, `git am patches/official/<repo>/*.patch`; bila konflik: berhenti, cetak
   SOP (`git am -3` → selesaikan → `git am --continue` → perbarui patch di
   `patches/official/` dengan `git format-patch` ulang dari hasil).
2. **Langkah warisan yang diverifikasi dulu terhadap official** (bisa gugur):
   - revert libbfqio `8f67d055` — sudah termasuk seri vendor/lineage (commit `d4a23dfd`);
   - guard `hardware/qcom-caf/msm8916/Android.mk` (paritas, tetap dipasang);
   - HOSTCFLAGS generator kernel headers di `vendor/lineage/build/soong/Android.bp`
     — periksa apakah regresi `-fuse-ld=lld` (PLAN §8.1a) masih ada di vendor/lineage
     official; bila ya, pasang;
   - `-Wno-error=enum-enum-conversion` display CAF (repo pin kita tak berubah + clang 14)
     — hampir pasti tetap perlu;
   - **K**: buang 2 baris `sysfs_disk_stat` di
     `device/qcom/sepolicy-legacy/legacy-common/file_contexts` (sisi platform sudah
     bersih dari sananya — pemblokir 5.1b tidak akan terulang);
   - patch BT device (langkah 6+6b skrip lama) — verifikasi konteks di HEAD official.
3. **Penjaga regresi** versi official: `transport_legacy.cpp` ada; direktori
   `device1/` ada; `initializeDeviceInfo<DeviceInfo1>` ada; `GLES = 1` di RenderEngine.h;
   `TARGET_HAS_LEGACY_CAMERA_HAL1` dikenali vendor/lineage; freezer cgroup v1 di
   libprocessgroup; `dt_image.mk` ada; sepolicy-legacy bersih sysfs_disk_stat.

### 4.3 `patches/official/`

`patches/official/<repo>/0001-…patch` hasil `git format-patch --no-merges
<merge-base>..HEAD` dari fork UL (merge-base per tabel §1.3), plus
`patches/official/MANIFEST.md` berisi: asal SHA, merge-base, tanggal ekstraksi,
keputusan triase per commit (port/buang), dan catatan resolusi konflik bila ada.

---

## 5. Fase eksekusi

> Urutan linear; tiap fase punya kriteria keluar dan rollback. **Tidak ada rebuild
> otomatis — tiap fase build menunggu persetujuan.**

### M0 — Jaring pengaman & disk (prasyarat)
- [ ] Snapshot keadaan UL yang **terbukti jalan**: `repo manifest -r >
      ref/ul-tree-snapshot-20260806.xml`; SHA 37 fork UL via `repo forall -c
      'echo $REPO_PATH $(git rev-parse HEAD)'`; simpan di `ref/`.
- [ ] Pastikan state repo A37 ter-push (device `7938923`, kernel `8cc1519`, vendor
      `2e5c6f7` — sudah di GitHub; verifikasi `git status` bersih).
- [ ] Arsip `A37-20.xml` → `A37-20-ul.xml`.
- [ ] **Disk: sisa 40 GB tidak cukup.** Target ≥ 60 GB sebelum sync+build: kandidat
      pembersihan `~/.ccache`, `/root/a37-dl` (artefak lama), `ref/lineage-20.0-*-gt58wifi.zip`
      (616 MB; cara unduh ulang di PLAN Lampiran B), dan bila terpaksa `out/` (76 GB —
      berarti rebuild penuh). Keputusan pembersihan dilakukan bersama user.
- [ ] Simpan zip ROM UL terakhir yang jalan untuk uji banding/rollback flash.

**Rollback:** tidak ada perubahan tree di fase ini.

### M1 — Ekstraksi patch (masih di tree UL)
- [ ] Jalankan `git format-patch --no-merges <merge-base>..HEAD` per repo T0–T2 (+T3
      bila diputuskan ikut) → `patches/official/<repo>/`.
- [ ] Triage per commit sesuai §3 (buang: `a6cfe58e0` sysfs_disk_stat; opsional
      ditandai), tulis `patches/official/MANIFEST.md`.
- [ ] Hitung ulang jumlah patch = kolom "fungsional" tabel §1.3 (cek konsistensi).
- [ ] Bandingkan isi dengan `research/retiredtab/20/UL-patches-2024/` (checklist, §2.3).

**Kriteria keluar:** jumlah patch cocok tabel; MANIFEST.md lengkap. **Rollback:** hapus `patches/official/`.

### M2 — Ganti basis manifest
- [ ] `cp A37-20-official.xml .repo/local_manifests/A37-20.xml` (versi baru).
- [ ] `repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs`
- [ ] `repo sync -c -j8 --force-sync --no-clone-bundle` — **TANPA `--no-tags`**
      (remote aosp official juga dipin ke tag `android-13.0.0_r75`; jebakan yang sama,
      HANDOFF §5.1). `--force-sync` akan menimpa checkout UL + commit lokal (sudah
      diarsip di M0/M1 — memang dimaksudkan).
- [ ] Integritas: `repo forall -c 'git rev-parse --verify HEAD >/dev/null || pwd'` →
      nol HEAD kosong; `device/oppo/A37` tetap `7938923` dst.

**Kriteria keluar:** tree sehat di basis official. **Rollback:** `repo init -u
LineageOS-UL/android` + sync ulang (objek UL masih ada di `.git` tiap project — hemat).

### M3 — Terapkan patch legacy
- [ ] Jalankan `tools/apply-official-patches.sh` (§4.2). Setiap konflik diselesaikan
      per SOP skrip; resolusi di-commit balik ke `patches/official/`.
- [ ] Verifikasi tiga item §4.2 langkah warisan terhadap HEAD official
      (HOSTCFLAGS, enum-enum, konteks patch BT).
- [ ] Semua penjaga regresi hijau.

**Kriteria keluar:** skrip exit 0 + seluruh penjaga lolos. **Rollback:** `repo sync`
ulang per project (patch hilang, bisa diterap ulang — idempoten).

### M4 — Build bertahap (setiap sub-langkah menunggu persetujuan)
- [ ] `m nothing` (kati menerima tree).
- [ ] `m selinux_policy` (Fase 5 pola lama; kali ini tanpa pemblokir sysfs_disk_stat
      sisi platform — diverifikasi, bukan diasumsikan).
- [ ] Modul sasaran: `adbd` (transport_legacy), `libcameraservice` (HAL1), `netd`,
      `wcnss_service` + `libwcnss_qmi`, `hwcomposer.msm8916` (libbfqio),
      `android.hardware.audio@6.0-impl`, `android.hardware.drm@1.4-service.clearkey`.
- [ ] `m bacon` → `tools/verify-rom.sh` LOLOS (properti sdk 33, zygote32, 320 blob,
      lokasi sepolicy, adbd legacy, boot.img dt_size 210944).

**Kriteria keluar:** zip lolos verify-rom. Pemblokir baru (pasti ada beberapa)
didokumentasikan ke dokumen ini sebagai §5.x seperti pola PLAN §8.1a–d.

### M5 — Uji paritas di perangkat
- [ ] Flash; protokol `tools/test-device.sh` + manual M1–M17 (PLAN §10b).
- [ ] **Matriks paritas** terhadap build UL terakhir yang jalan (baseline:
      boot ✅ · Wi-Fi ✅ · kamera ✅ · BT ON ✅ (connect/inquiry §10.6 masih uji) ·
      volume ✅ · sensor ✅ · audio ✅ · charging control ✅ · RIL ❌ terbuka):
      setiap komponen harus **≥ status baseline**; regresi = pemblokir rilis.
- [ ] Bukti tujuan migrasi: `ro.build.version.security_patch` **> 2025-03-01**.
- [ ] Matikan `WITH_ADB_INSECURE` sebelum zip dirilis (HANDOFF §9.3).

### M6 — Opsional: RIL
Hanya setelah M5 paritas. Port T-RIL (`frameworks/opt/telephony` 8 + `hardware/ril`
8 commit), uji terpisah, tetap berstatus risiko terbuka.

---

## 6. Risiko migrasi ini

| # | Risiko | Dampak | Mitigasi |
|---|---|---|---|
| 1 | **Konflik `git am` di `frameworks/base`** — official +144 commit ASB sejak UL fork; patch kamera/freezer UL bisa bentrok | port gagal per commit | `git am -3` per commit; resolusi disimpan balik ke `patches/official/`; **fallback terakhir per-repo**: pin fork UL hanya untuk repo itu (Opsi B parsial) — dicatat sebagai penyimpangan |
| 2 | **Konsistensi cabang official tanpa device legacy** — LOS tak lagi membangun msm8916 di lineage-20.0; asumsi "satu set konsisten" diverifikasi build kita sendiri, bukan CI mereka | kejutan di M4 | build bertahap M4; pin lama dihapus dulu, dipasang ulang hanya bila terbukti putus (kebijakan §2.7 PLAN) |
| 3 | Patch device kita (BT opcode/scan, `0345221` init usb) bertemu konteks upstream baru | patch gagal terap | M3 memverifikasi konteks sebelum terap; fallback manual |
| 4 | Wi-Fi/BT regresi vs baseline (modul Wifi official +4 commit, BT +21) | fitur yang sudah jalan mundur | matriks paritas M5; rollback flash zip UL tersimpan |
| 5 | **Disk 40 GB** — sync + rebuild butuh ruang | gagal build 95% | M0 eksplisit |
| 6 | Waktu: siklus sync→patch→build→flash berulang | — | patch tersimpan permanen; tiap iterasi menambah data, bukan mengulang |
| 7 | Kode legacy yang di-port tetaplah kode lama (kamera HAL1, dsb.) | permukaan keamanan komponen itu tak berubah dari UL | diterima — yang naik kelas adalah platform di sekelilingnya (§2.1) |

---

## 7. Yang sengaja TIDAK dikerjakan di migrasi ini

| Item | Alasan |
|---|---|
| Pin fork UL sebagai strategi utama | §2.2 — menggugurkan tujuan keamanan |
| Patch retiredtab `UL-patches-2024` dipakai langsung | §2.3 — basisnya UL, bukan official |
| Port NFC / LatinIME / jemalloc / qcom non-CAF / msm8974 / qcom power / external-connectivity / dtbtool repo | §1.5 — diverifikasi tak dikonsumsi build A37 |
| RIL sebelum paritas tercapai | risiko terbuka (PLAN §10.3-D) |
| Naik ke lineage-21/22 | proyek lain; migrasi ini menstabilkan 20 di basis yang masih ditambal dulu |
| Mengubah device tree / kernel / blob | tidak ada delta kebutuhan — seluruh perbaikan 10.A–10.F tidak bergantung pada asal basis userspace |

---

## Lampiran A — Perintah yang mereproduksi data dokumen ini

```bash
# A.1 Status branch official (data §0.1/§1.1)
git clone -q --depth 100 -b lineage-20.0 https://github.com/LineageOS/android.git /tmp/los-manifest
git -C /tmp/los-manifest log --date=short --pretty="%h %ad %s" | head -25

# A.2 Pemetaan fork UL → manifest official (data §1.2)
for p in art bionic frameworks/av frameworks/base ...; do   # daftar lengkap di losul.xml
  grep -E "path=\"$p\"" /tmp/los-manifest/default.xml /tmp/los-manifest/snippets/*.xml
done

# A.3 Pengukuran delta (data §1.3) — skrip permanen:
/root/a37-20/tools/measure-official-delta.sh        # butuh tree UL tersinkron di /root/los20

# A.4 Verifikasi flag (data §1.4)
cd /root/los20/vendor/lineage
git fetch -q https://github.com/LineageOS/android_vendor_lineage.git lineage-20.0
git grep -c TARGET_HAS_LEGACY_CAMERA_HAL1 FETCH_HEAD     # -> 0
git grep -c TARGET_HAS_LEGACY_CAMERA_HAL1 HEAD           # -> 1 (fork UL)
git ls-tree FETCH_HEAD build/tasks/                      # dt_image.mk ADA di official

# A.5 Repo yang hanya ada di UL (data §1.2C)
git ls-remote --heads https://github.com/LineageOS/android_device_qcom_sepolicy.git | grep lineage-20
# -> lineage-20.0 dan lineage-20.0-legacy-um saja; TIDAK ADA lineage-20.0-legacy

# A.6 Mengekstrak seri patch (fase M1)
cd /root/los20/frameworks/av
MB=$(git merge-base HEAD $(git rev-parse FETCH_HEAD))    # FETCH_HEAD = official hasil fetch
git format-patch --no-merges $MB..HEAD -o /root/a37-20/patches/official/frameworks_av/
```

## Lampiran B — Draf `A37-20-official.xml`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!--
  Local manifest — LineageOS 20 untuk OPPO A37, BASIS OFFICIAL:
      repo init -u https://github.com/LineageOS/android.git -b lineage-20.0
  Fungsi legacy UL diterapkan tools/apply-official-patches.sh dari patches/official/,
  BUKAN lewat pin fork. Enam pin anti-hanyut versi lama DIHAPUS (akar masalahnya,
  campuran UL-beku x official-bergerak, tidak ada lagi).
  Validasi dulu: python3 -c "import xml.etree.ElementTree as E;E.parse('A37-20-official.xml')"
-->
<manifest>
  <remote name="gh" fetch="https://github.com/" />
  <remote name="losul" fetch="https://github.com/LineageOS-UL/" />

  <!-- Repo proyek (tidak berubah dari A37-20.xml lama) -->
  <project name="rigaz29/rb_device_oppo_A37" path="device/oppo/A37"
           remote="gh" revision="refs/heads/lineage-20" upstream="lineage-20" />
  <project name="rigaz29/kernel_oppo_msm8939" path="kernel/oppo/msm8939"
           remote="gh" revision="refs/heads/lineage-20" upstream="lineage-20" />
  <project name="rigaz29/rb-vendor_oppo_A37" path="vendor/oppo"
           remote="gh" revision="2e5c6f7ffcccbbf1430f8fa13fc530e1cae5feab"
           upstream="lineage-18.1" />

  <!-- qcom-caf msm8916: tetap branch 19.0-caf, SHA tidak berubah -->
  <project name="LineageOS/android_hardware_qcom_audio" path="hardware/qcom-caf/msm8916/audio"
           remote="gh" revision="e0e79d6281d55c4f0c93ec7d471d4554281a796b"
           upstream="lineage-19.0-caf-msm8916" />
  <project name="LineageOS/android_hardware_qcom_display" path="hardware/qcom-caf/msm8916/display"
           remote="gh" revision="984ff8f2142912cd682de872db3643843e3cb075"
           upstream="lineage-19.0-caf-msm8916" />
  <project name="LineageOS/android_hardware_qcom_media" path="hardware/qcom-caf/msm8916/media"
           remote="gh" revision="bf62f596b10d39caf9c4208ce767a7deed662a1c"
           upstream="lineage-19.0-caf-msm8916" />

  <!-- SATU-SATUNYA pin UL: sepolicy-legacy tidak ada di manifest official -->
  <project name="LineageOS-UL/android_device_qcom_sepolicy" path="device/qcom/sepolicy-legacy"
           remote="losul" revision="470e8d88f1490b24bfe76aa17bd2ea57bcaa4c27"
           upstream="lineage-20.0-legacy" />
</manifest>
```

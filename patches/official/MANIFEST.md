# MANIFEST — patches/official (Fase M1, 6 Agustus 2026)

Seri patch legacy hasil ekstraksi delta **LineageOS-UL ↔ official lineage-20.0**,
diambil langsung dari fork UL yang checkout-nya terbukti menjalankan ROM A37
(boot + kamera + BT + Wi-Fi + volume). Ini adalah bahan baku
`tools/apply-official-patches.sh` (fase M3).

- Ekstraksi: `tools/extract-official-patches.sh` (idempoten; hasil ulang identik
  selama tree UL tidak berubah). Metadata per repo di `<repo>/.meta`
  (UL HEAD, official HEAD, merge-base, tanggal).
- Urutan aplikasi: **urutan nomor berkas** (0001 → NNNN) = urutan kronologis commit.
  Disarankan `git am`; fallback `git am -3` (SOP konflik: PLAN-OFFICIAL §4.2).
- Cross-check independen: set patch retiredtab `20/UL-patches-2024` punya jumlah
  subjek **identik** untuk `frameworks/av` (45) dan `frameworks/base` (29), dan
  subjek-subjek kuncinya (audio 2.0 HAL, HALv1 [1/2], mediaserver, SCO, in-call)
  berada di nomor yang sama — isi ekstraksi kita terverifikasi setara.

## Ringkasan per tier

| Tier | Repo | Patch | Catatan |
|---|---|--:|---|
| T0 | `packages_modules_adb` | 1 | FunctionFS legacy (Gerrit 326385) |
| T0 | `art` | 1 | gerbang memfd_create |
| T0 | `system_bpf` | 2 | gerbang eBPF kernel < 4.9 |
| T0 | `external_perfetto` | 1 | gerbang memfd_create |
| T0 | `frameworks_libs_net` | 1 | BpfMap isValid non-fatal |
| T0 | `packages_modules_NetworkStack` | 2 | TCP info opt-out + revert netlink-T |
| T1 | `vendor_lineage` | 13 | revert flag legacy (HAL1, MEMFD_BACKPORT, dll.) + camera_in_mediaserver_defaults + **0013 = revert libbfqio kita (`d4a23dfd`)**. ⚠️ Seri sudah **diregenerasi pasca-M3** dari state teresolusi: konflik BoardConfigQcom/Soong+Android.bp diselesaikan keep-both, revert pahole dipulihkan manual |
| T1 | `system_core` | 4 | cgroupv2 gate, camera extensions, healthd, freezer v1 |
| T1 | `system_netd` | 3 | no-bpf + direct-connect routes |
| T1 | `packages_modules_Connectivity` | 4 | BPF-less ×3 + traffic indicators |
| T1 | `system_sepolicy` | **1** | ⚠️ Pasca-M3: dari 6 yang direncanakan, **5 sudah ada di upstream official** (terverifikasi `git apply --check -R`): recovery whitelist ×2, mediaprovider mlstrustedsubject, sdcard_posix_contextmount_type, adbd_config_prop exempt. Tersisa hanya LeGetVendorCapabilities |
| T1 | `device_lineage_sepolicy` | 2 | HAL1 sepolicy + qcom ultra legacy |
| T1 | `hardware_interfaces` | **4** | audio 2.0, revert BT-AIDL/binder-threadpool, vendor800 hwc. ⚠️ Pasca-M3: **keymasterV4 FBE wrapped key sudah ada di upstream** (7 match TAG_WRAPPED_KEY) → tidak di-port |
| T1 | `frameworks_native` | 21 | tweak SF/binder UL — port utuh |
| T1 | `packages_modules_Wifi` | 1 | mWifiLinkLayerStatsSupported |
| T1 | `packages_modules_Bluetooth` | 1 | toleransi le_set_event_mask. ⚠️ Dua patch device kita (opcode vendor OCF-only + standard inquiry scan) **tidak termasuk di sini** — dipasang terpisah oleh skrip apply |
| T2 | `frameworks_av` | **44** | 45 diekstrak, **1 dibuang** (lihat di bawah) |
| T2 | `frameworks_base` | 29 | termasuk 5 patch kosmetik (lihat di bawah) |
| T3 | `bionic` | 7 | kondisional — ⚠️ `0002`/`d51393f91` (per-process target SDK override) diverifikasi dulu terhadap `TARGET_PROCESS_SDK_VERSION_OVERRIDE` kita |
| T3 | `external_jemalloc_new` | 3 | hanya bila bionic switch jemalloc diambil |
| T3 | `hardware_qcom-caf_wlan` | 2 | hanya bila build wcnss/wpa gagal |

**Total pasca-M3: 135 patch terpasang (T0+T1+T2)**; T3 menambah 12 bila `--t3`
(diekstrak, belum dipakai).

## Hasil aplikasi M3 (7 Agustus 2026 — tree official)

Diterapkan lewat `tools/apply-official-patches.sh`; hasil akhir **rc=0, 11 penjaga
regresi hijau** (run verifikasi terakhir).

- **Konflik teresolusi** (vendor/lineage): `BoardConfigQcom.mk` (2 blok: soong
  rmnetctl + rantai VIDC — keep-both), `build/soong/Android.bp` (modul
  aapt_version_code/camera_override vs disable_postrender_cleanup — keep-both),
  `BoardConfigSoong.mk` (daftar variabel + assignment — keep-both alfabetis).
  Seri kemudian **diregenerasi** dari state teresolusi supaya reaplikasi pasca-sync
  bersih.
- **Patch yang hilang saat resolusi keep-both**: revert pahole — 3-way merge
  teresolusi kosong dan terlewat; dipulihkan manual (commit `456e238c`) dan masuk
  seri regenerasi.
- **Sudah ada di upstream official** (tidak perlu di-port, terverifikasi):
  5 patch system/sepolicy + keymasterV4 FBE wrapped key tag (hardware/interfaces).
- **HOSTCFLAGS generator**: cmd soong official berubah format (ada
  `KERNEL_MAKE_CMD`/`-C`/`ARCH`) — sed lama gagal; pola skrip diperbarui mengikuti
  format official.
- **Bug idempotensi skrip** (ditemukan saat M3): baris `Subject:` patch terlipat
  (RFC-2822 folding) sehingga cek subjek terpotong dan seri diterapkan dua kali;
  diperbaiki dengan `git mailinfo` (unfolding).

## Perubahan M4 (7 Agustus 2026)

- **Seri `vendor_lineage` diregenerasi ulang (M4.1a)**: korupsi warisan keep-both
  di `build/soong/Android.bp` (penutup blok `qti_vibrator_hal_defaults` + header
  `soong_config_module_type` stagefright tertelan) diperbaiki dan dilipat ke
  commit aslinya; SHA baru `977058d5..69d8465e` (pahole kini `69d8465e`). Hunk
  HOSTCFLAGS kini ikut di `0008` — langkah sed skrip tetap idempoten (grep dulu,
  skip bila sudah ada).
- **`hardware_qcom-caf_wlan` DIPROMOSIKAN ke seri wajib (M4.4a)**: `m bacon` gagal
  `-Werror=format` tanpa kedua patch (u64 vs `%lu`,
  `driver_cmd_nl80211.c:2835/5704`) — kondisi T3 PLAN-OFFICIAL §3 terbukti.
  Dipindah dari opt-in `--t3` ke SERIES di `tools/apply-official-patches.sh`.
  bionic/jemalloc tetap opt-in.

## Yang dibuang saat triase (jangan dikembalikan tanpa alasan baru)

| Berkas | Commit | Alasan |
|---|---|---|
| ~~`system_sepolicy/0006-Fix-storaged-access-…`~~ | `a6cfe58e0` | Menambah tipe `sysfs_disk_stat` — di official tipe ini tak pernah ada; menghidupkannya mengulangi pemblokir 5.1b/5.1d PLAN lama. Sisi `sepolicy-legacy` ditangani langkah K skrip apply |
| ~~`frameworks_av/0045-Enable-legacy-adaptive-playback-…`~~ | `e456007ebf` | Ber-gerbang `TARGET_USES_QCOM_BSP_LEGACY` yang **tidak kita setel** — kode mati, hanya menambah permukaan konflik |

## Ditandai kosmetik — ikut dipasang demi paritas 1:1, BOLEH DIBUANG bila konflik

`frameworks_base/`: `0016` hapus dialog target SDK · `0017` kurva brightness slider ·
`0022` stretch effect · `0023` ripple PATTERNED · `0029` batterysaver night mode.

## Yang sengaja tidak diekstrak

- **RIL** (`frameworks/opt/telephony` 8 + `hardware/ril` 8) — fase M6, hanya setelah
  paritas M5 tercapai.
- 9 fork yang diverifikasi tidak dikonsumsi build A37 (PLAN-OFFICIAL §1.5): NFC ×2,
  LatinIME, jemalloc (kecuali T3), qcom non-CAF, msm8974 ×3, qcom power,
  external/connectivity, dtbtool.

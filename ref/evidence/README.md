# ref/evidence — hasil bedah ROM LineageOS 20 yang TERBUKTI BOOT di msm8916

Sumber: `lineage-20.0-20260505-UNOFFICIAL-gt58wifi.zip` (616 MB, retiredtab, SourceForge)
Device: Samsung Galaxy Tab A 8.0 (SM-T350 / gt58wifi) — **msm8916, kernel 3.10.108**
`post-sdk-level=33`, security patch 2026-05-01, dibangun 4 Mei 2026.

**Beda device dari A37, sama chipset dan sama versi kernel.** Karena itu berkas di sini
menjawab pertanyaan level *chipset* dan level *Android 13* — bukan pertanyaan level A37
(RIL, kamera A37, panel, sensor). Tablet ini Wi-Fi-only: **RIL tidak terjawab di sini.**

| Berkas | Isinya |
|---|---|
| `system-build.prop`, `vendor-build.prop` | properti ROM A13 msm8916 yang jalan |
| `vendor-vintf-manifest.xml` | matriks HAL terbukti: sepolicy 33.0, audio@2.0, camera.provider@2.4 |
| `vendor-compat-matrix.xml` | compatibility matrix device |
| `ramdisk-fstab.qcom` | fstab first-stage — perhatikan: **tanpa `encryptable=`** |
| `vendor-init/` | `init*.rc` dari ROM yang boot |
| `selinux-list/` | daftar berkas sepolicy + lokasinya |
| `boot-header.txt` | geometri boot.img (identik dengan A37) |

Kernel: `Linux version 3.10.108 (gcc 4.9.x) #39 SMP PREEMPT` — zImage **32-bit ARM**
(A37 memakai arm64). `CONFIG_IKCONFIG` mati, jadi `.config` TIDAK bisa diekstrak dari
boot.img; baca `retiredtab/android_kernel_samsung_msm8916` `lineage-20.0`
`arch/arm/configs/msm8916_sec_defconfig` sebagai gantinya.

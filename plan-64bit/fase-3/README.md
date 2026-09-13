# Fase 3 — kernel naik ke `lineage-24`

Dikerjakan **13 September 2026**. **Selesai, terverifikasi sampai artefak
terbangun.**

---

## 1. Hasil

Kernel sudah ter-sync di `lineage-24` (`cb52394`) sejak pembangunan ulang pohon.
Satu perubahan ditambahkan di atasnya, di cabang baru **`lineage-20-64bit`**
(`b9d9d3fe700`): **spoof versi kernel dimatikan**.

```
Image           18.562.488 byte, Linux kernel ARM64 boot executable
galat           0
kernel.release  3.10.108-lineageos-gb9d9d3fe700   <- versi ASLI, tanpa awalan 3.17
System.map      utsname_spoofed: 0 kemunculan
```

Kenaikan `lineage-20` → `lineage-24` sendiri **nol perubahan sumber**: 399 commit
fast-forward murni, nol di belakang, dan `lineage-24` = `lineage-23` + 1 commit —
yaitu kernel yang sudah dipakai harian di ROM 23.2.

---

## 2. Keputusan: `CONFIG_ANDROID_TREBLE_SPOOF_KERNEL_VERSION` dimatikan

Rencana induk §2.1 menandainya "harus dinilai, bukan diterima begitu saja".
Dinilai dengan memeriksa **setiap konsumen `uname()` di enam proses yang disaringnya**:

| konsumen | dengan 3.10 | dengan 3.17 | berubah? |
|---|---|---|---|
| ART memfd | `patches/official/art/0001` mencabut pemeriksaannya **compile-time** lewat `HAS_MEMFD_BACKPORT`; `uname()` tak pernah dipanggil | idem | **tidak** |
| perfetto memfd | patch yang sama polanya, juga compile-time | idem | **tidak** |
| `bpfloader` | `isAtLeastKernelVersion(4,14)/(4,19)/(5,4)` → false | false | **tidak** |
| `init` → `ro.kernel.version` | `"3.10"` | `"3.17"` | properti berubah… |
| `init.rc:651-657` | cocok-persis `4.9/4.14/4.19/5.4` → tidak ada yang cocok | tidak ada yang cocok | **tidak** |
| `init` `LoadKernelModules` | `/lib/modules` tidak ada → dilewati | idem | **tidak** |
| `bootchart` | kosmetik | kosmetik | **tidak** |

Kernel ini tanpa `CONFIG_MODULES` (hanya disebut di komentar defconfig) dan ROM
tidak mengirim `/lib/modules` sama sekali, jadi jalur modul memang mati.

### Dan ia meleset dari sasaran utamanya di build 64-bit

Penyaring kernel mencocokkan `current->comm == "zygote"`. Tetapi
`frameworks/base/cmds/app_process/app_main.cpp:167` menamai zygote 64-bit
**`"zygote64"`** pada build `__LP64__`. Jadi zygote utama **tidak pernah
ter-spoof** — mekanisme itu memang ditulis untuk ROM 32-bit.

### Yang tersisa hanyalah ongkosnya

`ro.kernel.version` melaporkan 3.17 padahal kernelnya 3.10. Proyek ini sudah
beberapa kali tertipu informasi yang menyesatkan (`HANDOFF.md` §7); tidak perlu
menambah satu lagi demi nol keuntungan.

**Nyalakan lagi hanya kalau ada konsumen baru yang terbukti menuntutnya.**
Alasannya ditulis lengkap di dalam defconfig, bukan hanya di sini.

---

## 3. Ikut dibereskan: komentar `Image-dtb` yang menyesatkan

Ekor defconfig `lineage-24` memuat blok komentar yang menjelaskan kenapa DTB
ditempelkan ke `Image`. Konfigurasinya sendiri **sudah di-revert hulu**
(`e1a4070`), dan alasannya khusus Android 16 yang `mkbootimg`-nya membuang opsi
`--dt`. LOS 20 memakai tabel DT terpisah lewat `dtbtool` di device tree.

Komentar yang menjelaskan konfigurasi yang tidak aktif lebih berbahaya daripada
tidak ada komentar — dibuang, dan diganti catatan singkat kenapa.

Diverifikasi: `CONFIG_ARM64_APPENDED_DTB` **tidak ada** di `.config` hasil.

---

## 4. Penjaga

```
make ARCH=arm64 lineageos_a37f_defconfig                       rc=0
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"      ADA   (WAJIB: LOS 20 pakai VNDK)
CONFIG_ANDROID_TREBLE_SPOOF_KERNEL_VERSION                     TIDAK ADA
CONFIG_ARM64_APPENDED_DTB                                      TIDAK ADA
PSI / WIREGUARD / RADIO_IRIS / F2FS_FS_ENCRYPTION / ADIANTUM / LOG_BUF_SHIFT=19   utuh

make -j12 ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- Image
  -> 0 galat, Image 18.562.488 byte
  -> kernel.release 3.10.108-lineageos-gb9d9d3fe700
  -> System.map: utsname_spoofed 0 kemunculan
```

Penjaga `vndbinder` ada karena commit `13807b6` di `lineage-24` sempat
melepaskannya (dan sudah di-revert `80535ab`). Kalau kelak seseorang menariknya
kembali, LOS 20 akan kehilangan domain binder vendor tanpa pesan yang jelas.

⚠️ **Satu jebakan saat membangun kernel berdiri sendiri:**
`TARGET_KERNEL_ADDITIONAL_FLAGS` di `BoardConfig.mk:279` memuat
`HOSTCFLAGS="-fuse-ld=lld ..."`. Di luar build ROM, `lld` tidak ada di `PATH` dan
gcc host gagal dengan `collect2: fatal error: cannot find 'ld'`. Flag itu hanya
bermakna **di dalam** build ROM (yang menyediakan clang/lld dari `prebuilts/`).
Untuk pemeriksaan berdiri sendiri, buang flag itu.

---

## 5. Yang belum

~~**Cabang kernel belum di-push.**~~ **Sudah di-push 13 Sep 2026:**
`gh/lineage-20-64bit` @ `b9d9d3fe700`. `A37-20-64bit.xml` sudah menunjuk ke sana,
dan ketiga project kunci diverifikasi HEAD-lokal = revisi-manifest, jadi
`repo sync` aman:

```
device/oppo/A37       700a8d0d4c  COCOK
kernel/oppo/msm8939   b9d9d3fe70  COCOK
vendor/oppo           8dcc8a9812  COCOK
```

Cabang `lineage-24` (`cb52394`) tidak bergerak.

**Kernel belum diuji di perangkat.** Batas §8 `HANDOFF.md` berlaku penuh: hanya
pemilik A37 yang bisa membuktikannya. Yang dibuktikan di sini hanya bahwa ia
terkompilasi dan melaporkan versi yang benar.

---

## 6. Berkas

```
0001-A37-matikan-spoof-versi-kernel-untuk-LineageOS-20.patch
```

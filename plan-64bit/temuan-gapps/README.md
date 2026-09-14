# MindTheGapps arm64 ditolak TWRP — dua penghalang

Diperiksa **14 September 2026** atas laporan pemilik perangkat. Paket:
`MindTheGapps-13.0.0-arm64-20231025_200931.zip` (385 MB), ROM
`20260914_140455`.

**Belum diperbaiki.** Dokumen ini diagnosis.

---

## 0. ROM-nya tidak bersalah

Semua prasyarat sisi ROM **cocok**, diperiksa satu per satu dengan mount
read-only di TWRP:

| yang diperiksa installer | hasil |
|---|---|
| SDK (`version=33` vs `ro.build.version.sdk`) | **33 = 33** ✓ |
| tata letak `SYSTEM_OUT="${SYSTEM_MNT}/system"` | ROM ini **system-as-root**, `build.prop` persis di sana ✓ |
| ruang partisi system | **925 MB bebas** dari 2,6 GB ✓ |
| `product` / `system_ext` simlink | ✓ — installer memang menanganinya (baris 209-215) |

Jadi yang menghalangi ada di **recovery**, bukan di ROM.

---

## 1. Penghalang pertama: TWRP 32-bit

`META-INF/com/google/android/update-binary` baris 131-135:

```sh
GAPPS_ARCH=$(getprop2 $TMP/build.prop arch)   # arm64, dari paket
CPU_ARCH=$(getprop ro.bionic.arch)            # dari RECOVERY, bukan dari ROM
if [ $GAPPS_ARCH != $CPU_ARCH ]; then
  error "This package is built for $GAPPS_ARCH but your device is $CPU_ARCH! Aborting"
fi
```

Terbaca di TWRP perangkat ini:

```
ro.bionic.arch        : arm
ro.product.cpu.abi    : armeabi-v7a
/system/bin/unzip     : ELF kelas 01 (32-bit)
```

TWRP yang dipakai adalah recovery **32-bit**, jadi perbandingannya
`arm64 != arm` dan installer berhenti. **ROM-nya sendiri benar-benar arm64** —
`ro.product.cpu.abi=arm64-v8a` terverifikasi di sistem yang berjalan.

Dua catatan yang mempersempit masalahnya:

- `GAPPS_ARCH` dan `CPU_ARCH` **hanya** dipakai di perbandingan itu. Tidak ada
  apa pun di hilir yang bergantung padanya.
- `setprop ro.bionic.arch arm64` **ditolak** (`Failed to set property`), karena
  properti `ro.` tidak bisa ditimpa setelah disetel.
- Kernel recovery-nya sendiri **sanggup menjalankan biner 64-bit**: `toybox`
  arm64 bawaan paket diuji dan berjalan (`exit=0`). Jadi yang 32-bit hanyalah
  userspace TWRP.

---

## 2. Penghalang kedua: `/tmp` adalah RAM, dan paketnya terlalu besar

Ini lebih menentukan, dan tidak akan hilang walaupun penghalang pertama
dilewati.

Installer baris 123-125:

```sh
TMP=/tmp
cd "$TMP"
unzip -o "$ZIP"
```

Ukuran paket setelah diekstrak: **950.295.614 byte (906 MiB), 42 berkas.**

Dan `/tmp` di TWRP ini berada di **rootfs**, yaitu ramdisk:

```
mount | grep " / "   ->   rootfs on / type rootfs (rw,seclabel)
```

Diukur, bukan dikira: menulis 400 MB ke `/tmp` memakan **tepat 401 MB RAM**,
dan RAM kembali setelah berkasnya dihapus.

```
RAM bebas awal                      908 MB
setelah tulis 400 MB ke /tmp        507 MB
setelah dihapus                     907 MB
```

Jadi ruang ekstraksi yang tersedia ≈ **907 MB**, sementara yang dibutuhkan
**950 MB** — kurang sekitar 43 MB sebelum memperhitungkan RAM yang dipakai
proses installer sendiri.

Catatan: `unzip -o "$ZIP"` **tidak diperiksa hasilnya** oleh skrip (tidak ada
`set -e` maupun cek `$?`), jadi kegagalan ekstraksi tidak menghentikan skrip —
ia lanjut ke pemeriksaan arsitektur dan berhenti di sana. Itu sebabnya yang
terlihat pemilik perangkat adalah pesan arsitektur, bukan pesan kehabisan ruang.

---

## 3. Jalan keluar

| | cara | menutup | catatan |
|---|---|---|---|
| **A** | Bangun **TWRP 64-bit** | penghalang 1 | perbaikan yang benar untuk jangka panjang; tidak menyentuh penghalang 2 |
| **B** | Paket GApps yang lebih kecil (mis. NikGApps core) | mungkin keduanya | perlu diperiksa apakah installer-nya juga membaca properti recovery |
| **C** | Jalankan installer secara manual lewat adb dengan `TMP` diarahkan ke `/data` dan pemeriksaan arsitektur dilewati | keduanya | `/data` punya ruang berlimpah; `$TMP` hanya dipakai sebagai area kerja. Tetapi ini installer yang ditambal tangan, dan kegagalan di tengah jalan meninggalkan `/system` separuh berubah |

Yang paling masuk akal: **C** untuk sekarang, **A** kalau GApps akan sering
dipasang ulang.

Apa pun yang dipilih, cadangkan `/system` lewat TWRP lebih dulu — memasang
GApps mengubah partisi itu, dan mem-flash ulang ROM akan menghapusnya lagi.

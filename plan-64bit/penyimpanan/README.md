# sdcardfs dan FUSE passthrough di A37

Diperiksa **15 September 2026**, ROM `20260915_003358`, kernel
`lineage-20-64bit` (3.10.108).

---

## Jawaban singkat

| | kernel | dipakai ROM |
|---|---|---|
| **sdcardfs** | ✅ ada dan dibangun | ❌ **sengaja tidak dipakai** |
| **FUSE passthrough** | ❌ **tidak ada sama sekali** | — |
| FUSE biasa | ✅ | ✅ inilah jalur utamanya |
| FUSE *shortcircuit* (Qualcomm) | ✅ ikut dibangun | ❌ tidak aktif |

---

## 1. sdcardfs — ada, tapi mati atas kemauan sendiri

Kernel jelas mendukungnya:

```
defconfig:694   CONFIG_SDCARD_FS=y
fs/sdcardfs/    9 berkas .c
/proc/filesystems   nodev   sdcardfs      <- terdaftar di perangkat
```

Tetapi **nol mount**, dan itu disengaja:

```
persist.sys.fuse                    true
external_storage.sdcardfs.enabled   0
```

Keputusannya sudah tercatat di `device.mk:890-900`: `ro.sys.sdcardfs=true` era
LOS 18.1 dibuang karena sejak Android 12 sakelarnya berganti nama menjadi
`external_storage.sdcardfs.enabled`, dan ROM rujukan menyetelnya `0`.

Itu pilihan yang benar. AOSP berhenti memakai sdcardfs setelah Android 10;
sdcardfs perangkat ini sendiri berhenti diperbarui di Oktober 2018. Memakainya
di Android 13 berarti melawan arus framework.

## 2. FUSE passthrough — tidak ada

Dicari dengan empat penanda hulu Android, semuanya **nol berkas**:

```
fuse_passthrough.c      0
FUSE_PASSTHROUGH        0
fuse_passthrough_open   0
FOPEN_PASSTHROUGH       0

isi fs/fuse/:  control.c cuse.c dev.c dir.c file.c inode.c shortcircuit.c
```

Dan propertinya kosong di perangkat: `ro.fuse.passthrough` maupun
`persist.sys.fuse.passthrough` tidak disetel.

Wajar: FUSE passthrough baru masuk kernel Android 5.4+, sementara ini 3.10.

### `shortcircuit.c` — pendahulu Qualcomm, tetapi inert

Menariknya kernel ini membawa `shortcircuit.c`, mekanisme Qualcomm yang
mendahului passthrough. Ia **ikut dibangun tanpa syarat**
(`fs/fuse/Makefile:8` memuatnya di `fuse-objs`) dan dipanggil 4 kali di
`file.c`.

Tetapi ia butuh daemon FUSE yang bicara protokol itu, sedangkan Android 13
memakai `FuseDaemon` milik MediaProvider yang tidak mengenalnya. Jadi kodenya
ada, jalurnya tidak pernah dipakai.

## 3. Yang sebenarnya menggantikan passthrough di sini

Android 11+ tidak mengandalkan passthrough untuk direktori privat aplikasi —
ia **bind-mount f2fs mentah** langsung di atas jalur FUSE. Terlihat di tabel
mount perangkat:

```
/dev/block/mmcblk0p38 on /storage/emulated/0/Android/data type f2fs
/dev/block/mmcblk0p38 on /storage/emulated/0/Android/obb  type f2fs
```

Jadi I/O aplikasi ke direktori miliknya sendiri **sudah melewati FUSE
sepenuhnya**. Yang tersisa lewat FUSE hanyalah akses umum ke
`/storage/emulated/0`.

## 4. Ongkos FUSE-nya kecil di perangkat ini

Tulis 48 MB dengan `conv=fsync`:

| jalur | lapisan | waktu | laju |
|---|---|---|---|
| `/storage/emulated/0` | FUSE | 1714 ms | **28 MB/s** |
| `/storage/emulated/0/Android/data` | f2fs bind | 1513 ms | **31 MB/s** |

Selisihnya hanya **~12%**, karena yang membatasi adalah **eMMC-nya sendiri
(~30 MB/s)**, bukan FUSE.

Artinya: seandainya FUSE passthrough tersedia, keuntungannya di perangkat ini
kecil untuk I/O berurutan. Ia baru terasa pada operasi banyak berkas kecil,
tempat ongkos per-panggilan FUSE menumpuk — dan itu belum diukur di sini.

## Kesimpulan

Tidak ada yang perlu diperbaiki. sdcardfs tersedia tetapi memang tidak
seharusnya dipakai di Android 13, passthrough tidak mungkin ada di kernel 3.10,
dan celah yang ditinggalkannya sudah ditutup bind mount `/Android/data` dan
`/Android/obb` — ditambah kenyataan bahwa eMMC-lah hambatan sesungguhnya.

# Fase 6 — build penuh

Dikerjakan **13 September 2026**. **ROM 64-bit pertama terbangun, dan seluruh
verifikasi lolos.**

---

## 1. Hasil

```
m -j10 bacon        build completed successfully (01:42:25)
zip                 lineage-20.0-20260913_180619-UNOFFICIAL-A37.zip
                    755.631.152 byte (721 MB)
boot.img            20.289.536 byte      dt.img  210.944 byte
isi system          1.809.304.603 byte = 1725 MB
verify-rom.sh       SEMUA VERIFIKASI LOLOS
```

---

## 2. Kekhawatiran terbesar rencana: terbantah untuk kedua kalinya

`plan-64bit/README.md` proyek 23.2 §4.2 memperkirakan build 64-bit membengkak ke
**2.310–2.590 MB**, menyisakan margin **130–400 MB** dari partisi 2.727 MB, dan
menandainya risiko "sedang" yang bisa menggagalkan build di akhir.

| | |
|---|---|
| Perkiraan | 2.310–2.590 MB, sisa 130–400 MB |
| **Nyatanya** | **1.725 MB, sisa 1.001 MB** |

Bahkan **lebih kecil** daripada ROM **32-bit** LOS 23.2 (1.849 MB) — karena
Android 13 memang jauh lebih ramping daripada Android 16. Perkiraan itu memakai
basis yang salah: ia mengukur pertumbuhan dari LOS 23.2, bukan dari LOS 20.

Ini kekhawatiran besar kedua yang gugur. Yang pertama overhead RAM 20–30 %,
terbantah jadi 1,5 % oleh fase-5 proyek 23.2.

---

## 3. Pemblokir: patch wlan kita sendiri, arch-dependent dan terbalik

Build pertama gagal — dan bukan karena memori:

```
driver_cmd_nl80211.c:2835:6: error: format specifies type 'unsigned long long'
  but the argument has type 'u64' (aka 'unsigned long') [-Werror,-Wformat]
driver_cmd_nl80211.c:5704:39 dan :50   idem
```

Sebabnya **kedua patch wlan kita sendiri**: `0001` mengubah `%lx`→`%llx` dan
`0002` `%lul`→`%llu`. Keduanya benar untuk ARM 32-bit, tempat `u64` adalah
`unsigned long long` — dan **terbalik** di arm64, tempat `u64` adalah
`unsigned long`.

Ini pola yang sama dengan pin Mms di uji pin: **perbaikan yang berubah menjadi
penyebab ketika basisnya berubah.** Bedanya, di sini yang berubah arsitekturnya.

Perbaikannya patch `0003`: **cast argumennya**, bukan mengubah format specifier
lagi — dengan begitu benar di kedua arsitektur dan seri `0001`/`0002` tidak perlu
dibongkar. Cakupan dipastikan lengkap: `grep '%ll[uxd]'` pada berkas itu
menghasilkan tepat 2 situs, cocok dengan tiga posisi yang dilaporkan kompilator.

---

## 4. Penjaga `verify-rom.sh`

```
build.prop      sdk 33 · ebpf.supported=false · low_ram · casefold=0 · sdcardfs=0
                treble=false · ro.zygote=zygote64_32 · vndk.version=current
blob vendor     389 blob lengkap di image
sepolicy        /sepolicy monolitik di ramdisk · plat_sepolicy.cil · precompiled_sepolicy
adbd            jalur legacy FunctionFS termuat
boot.img        pagesize 2048 · kernel_addr 0x80008000 · dt_size 210944 (= referensi)

arsitektur (baru, Fase 6)
  system/vendor/lib64   210 pustaka, semuanya ELF 64-bit aarch64
  system/vendor/lib     320 pustaka, semuanya ELF 32-bit ARM
  rild                                          32-bit
  android.hardware.camera.provider@2.4-service  32-bit
  mm-qcamera-daemon                             32-bit
  pustaka vendor hanya-64-bit: 45 (info)

ukuran (baru, Fase 6)
  isi system 1725 MB dari 2727 MB — sisa 1001 MB
```

**Dua penjaga verifier ternyata usang dan diperbaiki di fase ini:**

1. `ro.zygote` masih diharapkan `zygote32` — warisan era 32-bit. Diubah ke
   `zygote64_32` sesuai keputusan Fase 2.
2. Penjaga ukuran mencari `system.img`, padahal build ini menghasilkan
   `system.new.dat.br` (OTA berbasis blok) dan tidak pernah membuat `system.img`.
   Diubah mengukur **pohon `system/`** — itu justru ukuran yang benar, karena
   `.dat.br` sudah terkompresi dan tidak sebanding dengan batas partisi.

---

## 5. Disk: nyaris gagal, dan apa yang menyelamatkannya

Build mulai dengan 62 GB bebas dan **turun sampai 3,6 GB** saat pengemasan —
tahap `add_img_to_target_files` menyalin seluruh pohon system lalu mengemasnya.

Yang dibebaskan, urut saat dibutuhkan:

| Saat | Tindakan | Didapat |
|---|---|---|
| 74 % | klon sementara + `ccache -C` + klon vendor kerja | +5 GB |
| 97 % | `out/target/product/A37/symbols` (hanya ditulis, tidak dibaca build, tidak ikut zip) | +5,5 GB |
| pengemasan, sisa 3,6 GB | **`.repo/project-objects/platform`** (objek git AOSP) | **+43 GB** |

Yang terakhir itu keputusan yang diperiksa dulu, bukan panik: seluruh repo yang
kita patch memakai objek di `LineageOS/` atau `rigaz29/`, **bukan** `platform/` —
diverifikasi lewat `alternates` masing-masing project sebelum dihapus. Contoh:
`build/soong` → `LineageOS/android_build_soong.git`,
`hardware/ril` → `LineageOS/android_hardware_ril.git`.

⚠️ **Konsekuensinya nyata:** `repo sync` berikutnya harus mengunduh ulang objek
AOSP. Itu ongkos bandwidth, bukan kerusakan — dan jauh lebih murah daripada
kehilangan build 1 jam 42 menit.

---

## 6. `-j10` dan aturan OOM

Atas permintaan pengguna build dijalankan `-j10`, bukan `-j6` yang dipakai M4.
Aturannya: **kalau OOM dua kali berturut-turut, turun ke `-j6`**. Diimplementasikan
di `bacon-retry.sh` di direktori ini.

**Aturan itu tidak pernah terpicu** — nol kegagalan berbentuk OOM sepanjang build.
`-j10` menekan memori (tugas latar pemantau saya dibunuh penjaga memori tiga kali)
tetapi build sendiri bertahan.

Yang penting dari skrip itu: **kegagalan OOM tidak terlihat seperti kegagalan
kode.** ninja melaporkannya sebagai `FAILED:` pada berkas acak, berbeda tiap
percobaan, tanpa pesan kompilator yang masuk akal. Deteksinya karena itu tiga
lapis: tanda eksplisit (`cc1plus: out of memory`, `Killed process`, `signal 9`),
pola tak langsung (`FAILED:` tanpa satu pun baris `file:line:col: error:`), dan
`dmesg` kernel. Kegagalan wlan §3 diklasifikasikan **bukan** OOM dengan benar —
aturan tidak salah memicu penurunan `-j` untuk bug kode.

---

## 7. Yang fase ini TIDAK membuktikan

ROM ini **belum di-flash dan belum di-boot**. Yang terbukti: ia terbangun, isinya
lengkap, arsitektur tiap berkas benar, dan muat di partisi dengan margin besar.

Semua pertanyaan perilaku masih terbuka, dan yang terpenting **kamera** —
apakah layar hitam build 32-bit `20260803_161352` terulang (`fase-4` §5). Itu
Fase 8, dan hanya pemilik A37 yang bisa menjawabnya.

---

## 8. Berkas

```
verify-rom-20260913.txt   keluaran verifikasi lengkap
0003-A37-cast-u64-...     patch yang membuka pemblokir §3
bacon-retry.sh            pembungkus build dengan aturan OOM §6
```

# Bisakah pakai Jelly yang lebih baru (cabang 23.2)?

Ditinjau **15 September 2026**, atas pertanyaan pemilik perangkat.

---

## Jawaban singkat

**Mesin browsernya sudah baru.** Yang tertinggal cuma antarmukanya, dan dari
situ ada **satu celah fungsional yang nyata** dan layak diambil.

---

## 1. Yang paling penting: mesin render TIDAK tertinggal

Jelly bukan mesin browser. Ia pembungkus tipis di atas **WebView** sistem, dan
WebView-lah yang merender halaman. Di perangkat ini:

```
$ dumpsys webviewupdate
  Current WebView package (name, version): (com.android.webview, 153.0.8010.36)
```

**Chromium 153.** LineageOS memperbarui prebuilt WebView terlepas dari versi
Android, jadi LOS 20 memakai mesin yang sama barunya dengan LOS 23.2.

Artinya: mengganti Jelly **tidak akan** membuat halaman merender lebih cepat,
lebih benar, atau lebih aman. Itu semua urusan WebView, dan sudah mutakhir.

---

## 2. Port utuh dari 23.2: TIDAK bisa, dan ini penghalangnya

Cabang `lineage-23.2` unggul **129 commit** (86 di antaranya substantif).
Tetapi:

| penghalang | rincian |
|---|---|
| `sdk_version: "36"` | `prebuilts/sdk/` di pohon LOS 20 berhenti di **33**. Tidak ada 34/35/36 |
| `androidx.room_room-ktx` | **tidak ada** di pohon kita (room-runtime dan sqlite ada) |
| `required:` modul baru | `initial-package-stopped-states-*` dan `preinstalled-packages-*` — mekanisme build Android 15/16, tidak ada di 13 |
| `plugins: androidx.room_room-compiler-plugin` | ada, tapi riwayat Jelly pindah ke Room untuk history/bookmark — perubahan arsitektur, bukan tambalan |

Jadi menyalin pohon 23.2 apa adanya akan gagal build, dan menurunkannya ke
SDK 33 berarti membongkar 86 commit satu per satu.

---

## 3. ⭐ Celah fungsional yang nyata: izin kamera, mikrofon, dan DRM

Ini temuan sesungguhnya dari peninjauan ini.

`ChromeClient.kt` kita **tidak meng-override `onPermissionRequest`**. Default
framework untuk metode itu adalah menolak:

```java
/* frameworks/base/core/java/android/webkit/WebChromeClient.java:427 */
public void onPermissionRequest(PermissionRequest request) {
    request.deny();
}
```

Akibatnya, di browser bawaan perangkat ini:

- **kamera tidak bisa dipakai** — panggilan video, pindai QR berbasis web, unggah
  foto langsung dari kamera
- **mikrofon tidak bisa dipakai** — pencarian suara, dikte, rapat daring
- **media terproteksi (DRM) ditolak** sebelum sempat dicoba

Dan manifest kita memang belum mendeklarasikan `CAMERA` maupun `RECORD_AUDIO`.

### Kaitannya dengan pekerjaan Widevine (T-A4)

`RESOURCE_PROTECTED_MEDIA_ID` adalah penghalang **kedua dan terpisah** untuk
DRM di browser. Penghalang pertama sudah diketahui: `DrmHalHidl.cpp:529-531`
menuntut `IDrmFactory@1.2` sedangkan blob 2018 hanya `@1.1`.

Perlu jujur soal urutannya: **memperbaiki izin saja tidak akan membuat Netflix
atau Spotify jalan di browser.** Penghalang `@1.2` tetap berdiri. Yang didapat
adalah satu penghalang berkurang, dan kamera/mikrofon jadi berfungsi — dan itu
saja sudah bernilai sendiri.

### Ongkos porting

```
2ca24f8  kamera + mikrofon        4 berkas, +57
b3c55e3  media terproteksi        4 berkas, +25
1f5f1bc  ingat persetujuan DRM    2 berkas, +19 -4
                                  total ~101 baris
```

Seluruh API yang dipakai **ada di SDK 33** — diperiksa satu per satu di
`frameworks/base/core/java/android/webkit/PermissionRequest.java:44,48,54`.

`git cherry-pick` **gagal** untuk ketiganya: 80+ commit di antaranya sudah
merombak `MainActivity.kt`, `ChromeClient.kt`, dan `WebViewExtActivity.kt`.
Jadi harus di-port tangan — tetapi 101 baris dengan API yang seluruhnya
tersedia adalah pekerjaan kecil.

---

## 4. Yang murah dan sepele: mesin pencari

Satu **bug** di pohon kita:

```
kita:  https://search.yahoo.com/p={searchTerms}        <- rusak
23.2:  https://search.yahoo.com/search?p={searchTerms} <- benar
```

Plus empat mesin baru: **Ecosia, Startpage, Qwant, GOOD**.

Seluruhnya di `res/values/search_engines.xml` — XML murni, tanpa kode, tanpa
risiko.

---

## 5. Yang menarik tapi mahal

| fitur | kenapa mahal |
|---|---|
| PWA + pintasan latar | butuh MediaSession, manifest parsing, beberapa commit berantai |
| Web Share API | bergantung refactor `HttpUtils` |
| Pintasan desktop | bergantung rantai PWA |
| Riwayat berbasis Room | perubahan arsitektur penyimpanan, butuh `room-ktx` yang tidak ada |

---

## 6. Usul

1. **Port `onPermissionRequest`** (§3) — ~101 baris, API lengkap di SDK 33,
   memulihkan kamera dan mikrofon di browser yang sekarang mati total.
2. **Ambil `search_engines.xml`** (§4) — perbaiki URL Yahoo yang rusak, tambah
   empat mesin. XML murni.
3. **Jangan** port utuh 23.2 (§2).
4. Fitur PWA dkk (§5) ditunda; nilainya jauh di bawah ongkosnya.

Belum ada yang dikerjakan; ini peninjauan.

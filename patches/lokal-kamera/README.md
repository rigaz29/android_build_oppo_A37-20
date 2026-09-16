# Tambalan lokal yang TIDAK punya remote untuk di-push

Diekspor 16 Sep 2026.

## Kenapa ada di sini

Tiga repo ini remote-nya milik LineageOS (`github/lineage-20.0`), jadi kita
tidak bisa mem-push ke sana. Dan di pohon kerja, ketiganya berada pada
**detached HEAD** — satu `repo sync` akan melenyapkan commit-commit ini tanpa
peringatan, tanpa nama cabang yang bisa dipulihkan.

Repo lain tidak punya masalah ini: `device/oppo/A37` dan
`kernel/oppo/msm8939` punya remote `gh` milik pemilik perangkat dan sudah
sinkron.

## Dua lapis perlindungan

1. **Berkas tambalan di sini**, ikut ter-commit dan ter-push bersama repo
   `a37-20`.
2. **Cabang `a37-lokal`** dibuat di masing-masing repo, sehingga HEAD-nya
   tidak lagi detached dan bisa dipulihkan dengan nama.

## Isinya

| repo | jumlah | yang penting |
|---|---|---|
| `hardware/interfaces` | 6 | `ec0436fd1` — periksa `mDevice->priv` sebelum `set_callbacks` |
| `frameworks/av` | 45 | `5ed027bea1` — tutup device HAL1 di jalur galat `DeviceInfo1` |
| `packages/modules/Connectivity` | 7 | `644cf6c8a` — longgarkan gerbang `KVER` pada `cgroupsock/inet/create` |

Jumlah di `frameworks/av` besar karena sebagian besar adalah revert kamera
yang sudah ada sebelumnya (mengembalikan libcameraservice ke keadaan Android
12 demi HAL1); hanya yang terakhir milik pekerjaan ini.

## Cara memulihkan setelah repo sync

```sh
cd <repo>
git am /root/a37-20/patches/lokal-kamera/<nama>/*.patch
```

Atau, kalau cabangnya masih ada: `git checkout a37-lokal`.

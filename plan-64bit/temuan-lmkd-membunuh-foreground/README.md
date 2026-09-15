# lmkd membunuh aplikasi yang sedang di layar

Ditemukan **15 September 2026**, dari pertanyaan "NewPipe force close, bug
aplikasi atau OS?".

Jawabannya: **OS**, dan bukan cuma NewPipe.

---

## 1. Bukan crash — dibunuh

Tidak ada `FATAL EXCEPTION`, tidak ada tombstone, tidak ada ANR, tidak ada
dropbox. Yang ada ini, dari pid 236 (**lmkd**):

```
17:40:35.190  236  236 I killinfo: [7749,10163,101,0,130984,-1,198012,984136,...]
```

Dibaca lewat `system/memory/lmkd/event.logtags:39`:

| field | nilai |
|---|---|
| Pid / Uid | 7749 / 10163 (`org.schabi.newpipe`) |
| OomAdj | **101** — terlihat di layar, di belakang dialog izin |
| kill_reason | **-1** (= `NONE`) |
| MemFree | **193 MB** |
| Cached | **961 MB** |
| InactiveFile | **469 MB** |
| SwapFree | **732 MB dari 768 MB** — zram 95% kosong |
| Thrashing | **0** |

Perangkat **tidak kehabisan memori**. Ada ~1 GB cache yang tinggal dipanen dan
zram nyaris tak tersentuh.

## 2. Dan NewPipe bukan korban terburuk

23 pembunuhan dalam satu boot. Sebarannya menurut `oom_score_adj`:

```
adj    0  ×1    <- com.android.settings, sedang DI LAYAR (TOP)
adj  100  ×4    <- termasuk com.android.launcher3, LAUNCHER-nya
adj  101  ×1    <- org.schabi.newpipe
adj  200  ×2
adj  500+ ×15
```

`com.android.settings` dibunuh pada **adj=0, procState TOP** — itu aplikasi yang
benar-benar sedang dipandang pengguna — dengan **211 MB bebas dan 1016 MB
cached**.

## 3. Sebabnya, dan rantainya bisa ditunjuk barisnya

```
device/oppo/A37/device.mk:689
    ro.lmk.use_new_strategy=false
              |
lmkd.cpp:3143
    handler = use_new_strategy ? mp_event_psi : mp_event_common;
              |                                  ^^^^^^^^^^^^^^^ dipakai
lmkd.cpp:3067-3069   (di dalam mp_event_common)
    if (low_ram_device) {
        /* For Go devices kill only one task */
        find_and_kill_process(level_oomadj[level], NULL, &mi, &wi, &curr_tm, NULL);
    } else {
        ...
        if (mi.field.nr_free_pages >= low_pressure_mem.max_nr_free_pages)
            return;                       <-- PENJAGA, hanya ada di cabang ini
        ...
    }
```

`ro.config.low_ram=true` di perangkat ini, jadi cabang atas yang jalan — dan
cabang itu **tidak punya pemeriksaan ketersediaan memori sama sekali**. Setiap
event tekanan langsung membunuh proses ber-adj tertinggi, berapa pun cache yang
sebenarnya masih bisa dipanen.

Itu juga yang menjelaskan `kill_reason = -1`: cabang low_ram memanggil
`find_and_kill_process` dengan `ki = NULL`. Dan `pd = NULL` di panggilan yang
sama itulah sebabnya semua kolom PSI di catatan berbunyi `0.000000` — **artefak
jalur kode, bukan bukti PSI rusak.**

## 4. Yang ironis

`device.mk` di sekitar baris 686 menjelaskan panjang lebar kenapa pindah ke PSI
itu layak, lalu menutup dengan:

> `ro.lmk.use_new_strategy` TETAP false — ia properti terpisah dan belum diukur.

Akibatnya perangkat ini mendapat **monitor PSI yang menyuapi handler lama**.
Padahal default lmkd untuk perangkat low-RAM justru `true`
(`lmkd.cpp:3204`: `low_ram_device || !use_minfree_levels`) — jadi nilai `false`
itu bukan sekadar "belum diubah", melainkan **override aktif** yang melawan
default.

## 5. Sambungannya ke perbaikan `pgscan` hari ini

Seluruh logika penilaian reclaim state yang baru diperbaiki hari ini —
`pgscan_kswapd` / `pgscan_direct` datar untuk lmkd — berada di dalam
`mp_event_psi` (lmkd.cpp:2558-2888).

Selama `use_new_strategy=false`, fungsi itu **tidak pernah dipanggil**, sehingga
perbaikan tersebut saat ini **inert di perangkat ini**.

Keduanya saling melengkapi, bukan bertumpuk:

- `use_new_strategy=true` memindahkan keputusan ke `mp_event_psi`, yang punya
  penjaga sungguhan (dua jalur `goto no_kill`, pemeriksaan watermark, thrashing,
  dan swap).
- perbaikan `pgscan` membuat penjaga itu punya data yang benar untuk bekerja.

Menyalakan yang satu tanpa yang lain akan setengah jalan.

## 6. Status

Belum diperbaiki. Perubahannya satu baris di `device.mk`, tetapi mengubah
kebijakan pembunuhan proses secara menyeluruh, jadi perlu keputusan pemilik
perangkat dan pengukuran sesudahnya.

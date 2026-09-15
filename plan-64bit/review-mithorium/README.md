# Review Mi-Thorium: apa yang perlu diadaptasi untuk A37

Diteliti **15 September 2026**, atas permintaan pemilik perangkat, untuk mencegah
terulangnya [lmkd membunuh aplikasi yang sedang di
layar](../temuan-lmkd-membunuh-foreground/).

Sumber: [github.com/Mi-Thorium](https://github.com/Mi-Thorium) — 80 repo,
perangkat msm8937/sdm439 (Redmi 3S/4A/5A/7A/8A, Redmi Go). Cabang `a13/master`
dipakai karena sama-sama Android 13.

---

## 0. Ringkasan

Kernel kita **sudah sama persis** dengan mereka. Yang berbeda cuma **properti
userspace**, dan satu di antaranya menjelaskan seluruh masalah kemarin.

| # | hal | kita | Mi-Thorium | prioritas |
|---|---|---|---|---|
| 1 | `ro.lmk.use_new_strategy` | **`false`** (override) | tidak diset → **`true`** | ⭐ TINGGI |
| 2 | `ro.config.low_ram` | `true` | tidak diset | tetap `true` — lihat §3 |
| 3 | swappiness | 100 datar | 60 global + 140 di cgroup `bg` | sedang |
| 4 | `process_reclaim` | aktif | dimatikan saat low_ram | perlu diukur |
| 5 | fragmen kernel `lmkd.config` | — | 4 baris | ✅ sudah sama |

---

## 1. ⭐ `ro.lmk.use_new_strategy` — ini penyebabnya, dan angkanya bisa dihitung

Mi-Thorium **tidak menyetel satu pun `ro.lmk.*`**. Diperiksa di
`mithorium-common/mithorium.mk`, `Mi8937/device.mk`, `Mi8937/BoardConfig.mk`,
`Tiare/device.mk`, `Tiare/BoardConfig.mk` — kosong semua.

Artinya mereka memakai default lmkd:

```c
/* lmkd.cpp:3203 */
use_new_strategy = GET_LMK_PROPERTY(bool, "use_new_strategy",
                                    low_ram_device || !use_minfree_levels);
```

`use_minfree_levels` sendiri default `false` (lmkd.cpp:3725), jadi
`!use_minfree_levels` = `true`. **Defaultnya `true` apa pun keadaan
perangkatnya.** Nilai `false` di `device.mk:689` kita bukan "belum diubah" —
ia override aktif yang melawan default.

### Yang berubah kalau `true`

Blok ini hanya jalan bila `use_new_strategy` menyala (lmkd.cpp:3210-3214):

```c
if (use_new_strategy) {
    psi_thresholds[VMPRESS_LEVEL_LOW].threshold_ms = 0;
    psi_thresholds[VMPRESS_LEVEL_MEDIUM].threshold_ms = psi_partial_stall_ms;
    psi_thresholds[VMPRESS_LEVEL_CRITICAL].threshold_ms = psi_complete_stall_ms;
}
```

Bandingkan angkanya:

| level | sekarang (false) | kalau true | `level_oomadj` |
|---|---|---|---|
| LOW | `SOME` **70 ms** — monitor AKTIF | **0** → tidak didaftarkan sama sekali | 1001 |
| MEDIUM | `SOME` **100 ms** | `psi_partial_stall_ms` = **200 ms** | 800 |
| CRITICAL | `FULL` **70 ms** | `psi_complete_stall_ms` = **700 ms** | **0** |

**CRITICAL menyala pada 70 ms alih-alih 700 ms — 10× lebih sensitif dari yang
dimaksudkan.** Dan `level_oomadj[CRITICAL]` defaultnya **0**, artinya pada level
itu *semua* proses jadi calon, termasuk yang sedang di layar.

Angka 200 ms itu sendiri sudah versi khusus low-RAM
(`DEF_PARTIAL_STALL_LOWRAM`, lmkd.cpp:156) — AOSP memang menyediakan default
yang lebih longgar untuk perangkat kecil, dan kita tidak pernah memakainya.

### Dan handler-nya ikut berubah

```c
/* lmkd.cpp:3143 */
handler = use_new_strategy ? mp_event_psi : mp_event_common;
```

`mp_event_common` + `low_ram_device` masuk ke cabang tanpa penjaga
(lmkd.cpp:3067). `mp_event_psi` **tidak punya cabang itu sama sekali** —
diperiksa: `low_ram_device` hanya muncul di baris 3067, 3204, 3722, 3728, 3732,
3737, 3739, dan tidak satu pun di dalam rentang `mp_event_psi` (2558-2888).

### Bonus: perbaikan hari ini jadi hidup

Logika `pgscan_kswapd`/`pgscan_direct` yang di-backport hari ini berada di dalam
`mp_event_psi`. Selama `use_new_strategy=false` ia **inert**. Menyalakan
properti ini sekaligus mengaktifkannya.

---

## 2. `ro.config.low_ram` — beda dari Mi-Thorium, dan sebaiknya TETAP `true`

Mi-Thorium tidak menyetelnya, bahkan pada **Tiare = Redmi Go, 1 GB** — perangkat
terkecil mereka. Yang mereka pakai di situ `MALLOC_SVELTE := true`
(`Tiare/BoardConfig.mk:81`), dan itu **sudah kita punya**
(`BoardConfig.mk:366`).

Godaannya adalah ikut mematikannya. **Jangan** — alasannya terukur:

1. `low_ram` mengaktifkan **per-app memcg**
   (`per_app_memcg = property_get_bool("ro.config.per_app_memcg", low_ram_device)`),
   dan itu **benar-benar bekerja** di perangkat ini: ada **77 direktori
   `/dev/memcg/apps/uid_*`**. lmkd memakainya untuk membaca RSS dan swap tiap
   proses secara akurat.
2. `low_ram` memberi lmkd default PSI dan thrashing yang **lebih longgar**,
   bukan lebih galak: `PARTIAL_STALL` 70→**200 ms**, `THRASHING` 100→**30**,
   `THRASHING_DECAY` 10→**50**.
3. Satu-satunya kerugiannya adalah cabang tanpa penjaga di `mp_event_common` —
   dan §1 menghapus cabang itu dari gambaran sepenuhnya.

Jadi kombinasi yang benar untuk A37: **`low_ram=true` DAN
`use_new_strategy=true`**. Mi-Thorium sampai di tempat yang sama lewat jalan
berbeda (tanpa low_ram, tapi tetap `use_new_strategy=true` karena default).

---

## 3. Swappiness: mereka lebih berlapis, kita datar

| | kita | Mi-Thorium |
|---|---|---|
| global `/proc/sys/vm/swappiness` | **100** (T-A2) | **60** (`init.target.rc:40`) |
| cgroup `bg` | tidak ada | **140** (`init.qcom.rc:62`) |
| `page-cluster` | 0 | 0 (sama) |

Idenya: jangan menyamaratakan. Aplikasi latar belakang di-swap **lebih agresif
dari maksimum global** (140 > 100), sementara sistem secara umum tetap konservatif
di 60.

Di perangkat kita `/dev/memcg/apps/memory.swappiness` sudah `60`, dan per-app
memcg aktif — jadi tuas berlapis itu **tersedia**, cuma belum dipakai. Ini layak
dicoba, tetapi **setelah** §1, dan dengan pengukuran: nilai 100 kita bukan
tebakan, ia hasil T-A2.

---

## 4. `process_reclaim` — perlu diukur, jangan langsung ikut

Skrip QCOM yang mereka bawa mematikan PPR untuk perangkat low_ram:

```sh
if [ "$low_ram" == "true" ]; then
    echo 0 > /sys/module/process_reclaim/parameters/enable_process_reclaim
```

Keadaan kita:

```
enable_process_reclaim  1
pressure_min            50
min_score_adj           360
```

Tetapi ada dua hal yang membuat saya **tidak** merekomendasikannya sekarang:

1. Mi-Thorium tidak menyetel `low_ram`, jadi di perangkat **mereka** cabang itu
   tidak pernah jalan — mereka tidak benar-benar "memilih" mematikannya.
2. Cabang `else`-nya membaca
   `/sys/module/lowmemorykiller/parameters/adj`, yang **tidak ada** karena
   `CONFIG_ANDROID_LOW_MEMORY_KILLER=n`. Jadi keadaan PPR di perangkat mereka
   sebenarnya tidak terdefinisi, bukan hasil keputusan.

Ini kandidat eksperimen, bukan adaptasi.

---

## 5. Fragmen kernel — sudah sama, tidak ada yang perlu diambil

`mithorium-common/BoardConfigCommon.mk:61` merujuk
`vendor/feature/lmkd.config`, yang isinya:

```
CONFIG_PSI=y
CONFIG_MEMCG=y
CONFIG_MEMCG_SWAP=y
CONFIG_ANDROID_LOW_MEMORY_KILLER=n
```

`lineageos_a37f_defconfig` kita:

```
18:  CONFIG_MEMCG=y
19:  CONFIG_MEMCG_SWAP=y
625: # CONFIG_ANDROID_LOW_MEMORY_KILLER is not set
722:  CONFIG_PSI=y
723: # CONFIG_PSI_DEFAULT_DISABLED is not set
```

**Empat dari empat cocok.** Tidak ada pekerjaan kernel di sini — yang berarti
masalah kemarin memang murni salah konfigurasi userspace, bukan kekurangan
kernel.

---

## 6. Usul, terurut

1. **Buang `ro.lmk.use_new_strategy=false`** dari `device.mk:689` (biarkan
   default = `true`). Satu baris; menghapus cabang pembunuh tanpa penjaga,
   melonggarkan ambang CRITICAL 70 → 700 ms, mematikan monitor LOW yang
   berlebihan, dan menghidupkan perbaikan `pgscan` hari ini.
2. **Pertahankan `ro.config.low_ram=true`** — §2.
3. Setelah (1) terbukti di perangkat: coba swappiness berlapis — §3.
4. Biarkan `process_reclaim` apa adanya sampai ada pengukuran — §4.

Belum ada yang dikerjakan; ini review.

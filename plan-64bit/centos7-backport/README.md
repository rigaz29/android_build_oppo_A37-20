# Backport kernel CentOS 7 (RHEL 7), dipetakan ke kernel A37

Kernel CentOS 7 / RHEL 7 bernama "3.10.0", tetapi dirawat Red Hat dari Juni 2013
sampai Mei 2024 dengan puluhan ribu backport dari Linux 3.11 sampai 6.x.
Folder ini memetakan **setiap** entri changelog-nya ke kernel A37, supaya bisa
dipilih mana yang layak di-backport.

Dibuat 2 Oktober 2026. Hasilnya **titik awal**, bukan daftar pasti: pencocokan
memakai judul commit dan `.config`, jadi setiap kandidat tetap harus dicek di kode
sebelum di-port (lihat [Keterbatasan](#keterbatasan)).

## Sumber

| | |
|---|---|
| Changelog RHEL 7 | `SPECS/kernel.spec` rilis terakhir **3.10.0-1160.119.1.el7** (9 Mei 2024), dari [arsip CentOS di GitLab](https://gitlab.com/CentOS/Archives/git.centos.org/rpms/kernel/-/raw/c7/SPECS/kernel.spec) |
| Mainline | judul semua commit non-merge `v3.10..` sampai 7.3-rc (1.005.841 judul), dari clone `torvalds/linux` tanpa isi berkas (`--filter=tree:0`) |
| Kernel A37 | `kernel_oppo_msm8939` branch `wip/susfs` @ `3f72834811f` (kernel #32) |
| Config A37 | `out/.config` build kernel #32 |

## Metode

1. **Urai changelog**: 93.619 entri (`- [subsistem] judul (penulis) [bugzilla] {CVE}`),
   termasuk 542 entri era akhir tanpa tag dan 133 revert.
2. **Cocokkan ke mainline** per judul, lalu catat SHA dan rilis pertama yang memuatnya.
   - *exact*: judulnya sama setelah dinormalkan.
   - *loose*: Red Hat mengubah prefiks (`alsa: asoc:` untuk `ASoC:`, `mm: oom:` untuk
     `mm, oom:`, `sched:` tanpa `net:`), jadi prefiks umum dibuang dulu.
   - Hasil: 70,5% entri terpetakan (56.000 exact, 10.000 loose).
3. **Cek apakah sudah ada di A37**, dengan urutan:
   - SHA upstream entri itu disebut di pesan commit A37 (`commit <sha> upstream.`
     dari stable 3.10.y, `(cherry picked from commit <sha>)` dari Android/CAF);
   - judul sama (exact);
   - judul sama setelah dinormalkan (loose).
   - Nomor CVE yang disebut di pesan commit A37 juga dicatat.
4. **Klasifikasi relevansi untuk A37** memakai tag, prefiks judul, dan `.config`:
   - simbol aktif di `.config` A37 → kandidat;
   - simbol ada di Kconfig tapi mati → tidak berlaku;
   - simbol atau berkasnya tidak ada sama sekali di tree → fitur baru.

## Arti status

| Status | Arti |
|---|---|
| `PRESENT` | Sudah ada di A37 (SHA upstream disebut, atau judulnya sama) |
| `CANDIDATE` | Kode yang dikompilasi di A37, belum ditemukan di riwayatnya |
| `FEATURE-MISSING` | Fitur/subsistem yang belum ada sama sekali di kernel A37 |
| `REVIEW` | Driver/inti yang mungkin dipakai A37, tapi tidak ada aturan yang pasti |
| `NA-CONFIG` | Subsistemnya ada di tree tapi dimatikan di `.config` A37 (XFS, NFS, SCTP, SysV IPC, xHCI, ...) |
| `NA-HW` | Driver hardware yang tidak ada di A37 (NIC, InfiniBand, SCSI, NVMe, GPU, HDA, DAX/NVDIMM, Type-C, ...) |
| `NA-ARCH` | Arsitektur/platform lain (x86, powerpc, s390, KVM, Hyper-V, Xen, ACPI, PCI, EFI, ...) |
| `NA-TOOLS` | Userspace (perf tools, selftests), dokumentasi, build RHEL |

## Ringkasan

| Status | Entri |
|---|---|
| PRESENT | 2.420 |
| **CANDIDATE** | **17.814** |
| **FEATURE-MISSING** | **1.968** |
| REVIEW | 705 |
| NA-CONFIG | 14.043 |
| NA-HW | 35.193 |
| NA-ARCH | 14.597 |
| NA-TOOLS | 6.746 |

Lebih dari separuh changelog (NA-HW + NA-ARCH) adalah driver server dan arsitektur
non-ARM. RHEL 7 sendiri **tidak pernah dibangun untuk arm64**: `ExclusiveArch` hanya
x86_64, ppc64/ppc64le, dan s390x. Jadi semua kerja yang spesifik arsitektur, termasuk
mitigasi CPU, tidak bisa diambil dari sini.

Kandidat menurut rilis mainline pertama yang memuatnya:

| | 3.11–3.19 | 4.x | 5.x | 6.x | tanpa padanan |
|---|---|---|---|---|---|
| CANDIDATE | 4.497 | 8.389 | 525 | 32 | 4.371 |
| FEATURE-MISSING | 548 | 1.225 | 38 | 4 | 153 |

Rincian per area ada di [stats.md](stats.md).

**CVE** ([cves.md](cves.md)): 511 CVE berbeda ditambal di changelog RHEL 7.

| Kelompok | Arti | CVE |
|---|---|---|
| MISSING-RELEVANT | Fix-nya relevan, tidak ada satu pun di riwayat A37 | 185 |
| PARTIAL | Sebagian fix ada di A37, sebagian tidak | 19 |
| NAMED-IN-A37 | Entri tidak cocok, tapi commit A37 menyebut CVE ini | 18 |
| PRESENT | Semua fix yang relevan sudah ada | 122 |
| NOT-APPLICABLE | Hanya kode arch/hardware/config mati | 167 |

## Isi folder

| Berkas | Isi |
|---|---|
| [`all-entries.tsv.xz`](all-entries.tsv.xz) | **Daftar lengkap** 93.619 entri beserta status, alasan, SHA upstream, versi, CVE, rilis RHEL, dan bugzilla. Buka dengan `xz -dc all-entries.tsv.xz` |
| [`candidates.tsv`](candidates.tsv) | Hanya CANDIDATE, FEATURE-MISSING, dan REVIEW (tanpa revert) |
| [`candidates/`](candidates/) | Kandidat yang sama per area, sebagai tabel Markdown yang bisa dibaca di GitHub: [fs](candidates/fs.md), [mm](candidates/mm.md), [net](candidates/net.md), [kernel](candidates/kernel.md), [block](candidates/block.md), [security](candidates/security.md), [drivers](candidates/drivers.md), [lib & lainnya](candidates/lib.md) |
| [`cves.md`](cves.md) | Semua CVE beserta statusnya di A37 |
| [`features.md`](features.md) | Fitur yang belum ada sama sekali di A37 |
| [`stats.md`](stats.md) | Angka per status, area, dan versi |

Kolom TSV: `status`, `reason`, `tag`, `subject`, `upstream_sha`, `upstream_version`,
`upstream_match` (exact/loose), `upstream_ambiguous` (judul yang sama muncul
berkali-kali di mainline), `a37` (sha/exact/loose/no), `cve`, `a37_cve`,
`rhel_release`, `date`, `bz`, `rh_author`, `revert`, `rhel_reverted`.

## Prioritas untuk A37

Urutannya berdasarkan dampak pada HP harian, bukan jumlah entri.

1. **CVE yang relevan dan belum ada** (MISSING-RELEVANT dan PARTIAL di `cves.md`),
   terutama di kode yang dijangkau aplikasi biasa: jaringan inti (TCP/UDP/IPv6,
   netlink), VFS/ext4/FUSE, mm, inti kernel, inti ALSA, inti USB. Cek setiap CVE di
   kode lebih dulu. Banyak yang sudah ditambal LineageOS/CAF dengan judul lain, dan
   kelompok NAMED-IN-A37 menunjukkan pola itu.
2. **Perbaikan di subsistem yang benar-benar sibuk di A37**:
   - FUSE (seluruh /sdcard lewat MediaProvider) dan ext4 (/system, /cache, /persist);
   - zram (swap utama);
   - MMC/SDHCI (eMMC);
   - USB gadget (MTP, adb);
   - Bluetooth dan cfg80211;
   - netfilter conntrack/xtables (tethering, firewall Android);
   - BPF (netd, time_in_state);
   - cgroup/memcg (lmkd).
3. **Fitur baru yang bernilai**: **overlayfs** (404 entri, 3.18–4.20) — dibutuhkan
   metamodule KernelSU berbasis overlay seperti mountify. RHEL juga membawa
   prasyaratnya di VFS.
4. **Nilai rendah untuk HP ini**:
   - blk-mq (eMMC A37 single-queue);
   - livepatch, GENEVE, MPLS, dm-era/dm-switch/dm-log-writes (fitur server);
   - SCHED_DEADLINE, kernfs, rhashtable — infrastruktur, hanya perlu kalau fitur lain
     menuntutnya;
   - userfaultfd — ART Android 13 belum memakainya, meski ada 12 CVE di seri itu.

## Cara memakai

Kandidat di area `net` yang punya CVE:

```sh
awk -F'\t' 'NR==1 || ($1=="CANDIDATE" && $3=="net" && $10!="")' candidates.tsv
```

Semua entri satu subsistem, misalnya FUSE:

```sh
xz -dc all-entries.tsv.xz | awk -F'\t' 'tolower($4) ~ /^fuse:/ {print $1"\t"$6"\t"$5"\t"$4}'
```

Alur port yang sudah terbukti di proyek ini (OFD lock, pidfd, kcompactd, SACK):

1. Ambil patch dari **mainline** lewat SHA di kolom `upstream_sha`, bukan dari RHEL.
   RHEL hanya merilis satu tarball yang sudah di-patch, dengan makro kABI.
2. Cek dulu di kode A37. Fix bisa saja sudah ada dengan judul lain, atau kode yang
   rusak belum ada di 3.10.
3. Terapkan satu per satu, dan pastikan setiap hunk mendarat di fungsi yang benar.
   `patch` dengan fuzz pernah menempelkan hunk `fcntl_getlk()` ke `fcntl_getlk64()`,
   yang tidak dikompilasi di arm64, dan build tetap sukses tanpa error.
4. Uji di HP **dengan rollback siap** dan pengguna di dekat HP.

## Keterbatasan

- **Pencocokan berdasarkan judul.** 29,5% entri RHEL tidak punya padanan mainline
  (judul ditulis ulang, backport parsial, atau perubahan khusus RHEL). Kolom
  `upstream_sha` kosong untuk entri itu.
- **PRESENT bisa terlewat.** Fix yang dibawa LineageOS/CAF dengan judul berbeda dan
  tanpa referensi SHA akan tetap tercatat sebagai CANDIDATE.
- **Pencocokan loose bisa salah pasang** untuk judul pendek yang umum. Kolom
  `upstream_ambiguous` menandai judul yang muncul lebih dari sekali di mainline.
- **Relevansi berasal dari aturan prefiks dan `.config` kernel #32.** Kalau config
  berubah, buat ulang datanya. Aturannya ada di `tools/centos7-backport-index.py`.
- RHEL kadang hanya mengambil sebagian commit upstream. Kolom `subject` berisi apa
  yang tertulis di changelog RHEL.

## Membuat ulang

```sh
# metadata commit mainline (~820 MB, tanpa isi berkas)
git clone --bare --filter=tree:0 --no-tags https://github.com/torvalds/linux.git /root/mainline-meta.git
git -C /root/mainline-meta.git fetch --filter=tree:0 origin 'refs/tags/v*:refs/tags/v*'
curl -L -o kernel.spec https://gitlab.com/CentOS/Archives/git.centos.org/rpms/kernel/-/raw/c7/SPECS/kernel.spec

tools/centos7-backport-index.py --spec kernel.spec --mainline /root/mainline-meta.git \
    --a37 /root/los20/kernel-susfs-stage1 --a37-ref wip/susfs \
    --config /root/los20/kernel-susfs-stage1/out/.config --out plan-64bit/centos7-backport
tools/centos7-backport-report.py --dir plan-64bit/centos7-backport
```

Indeks berjalan sekitar 2 menit, laporan beberapa detik.

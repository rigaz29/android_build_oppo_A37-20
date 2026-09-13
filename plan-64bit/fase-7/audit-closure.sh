#!/usr/bin/env bash
# Audit closure pustaka pada pohon ROM TERBANGUN — dua jenis, bukan satu.
#
# Diangkat dari plan-64bit/fase-5/alat/audit-dt-needed.sh proyek LOS 23.2, dengan
# tiga perubahan untuk LOS 20:
#
#   1. APEX DIINDEKS, bukan diabaikan. Di proyek 23.2 penghuni APEX muncul sebagai
#      "hilang" palsu karena APEX di out/ masih berbentuk .apex yang belum
#      diekstrak. Di pohon ini ke-26 APEX sudah terekstrak, jadi libnativehelper,
#      libicu, libsigchain dan kawan-kawan bisa diselesaikan sungguhan.
#   2. "SYSONLY" (pustaka vendor yang hanya ada di /system) BUKAN kegagalan di sini.
#      BOARD_VNDK_VERSION tidak disetel, jadi penegakan VNDK mati dan proses vendor
#      memang boleh menaut pustaka platform — itu yang menyelamatkan rantai RIL dan
#      kamera (Fase 5 sec.4). Dilaporkan sebagai info.
#   3. AUDIT KEDUA ditambahkan: nama dlopen. Audit DT_NEEDED saja MELEWATKAN
#      librpmb.so di proyek 23.2, karena qseecomd memuatnya lewat
#      dlopen("librpmb.so") dan nama itu hanya ada sebagai string di dalam biner.
#
# Pakai: ./audit-closure.sh [OUT_SYSTEM]
set -o pipefail
P="${1:-/root/los20/out/target/product/A37/system}"
[ -d "$P" ] || { echo "tidak ada: $P" >&2; exit 2; }

TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT

# ---------------------------------------------------------------- indeks ---
# "arch nama ruang" -> ada
idx() { # $1=dir $2=arch $3=ruang
  [ -d "$1" ] || return 0
  find "$1" -maxdepth 1 -name '*.so' -printf "$2 %f $3\n" 2>/dev/null
}
{
  for d in lib lib64; do
    a=32; [ "$d" = lib64 ] && a=64
    idx "$P/$d" $a sys
    # system_ext dan product juga membawa pustaka dan ikut di jalur pencarian
    # linker. Melewatkannya menghasilkan positif palsu -- terjadi pada putaran
    # pertama audit ini: vendor.lineage.livedisplay@2.0, vendor.lineage.trust@1.0,
    # dan android.hardware.graphics.composer@2.1-resources dilaporkan "hilang"
    # padahal ketiganya ada di system_ext/lib64.
    idx "$P/system_ext/$d" $a sys
    idx "$P/product/$d" $a sys
    idx "$P/vendor/$d" $a ven
    idx "$P/vendor/$d/hw" $a ven
    idx "$P/vendor/$d/egl" $a ven
    for ap in "$P"/apex/*/"$d"; do idx "$ap" $a apex; done
  done
} | sort -u > "$TMP/have.txt"
awk '{print $1" "$2}' "$TMP/have.txt" | sort -u > "$TMP/have-key.txt"

printf "indeks: %s pustaka unik (arch+nama), dari %s berkas\n" \
  "$(wc -l < "$TMP/have-key.txt")" "$(wc -l < "$TMP/have.txt")"

# bionic + linker: penghuni APEX runtime yang selalu tersedia
BUILTIN="libc.so libm.so libdl.so libdl_android.so ld-android.so libc++.so"
punya() { grep -qx "$1 $2" "$TMP/have-key.txt"; }
bawaan() { case " $BUILTIN " in *" $1 "*) return 0;; esac; return 1; }

# --------------------------------------------------- audit 1: DT_NEEDED ---
echo
echo "=== AUDIT 1 — DT_NEEDED (tautan saat link) ==="
: > "$TMP/a1.txt"
while IFS= read -r f; do
  h=$(readelf -h "$f" 2>/dev/null) || continue
  case "$h" in *ELF32*) ar=32;; *ELF64*) ar=64;; *) continue;; esac
  readelf -d "$f" 2>/dev/null | sed -n 's/.*NEEDED.*\[\(.*\)\].*/\1/p' | while read -r n; do
    bawaan "$n" && continue
    punya "$ar" "$n" || echo "$ar|$n|${f#$P/}" >> "$TMP/a1.txt"
  done
done < <(find "$P/vendor" "$P/bin" "$P/lib" "$P/lib64" -type f 2>/dev/null)
# DAFTAR-TERIMA. Tiap baris "arch|nama" sudah ditriase 13 Sep 2026 dan diketahui
# tidak berbahaya. Penjaga ini gunanya menangkap yang BARU; kalau semua temuan
# masuk daftar ini, ia lolos. Tambah entri HANYA dengan alasan tertulis.
#
#   32|android.hidl.base@1.0.so
#     Dituntut lima pustaka vendor.qti.hardware.iop (perf boost). HAL iop SUDAH
#     DIBUANG dari manifest.xml LOS 20 (lihat komentarnya di sana): hidl.base
#     datang lewat hardware/lineage/compat ke system_ext/lib, dan namespace linker
#     vendor tidak menjangkau system_ext. Nol konsumen di build ini; pustakanya
#     inert. Proyek LOS 23.2 menerima temuan yang sama (fase-5 sec.5).
#   32|libmmsw_*.so  (4 buah)
#     Dituntut lib/libvpplibrary.so (video post-processing). OPPO tidak pernah
#     mengirimnya di ROM mana pun. Diterima juga oleh proyek LOS 23.2.
#   64|libcameraservice.so
#     Dituntut vendor/lib64/lib-imscamera.so (IMS). Tumpukan IMS inert sejak
#     ims.apk dibuang. Dan libcameraservice memang hanya 32-bit di ROM ini, karena
#     servis kamera ditaut ke dalam mediaserver yang ber-prefer32.
#   64|libvcel.so
#     Dituntut lib-imsvt.so (IMS video telephony). Tidak tersedia di repo mana pun.
TERIMA="32|android.hidl.base@1.0.so
32|libmmsw_detail_enhancement.so
32|libmmsw_math.so
32|libmmsw_opencl.so
32|libmmsw_platform.so
64|libcameraservice.so
64|libvcel.so"

if [ -s "$TMP/a1.txt" ]; then
  sort -u "$TMP/a1.txt" > "$TMP/a1u.txt"
  : > "$TMP/a1baru.txt"
  while IFS='|' read -r ar n f; do
    case "$TERIMA" in *"$ar|$n"*) continue;; esac
    echo "$ar|$n|$f" >> "$TMP/a1baru.txt"
  done < "$TMP/a1u.txt"
  diterima=$(( $(wc -l < "$TMP/a1u.txt") - $(wc -l < "$TMP/a1baru.txt") ))
  printf "  %s temuan, %s sudah diterima (lihat daftar TERIMA di skrip ini)\n" "$(wc -l < "$TMP/a1u.txt")" "$diterima"
  if [ -s "$TMP/a1baru.txt" ]; then
    echo "  --- BARU, belum ditriase ---"
    awk -F'|' '{printf "  HILANG %s-bit  %-34s butuh: %s\n",$1,$2,$3}' "$TMP/a1baru.txt" | head -40
  else
    echo "  nol temuan BARU"
  fi
  cp "$TMP/a1baru.txt" "$TMP/a1.txt"
else
  echo "  nol DT_NEEDED yang tidak terselesaikan"
fi

# ------------------------------------------------------ audit 2: dlopen ---
# Pola khas dual-arch tertinggal: komponen 32-bit menyebut nama pustaka yang
# ADA versi 64-bitnya tetapi TIDAK ada versi 32-bitnya.
echo
echo "=== AUDIT 2 — nama dlopen (tautan saat runtime) ==="
: > "$TMP/a2.txt"
while IFS= read -r f; do
  h=$(readelf -h "$f" 2>/dev/null) || continue
  case "$h" in *ELF32*) : ;; *) continue;; esac
  readelf -d "$f" 2>/dev/null | sed -n 's/.*NEEDED.*\[\(.*\)\].*/\1/p' | sort -u > "$TMP/dn.txt"
  strings -a "$f" 2>/dev/null | grep -oE '^lib[A-Za-z0-9_.+-]+\.so$' | sort -u | while read -r n; do
    grep -qx "$n" "$TMP/dn.txt" && continue     # sudah lewat DT_NEEDED
    bawaan "$n" && continue
    punya 32 "$n" && continue                    # ada 32-bit: aman
    punya 64 "$n" && echo "$n|${f#$P/}" >> "$TMP/a2.txt"
  done
done < <(find "$P/vendor" "$P/bin" -type f 2>/dev/null)
if [ -s "$TMP/a2.txt" ]; then
  sort -u "$TMP/a2.txt" | awk -F'|' '{printf "  hanya-64  %-30s disebut: %s\n",$1,$2}' | head -40
  printf "  total: %s\n" "$(sort -u "$TMP/a2.txt" | wc -l)"
else
  echo "  nol nama dlopen 32-bit yang hanya tersedia 64-bit"
fi

echo
[ -s "$TMP/a1.txt" ] && { echo "AUDIT 1 MENEMUKAN MASALAH — periksa sebelum flash"; exit 1; }
echo "AUDIT 1 BERSIH."
[ -s "$TMP/a2.txt" ] && echo "AUDIT 2 menandai kandidat — periksa satu per satu, sebagian bisa wajar."
exit 0

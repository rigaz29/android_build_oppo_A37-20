#!/usr/bin/env bash
# audit-arch.sh — penjaga Fase 1 untuk pohon vendor dual-arch A37.
#
# Salah arsitektur TIDAK tertangkap saat build. Ia muncul saat boot sebagai HAL
# yang gagal dimuat, dan biayanya satu siklus build penuh. Jalankan ini SEBELUM
# memasang pohon vendor ke pohon LOS.
#
#   ./audit-arch.sh /root/a37-vendor64/A37
#
# Tujuh penjaga, keluar rc=1 kalau ada satu pun yang gagal.
set -u
ROOT="${1:-.}"; cd "$ROOT" || exit 2
export LC_ALL=C
gagal=0
t() { printf '%-58s %s\n' "$1" "$2"; }

# 1. setiap sumber PRODUCT_COPY_FILES ada
n=0; bad=0
for p in $(grep -oE "vendor/oppo/A37/proprietary/[^ :]+" A37-vendor.mk | sed 's|^vendor/oppo/A37/||' | sort -u); do
  n=$((n+1)); [ -f "$p" ] || { echo "  HILANG: $p"; bad=$((bad+1)); }
done
t "1. sumber PRODUCT_COPY_FILES ada ($n diperiksa)" "$([ $bad -eq 0 ] && echo LOLOS || { echo "GAGAL ($bad)"; })"; [ $bad -eq 0 ] || gagal=1

# 2. setiap srcs Android.bp ada
n=0; bad=0
for p in $(grep -oE '"proprietary/[^"]+"' Android.bp | tr -d '"' | sort -u); do
  n=$((n+1)); [ -f "$p" ] || { echo "  HILANG: $p"; bad=$((bad+1)); }
done
t "2. srcs Android.bp ada ($n diperiksa)" "$([ $bad -eq 0 ] && echo LOLOS || echo "GAGAL ($bad)")"; [ $bad -eq 0 ] || gagal=1

# 3. vendor/lib64/*.so benar-benar ELF 64-bit aarch64
n=0; bad=0
while IFS= read -r f; do n=$((n+1))
  file -b "$f" | grep -q 'ELF 64-bit.*aarch64' || { echo "  SALAH ARCH: $f"; bad=$((bad+1)); }
done < <(find proprietary/vendor/lib64 -name '*.so' 2>/dev/null)
t "3. vendor/lib64 semuanya 64-bit ($n diperiksa)" "$([ $bad -eq 0 ] && echo LOLOS || echo "GAGAL ($bad)")"; [ $bad -eq 0 ] || gagal=1

# 4. vendor/lib/*.so benar-benar ELF 32-bit ARM
n=0; bad=0
while IFS= read -r f; do n=$((n+1))
  file -b "$f" | grep -q 'ELF 32-bit.*ARM' || { echo "  SALAH ARCH: $f"; bad=$((bad+1)); }
done < <(find proprietary/vendor/lib -name '*.so' 2>/dev/null)
t "4. vendor/lib semuanya 32-bit ($n diperiksa)" "$([ $bad -eq 0 ] && echo LOLOS || echo "GAGAL ($bad)")"; [ $bad -eq 0 ] || gagal=1

# 5. seluruh biner vendor/bin tetap 32-bit
n=0; bad=0
while IFS= read -r f; do n=$((n+1))
  file -b "$f" | grep -q 'ELF 32-bit' || { echo "  BUKAN 32-bit: $f"; bad=$((bad+1)); }
done < <(find proprietary/vendor/bin -type f 2>/dev/null)
t "5. biner vendor/bin tetap 32-bit ($n diperiksa)" "$([ $bad -eq 0 ] && echo LOLOS || echo "GAGAL ($bad)")"; [ $bad -eq 0 ] || gagal=1

# 6. nol berkas ditangani DUA mekanisme sekaligus
ov=$(comm -12 <(grep -oE "proprietary/[^ :]+" A37-vendor.mk | sort -u) \
               <(grep -oE '"proprietary/[^"]+"' Android.bp | tr -d '"' | sort -u))
[ -z "$ov" ] || { echo "$ov" | sed 's/^/  TUMPANG TINDIH: /'; gagal=1; }
t "6. nol tumpang tindih COPY_FILES vs Android.bp" "$([ -z "$ov" ] && echo LOLOS || echo GAGAL)"

# 7. setiap .so di pohon terpasang lewat salah satu mekanisme, atau sengaja tidak
pasang=$( { grep -oE "proprietary/[^ :]+" A37-vendor.mk; grep -oE '"proprietary/[^"]+"' Android.bp | tr -d '"'; } | sort -u )
yatim=$(comm -23 <(find proprietary -name '*.so' | sort) <(echo "$pasang"))
n=$(echo "$yatim" | grep -c . )
[ "$n" -gt 0 ] && echo "$yatim" | sed 's/^/  TIDAK DIPASANG: /'
t "7. pustaka di pohon yang tidak dipasang" "$n (harapan 1: libwvhidl.so, cadangan T-A4)"

exit $gagal

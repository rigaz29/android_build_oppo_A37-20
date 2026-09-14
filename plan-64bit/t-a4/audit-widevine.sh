#!/bin/bash
# Audit T-A4 Widevine: penutupan simbol dan arch, dijalankan atas pohon out.
# Pakai grep BIASA, bukan rtk grep -- rtk menulis keluaran terkondensasi ke
# berkas, sehingga pipeline data akan salah hitung (tertangkap 14 Sep 2026).
set -e
OUT=${1:-/root/los20/out/target/product/A37}
VEN=/root/los20/vendor/oppo/A37/proprietary
T=$(mktemp -d); trap 'rm -rf $T' EXIT
gagal=0
ok()   { printf "  OK      %s\n" "$1"; }
bad()  { printf "  GAGAL   %s\n" "$1"; gagal=$((gagal+1)); }

echo "=== 1. berkas terpasang ==="
for f in system/vendor/bin/hw/android.hardware.drm@1.1-service.widevine \
         system/vendor/etc/init/android.hardware.drm@1.1-service.widevine.rc \
         system/vendor/lib/libwvhidl.so \
         system/vendor/lib/libprotobuf-cpp-lite.so; do
  [ -f "$OUT/$f" ] && ok "${f##*/}" || bad "${f##*/} tidak terpasang"
done

echo "=== 2. arch: ketiganya WAJIB 32-bit ==="
for f in system/vendor/bin/hw/android.hardware.drm@1.1-service.widevine \
         system/vendor/lib/libwvhidl.so \
         system/vendor/lib/libprotobuf-cpp-lite.so; do
  [ -f "$OUT/$f" ] || continue
  if file -b "$OUT/$f" | grep -q "ELF 32-bit.*ARM"; then ok "32-bit: ${f##*/}"
  else bad "BUKAN 32-bit: ${f##*/} -> $(file -b "$OUT/$f" | cut -c1-40)"; fi
done

echo "=== 3. protobuf terpasang adalah 3.0.0 kita, bukan 3.9.1 pohon ==="
P=$OUT/system/vendor/lib/libprotobuf-cpp-lite.so
if [ -f "$P" ]; then
  if [ "$(stat -c%s "$P")" != "$(stat -c%s "$OUT/system/lib/libprotobuf-cpp-lite.so" 2>/dev/null || echo x)" ]; then
    ok "berbeda dari /system/lib ($(stat -c%s "$P") byte vs $(stat -c%s "$OUT/system/lib/libprotobuf-cpp-lite.so" 2>/dev/null) byte)"
  else bad "ukurannya sama dengan /system/lib -- curiga tertukar"; fi
fi

echo "=== 4. penutupan simbol protobuf yang dituntut libwvhidl.so ==="
readelf --dyn-syms -W "$VEN/vendor/lib/libwvhidl.so" | awk '$7=="UND"{print $8}' | sed 's/@.*//' | sort -u > $T/und.txt
grep -E "protobuf|google" $T/und.txt | sort -u > $T/butuh.txt
readelf --dyn-syms -W "$P" 2>/dev/null | awk '$7!="UND" && ($4=="FUNC"||$4=="OBJECT"){print $8}' | sed 's/@.*//' | sort -u > $T/ada.txt
comm -23 $T/butuh.txt $T/ada.txt > $T/hilang.txt
n_butuh=$(wc -l < $T/butuh.txt); n_hilang=$(wc -l < $T/hilang.txt)
if [ "$n_hilang" -eq 0 ]; then ok "$n_butuh/$n_butuh simbol protobuf terpenuhi"
else bad "$n_hilang dari $n_butuh simbol HILANG:"; while read s; do echo "            $(c++filt "$s")"; done < $T/hilang.txt; fi

echo "=== 5. .rc memuat setenv LD_LIBRARY_PATH ==="
R=$OUT/system/vendor/etc/init/android.hardware.drm@1.1-service.widevine.rc
grep -q "setenv LD_LIBRARY_PATH /vendor/lib" "$R" 2>/dev/null && ok "setenv ada" || bad "setenv LD_LIBRARY_PATH hilang dari .rc terpasang"

echo "=== 6. manifest memuat fqname widevine, dalam SATU blok drm ==="
M=$OUT/system/vendor/etc/vintf/manifest.xml
if [ -f "$M" ]; then
  grep -q "@1.1::IDrmFactory/widevine" "$M" && ok "fqname IDrmFactory/widevine" || bad "fqname IDrmFactory/widevine tidak ada"
  n=$(grep -c "<name>android.hardware.drm</name>" "$M")
  [ "$n" -eq 1 ] && ok "hanya 1 blok hal drm (dua blok = manifest ditolak -22)" || bad "ada $n blok hal drm"
fi

echo "=== 7. label sepolicy ==="
FC=$OUT/system/vendor/etc/selinux/vendor_file_contexts
grep -q "drm@1\\\\.1-service\\\\.widevine" "$FC" 2>/dev/null && ok "biner widevine terlabeli" || bad "label widevine tidak ada di vendor_file_contexts"

echo
[ "$gagal" -eq 0 ] && echo "PUTUSAN: LULUS" || echo "PUTUSAN: $gagal GAGAL"
exit $gagal

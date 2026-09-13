#!/usr/bin/env bash
# Uji pelepasan enam pin anti-hanyut, 13 September 2026.
#
# Pertanyaan: apakah keenam pin di A37-20-64bit.xml masih dibutuhkan di basis
# official hari ini? PLAN-OFFICIAL sec.0.2b mengklaim ya, tetapi buktinya hanya
# "m <modul> exit 0" SESUDAH dipin -- bukan log kegagalan tanpa pin.
#
# Dua putaran memakai target yang sama persis dengan M4:
#   A  keenam dipin (keadaan manifest sekarang)  -> bukti "sebelum" yang hilang
#   B  keenam dilepas ke lineage-20.0 HEAD       -> menjawab pertanyaannya
#
# ATURAN: dng_sdk dan skia dilepas BERPASANGAN. skia HEAD menuntut API dng_sdk
# 1.7.1; melepas salah satu saja pasti gagal, dan itu bisa menjelaskan kenapa M4
# menyimpulkan "keenamnya memutus build".
#
# CATATAN: JANGAN pakai `set -u`. build/envsetup.sh menyentuh banyak variabel
# tak terdefinisi dan akan mematikan shell seketika -- percobaan pertama skrip
# ini mati tanpa jejak persis karena itu.
set -o pipefail
export SOONG_GOMEMLIMIT=6GiB   # wajib: analisis dua arsitektur, mesin 11 GB
TOP=/root/los20; cd "$TOP" || exit 2
LOG="$TOP/work/uji-pin-$(date +%Y%m%d_%H%M%S)"; mkdir -p "$LOG"
TARGETS="libskia MmsService TeleService Launcher3QuickStepLib Settings-core"

PIN="external/dng_sdk:880b6833f9d5e131a8d9f92d6d0a836514fc711e
external/skia:0c334c1c2f0fdc89a5f90dddcbe195e160baf02d
packages/services/Mms:0cc94f1ad63e6a821888784dd1c5aa945f2c4202
packages/services/Telephony:288c28358b9cd9c2be1dd13c729668b18eb37550
packages/apps/Trebuchet:1273734a5f484a30dafa5aaecda49f0635b24672
packages/apps/Settings:823af438e1ebca33ec8fd601a124f14831430e7d"

pasang_pin() {
  echo "$PIN" | while IFS=: read -r p sha; do
    git -C "$p" checkout -q "$sha" 2>/dev/null \
      && printf "  %-30s %s\n" "$p" "$(git -C "$p" log -1 --format='%h %ad' --date=short)" \
      || printf "  %-30s GAGAL checkout %s\n" "$p" "$sha"
  done
}

lepas_pin() {
  echo "$PIN" | while IFS=: read -r p sha; do
    url=$(git -C "$p" remote -v | awk 'NR==1{print $2}')
    git -C "$p" fetch -q "$url" lineage-20.0 2>/dev/null
    git -C "$p" checkout -q FETCH_HEAD 2>/dev/null \
      && printf "  %-30s %s\n" "$p" "$(git -C "$p" log -1 --format='%h %ad' --date=short)" \
      || printf "  %-30s GAGAL\n" "$p"
  done
}

jalankan() {
  local r=$1
  # HANDOFF: source envsetup-a37.sh, JANGAN lunch langsung.
  source /root/a37-20/tools/envsetup-a37.sh > "$LOG/$r-lunch.log" 2>&1
  local arch; arch=$(get_build_var TARGET_ARCH 2>/dev/null)
  if [ -z "$arch" ]; then echo "  LUNCH GAGAL -- lihat $LOG/$r-lunch.log"; return 2; fi
  echo "  (lunch ok, TARGET_ARCH=$arch)"
  for t in $TARGETS; do
    printf "  %-26s " "$t"
    local t0=$SECONDS
    if m "$t" > "$LOG/$r-$t.log" 2>&1; then
      echo "LOLOS  ($((SECONDS-t0))s)"
    else
      echo "GAGAL  ($((SECONDS-t0))s) -> $LOG/$r-$t.log"
    fi
  done
}

{
echo "=== PUTARAN A — keenam DIPIN ==="
pasang_pin
jalankan A

echo
echo "=== melepas keenam pin ke lineage-20.0 HEAD ==="
lepas_pin

echo
echo "=== PUTARAN B — keenam DILEPAS ==="
jalankan B

echo
echo "log lengkap: $LOG"
} 2>&1 | tee "$LOG/ringkasan.txt"

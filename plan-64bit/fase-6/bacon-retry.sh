#!/usr/bin/env bash
# Aturan pengguna 13 Sep 2026: kalau -j10 OOM DUA KALI BERTURUT-TURUT, turun ke -j6.
#
# Ini ada karena kegagalan OOM TIDAK terlihat seperti kegagalan kode. ninja
# melaporkannya sebagai "FAILED:" pada berkas yang acak-acakan, berbeda tiap
# percobaan, tanpa pesan kompilator yang masuk akal. Menafsirkannya dengan mata
# mudah keliru -- karena itu tandanya dideteksi dari daftar di bawah, dan dari
# dmesg kernel yang tidak berbohong.
#
# JANGAN pakai `set -u`: build/envsetup.sh menyentuh banyak variabel tak
# terdefinisi dan shell mati seketika tanpa jejak.
set -o pipefail
TOP=/root/los20; cd "$TOP" || exit 2
export SOONG_GOMEMLIMIT=6GiB

J=${J_AWAL:-10}
oom_beruntun=0
percobaan=0

oom_terdeteksi() {   # $1 = berkas log
  grep -qiE "cc1plus: out of memory|virtual memory exhausted|Killed process|signal 9|: Killed" "$1" && return 0
  # ninja membunuh subproses saat kehabisan memori: FAILED tanpa galat kompilator
  if grep -q "^FAILED:" "$1" && ! grep -qE "^[^ ]+:[0-9]+:[0-9]+: (error|fatal error):" "$1"; then return 0; fi
  # bukti dari kernel, yang paling tidak ambigu
  dmesg 2>/dev/null | tail -200 | grep -qiE "Out of memory: Kill|oom-kill" && return 0
  return 1
}

while :; do
  percobaan=$((percobaan+1))
  LOG="$TOP/work/bacon-j$J-$(date +%H%M%S).log"
  echo ":: percobaan $percobaan dengan -j$J -> $LOG"
  ( source /root/a37-20/tools/envsetup-a37.sh >/dev/null 2>&1 && m -j$J bacon ) > "$LOG" 2>&1
  if grep -q "#### build completed successfully" "$LOG"; then
    echo ":: LOLOS dengan -j$J ($LOG)"; exit 0
  fi
  if oom_terdeteksi "$LOG"; then
    oom_beruntun=$((oom_beruntun+1))
    echo ":: kegagalan berbentuk OOM, beruntun=$oom_beruntun"
    if [ "$oom_beruntun" -ge 2 ] && [ "$J" -ne 6 ]; then
      echo ":: aturan terpenuhi -- turun ke -j6"; J=6; oom_beruntun=0
    fi
    continue   # ninja melanjutkan dari titik terakhir, tidak mengulang dari nol
  fi
  echo ":: GAGAL dan BUKAN OOM -- berhenti, ini butuh dibaca manusia: $LOG"
  grep -E "^FAILED:|error:" "$LOG" | head -10
  exit 1
done

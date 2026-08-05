#!/bin/bash
# Verifikasi kernel 19.1 di PERANGKAT yang sedang hidup, lewat adb.
#
# Dijalankan setelah A37-kernel-19.1-*.zip di-flash di atas ROM yang sudah
# terpasang (protokol §9.1) dan perangkat boot normal. Boot sampai homescreen
# saja belum membuktikan apa-apa soal isi kernelnya — skrip ini membuktikannya.
#
# Pakai: ./tools/verify-device.sh
#        ADB=/path/ke/adb ./tools/verify-device.sh

set -o pipefail
ADB="${ADB:-adb}"
REF="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/ref/evidence/kernel-config-reference.txt"

ok()  { printf '\033[1;32m ok\033[0m %s\n' "$*"; }
bad() { printf '\033[1;31m  X\033[0m %s\n' "$*"; fail=1; }
inf() { printf '\033[1;34m::\033[0m %s\n' "$*"; }
fail=0

command -v "$ADB" >/dev/null || { echo "adb tidak ada di PATH" >&2; exit 1; }
"$ADB" get-state >/dev/null 2>&1 || { echo "perangkat tidak terhubung — cek 'adb devices'" >&2; exit 1; }

sh_() { "$ADB" shell "$@" 2>/dev/null | tr -d '\r'; }

# ------------------------------------------------------------------ kernel ---
inf "identitas kernel"
ver=$(sh_ cat /proc/version)
echo "    $ver"
case "$ver" in
    *"3.10.108"*) ok "versi 3.10.108" ;;
    *)            bad "versi tidak terduga" ;;
esac
case "$ver" in
    *aarch64*|*"(gcc"*) : ;;
esac

# ------------------------------------------------------------------ binder ---
# Inti Fase 1. Boot sampai homescreen sudah menyiratkan binder jalan, tapi
# pastikan KETIGA device node ada — hwbinder dan vndbinder yang dipakai HAL.
inf "binder"
for d in binder hwbinder vndbinder; do
    if [ -n "$(sh_ ls /dev/$d 2>/dev/null)" ]; then ok "/dev/$d ada"
    else bad "/dev/$d TIDAK ada"; fi
done

# binder_alloc adalah pemisahan alokator yang di-backport di Fase 1. Kalau
# tersedia, /sys/kernel/debug/binder/ memuat jejaknya.
st=$(sh_ su -c 'cat /sys/kernel/debug/binder/stats 2>/dev/null' | head -40)
if [ -n "$st" ]; then
    ok "debugfs binder terbaca"
    echo "$st" | grep -iE "^BC_|^BR_" | head -4 | sed 's/^/    /'
else
    inf "  (debugfs binder butuh root; dilewati — bukan kegagalan)"
fi

# --------------------------------------------------------------- .config ---
# CONFIG_IKCONFIG_PROC=y adalah keunggulan kita atas ROM referensi: konfigurasi
# kernel yang BENAR-BENAR jalan bisa ditarik dari perangkat dan dibandingkan.
inf "/proc/config.gz vs konfigurasi ROM referensi"
tmp=$(mktemp)
if "$ADB" shell 'zcat /proc/config.gz' 2>/dev/null | tr -d '\r' > "$tmp" && [ -s "$tmp" ]; then
    ok "$(grep -c . "$tmp") baris terbaca dari perangkat"
    for sym in ARM64 COMPAT ANDROID_BINDER_IPC SECCOMP_FILTER PSTORE_RAM MEMCG FUSE_FS SDCARD_FS; do
        d=$(grep -E "^(# )?CONFIG_$sym[ =]" "$tmp" | head -1)
        r=$(grep -E "^(# )?CONFIG_$sym[ =]" "$REF" 2>/dev/null | head -1)
        if [ "$d" = "$r" ]; then ok "  $sym sama dengan referensi — $d"
        else printf '\033[1;33m  !\033[0m  %s beda: device=%s referensi=%s\n' "$sym" "${d:-tidak-ada}" "${r:-tidak-ada}"; fi
    done
    dev_bd=$(grep "^CONFIG_ANDROID_BINDER_DEVICES=" "$tmp" | head -1)
    [ -n "$dev_bd" ] && ok "  $dev_bd"
else
    bad "/proc/config.gz tidak terbaca — CONFIG_IKCONFIG_PROC mati?"
fi
rm -f "$tmp"

# ----------------------------------------------------------------- dmesg ---
inf "dmesg: keluhan kernel"
dm=$(sh_ su -c 'dmesg' 2>/dev/null)
[ -z "$dm" ] && dm=$(sh_ dmesg)
if [ -n "$dm" ]; then
    n_panic=$(printf '%s' "$dm" | grep -ciE "kernel panic|Oops|BUG:" || true)
    n_binder=$(printf '%s' "$dm" | grep -ciE "binder.*(fail|error|denied)" || true)
    [ "${n_panic:-0}" -eq 0 ] && ok "tidak ada panic/Oops/BUG" || bad "$n_panic baris panic/Oops/BUG"
    [ "${n_binder:-0}" -eq 0 ] && ok "tidak ada error binder" || bad "$n_binder baris error binder"
    printf '%s' "$dm" | grep -iE "binder" | head -3 | sed 's/^/    /'
else
    inf "  (dmesg butuh root di ROM ini; dilewati)"
fi

# ---------------------------------------------------------------- servis ---
# Kalau hwservicemanager sehat, seluruh HAL HIDL terdaftar. Ini bukti tidak
# langsung tapi kuat bahwa hwbinder benar-benar berfungsi, bukan cuma ada.
inf "HAL terdaftar"
nh=$(sh_ lshal --types=b 2>/dev/null | grep -c "::" || true)
if [ "${nh:-0}" -gt 5 ]; then ok "$nh antarmuka HIDL terdaftar lewat hwbinder"
else printf '\033[1;33m  !\033[0m lshal melaporkan %s — cek manual dengan: adb shell lshal\n' "${nh:-0}"; fi

echo
if [ "$fail" = 0 ]; then
    printf '\033[1;32mKERNEL SEHAT DI PERANGKAT\033[0m\n'
    cat <<'NOTE'

Yang ini TIDAK buktikan: jalur security context Android 12. keystore2 hanya ada
di A12; ROM yang sedang jalan memakai keystore1 dan tidak pernah menyetel
FLAT_BINDER_FLAG_TXN_SECURITY_CTX. Langkah berikutnya flash ROM 19.1 (§9.2).
NOTE
else
    printf '\033[1;31mADA TEMUAN\033[0m — periksa tanda X di atas sebelum lanjut ke ROM 19.1.\n'; exit 1
fi

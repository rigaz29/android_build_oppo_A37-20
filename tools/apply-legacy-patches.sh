#!/bin/bash
# apply-legacy-patches.sh — LineageOS 20 / OPPO A37
#
# WAJIB dijalankan ulang setiap habis `repo sync`. `repo sync` mengembalikan tiap
# project ke revisi manifest, jadi perubahan di sini hilang tanpa peringatan.
#
# ================== KENAPA SKRIP INI JAUH LEBIH PENDEK DARI VERSI 19.1 =========
# Versi 19.1 memuat 9 repopick Gerrit ABANDONED + 23 patch Camera HAL1 + revert
# libbfqio + perbaikan sysfs_disk_stat. Untuk LineageOS 20 basisnya bukan lagi
# LineageOS/android melainkan LineageOS-UL/android, yang sudah membawa 37 fork
# legacy. Diverifikasi di /root/los20 (5 Agustus 2026):
#
#   packages/modules/adb  -> transport_legacy.cpp ADA        (= Gerrit 326385)
#   frameworks/av         -> case 1: DeviceInfo1 ADA         (= 23 patch Camera HAL1)
#   system/bpf, system/netd -> gerbang kernel < 4.9 ADA      (= Gerrit 320591/320592)
#   art, external/perfetto  -> gerbang memfd_create ADA      (= Gerrit 318097/287706)
#
# Dan `sysfs_disk_stat` kini didefinisikan platform sendiri di
# system/sepolicy/public/file.te:20, jadi perbaikan yatim dari 19.1 (Fase 5.2)
# TIDAK diperlukan lagi -- mendefinisikannya ulang di device tree justru
# menghasilkan duplikat dan menggagalkan build.
#
# Yang TERSISA hanya dua, dan keduanya sudah dibuktikan masih perlu:
#   1. revert "Remove libbfqio"  -- hardware/qcom-caf/msm8916/display/libhwcomposer/
#                                   Android.mk:20 masih menautkan libbfqio, dan
#                                   vendor/lineage LOS 20 tidak lagi menyediakannya
#   2. guard hardware/qcom-caf/msm8916/Android.mk -- paritas dengan board qcom-caf
#                                   lain; harmless, lihat catatan di A37-20.xml
#
# Pemakaian:
#   tools/apply-legacy-patches.sh [/path/ke/tree]     # default: /root/los20
#   tools/apply-legacy-patches.sh --check [path]      # hanya lapor, tanpa ubah
#
# Idempoten. Bug idempotensi di versi 19.1 pernah menggagalkan build (PLAN.md
# 19.1 sec. 5.3), jadi setiap langkah di sini memeriksa dulu baru bertindak.

set -u

CHECK=0
[ "${1:-}" = "--check" ] && { CHECK=1; shift; }
TREE="${1:-/root/los20}"

c_ok(){ printf '\033[1;32m ok\033[0m %s\n' "$1"; }
c_do(){ printf '\033[1;34m ::\033[0m %s\n' "$1"; }
c_no(){ printf '\033[1;31m !!\033[0m %s\n' "$1"; }

[ -d "$TREE/.repo" ] || { c_no "bukan tree repo: $TREE"; exit 1; }
cd "$TREE" || exit 1

echo "== apply-legacy-patches (LineageOS 20 / A37) : $TREE =="
[ "$CHECK" = 1 ] && echo "   (mode --check, tidak mengubah apa pun)"
rc=0

# ---------------------------------------------------------------------------
# 1. revert "Remove libbfqio" di vendor/lineage
# ---------------------------------------------------------------------------
BFQ_SHA=8f67d055b36d992f2f09aa6f733aa06ee3d5b917

if [ ! -d vendor/lineage ]; then
    c_no "vendor/lineage tidak ada -- jalankan repo sync dulu"; rc=1
elif ! grep -rq "libbfqio" hardware/qcom-caf/msm8916/display/libhwcomposer/Android.mk 2>/dev/null; then
    c_ok "libbfqio: tidak lagi dirujuk hwcomposer msm8916 -- revert tidak perlu"
elif git -C vendor/lineage log --oneline -1 --grep='Revert "Remove libbfqio"' | grep -q .; then
    c_ok "libbfqio: revert sudah terpasang"
elif [ "$CHECK" = 1 ]; then
    c_do "libbfqio: PERLU revert $BFQ_SHA"
else
    c_do "libbfqio: revert $BFQ_SHA"
    if git -C vendor/lineage revert --no-edit "$BFQ_SHA" >/dev/null 2>&1; then
        c_ok "libbfqio: revert berhasil"
    else
        git -C vendor/lineage revert --abort >/dev/null 2>&1
        c_no "libbfqio: revert GAGAL -- periksa manual"; rc=1
    fi
fi

# ---------------------------------------------------------------------------
# 2. guard hardware/qcom-caf/msm8916/Android.mk
# ---------------------------------------------------------------------------
GUARD_SRC=hardware/qcom-caf/common/os_pickup.mk
GUARD_DST=hardware/qcom-caf/msm8916/Android.mk

if [ ! -d hardware/qcom-caf/msm8916 ]; then
    c_no "hardware/qcom-caf/msm8916 tidak ada -- periksa A37-20.xml lalu repo sync"; rc=1
elif [ -f "$GUARD_DST" ] && cmp -s "$GUARD_SRC" "$GUARD_DST"; then
    c_ok "guard msm8916/Android.mk: sudah terpasang"
elif [ "$CHECK" = 1 ]; then
    c_do "guard msm8916/Android.mk: PERLU dipasang"
elif [ -f "$GUARD_SRC" ]; then
    cp "$GUARD_SRC" "$GUARD_DST" && c_ok "guard msm8916/Android.mk: dipasang" \
        || { c_no "guard: gagal menyalin"; rc=1; }
else
    c_no "$GUARD_SRC tidak ada"; rc=1
fi

# ---------------------------------------------------------------------------
# 3. Penjaga regresi -- bukan patch, tapi memeriksa asumsi yang bisa berubah
#    diam-diam kalau LineageOS-UL suatu saat cair lagi (fork dipin ke BRANCH,
#    bukan SHA, di snippets/losul.xml).
# ---------------------------------------------------------------------------
echo
echo "-- penjaga regresi (asumsi yang mendasari rencana) --"

chk_file(){ # path, keterangan
    if [ -e "$1" ]; then c_ok "$2"; else c_no "$2 -- HILANG di $1"; rc=1; fi
}
chk_grep(){ # path, pola, keterangan
    if [ -f "$1" ] && grep -q "$2" "$1"; then c_ok "$3"; else c_no "$3 -- TIDAK ditemukan"; rc=1; fi
}

chk_file packages/modules/adb/transport_legacy.cpp \
         "adb: transport_legacy.cpp (= Gerrit 326385, tanpa ini tidak ada adb)"
chk_file frameworks/av/services/camera/libcameraservice/device1 \
         "camera: direktori device1 (HAL1) -- DICABUT di lineage-21.0, jangan sampai hilang di sini"
chk_grep frameworks/av/services/camera/libcameraservice/common/CameraProviderManager.cpp \
         "initializeDeviceInfo<DeviceInfo1>" \
         "camera: case 1 -> DeviceInfo1 (= 23 patch Camera HAL1 19.1)"
chk_grep frameworks/native/libs/renderengine/include/renderengine/RenderEngine.h \
         "GLES = 1" \
         "RenderEngine: backend GLES masih ada (= perbaikan 10.B)"
chk_grep system/sepolicy/public/file.te "type sysfs_disk_stat" \
         "sepolicy: sysfs_disk_stat didefinisikan platform (jangan definisikan ulang)"

echo
[ "$rc" = 0 ] && c_ok "selesai -- semua langkah beres" || c_no "selesai dengan peringatan (rc=$rc)"
exit $rc

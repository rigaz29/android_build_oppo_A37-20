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
# Dan `sysfs_disk_stat`: fork UL sempat mendefinisikannya di
# system/sepolicy/public/file.te, tapi dengan posisi yang tak konsisten terhadap
# snapshot bekunya sehingga memutus sepolicy_freeze_test (Fase 5). Hulu sudah
# membuang tipe itu; langkah 3 di bawah menyelaraskan fork UL dengan hulu.
# Device tree tetap TIDAK boleh mendefinisikannya (duplikat).
#
# Yang TERSISA hanya dua, dan keduanya sudah dibuktikan masih perlu:
#   1. revert "Remove libbfqio"  -- hardware/qcom-caf/msm8916/display/libhwcomposer/
#                                   Android.mk:20 masih menautkan libbfqio, dan
#                                   vendor/lineage LOS 20 tidak lagi menyediakannya
#   2. guard hardware/qcom-caf/msm8916/Android.mk -- paritas dengan board qcom-caf
#                                   lain; harmless, lihat catatan di A37-20.xml
# plus langkah 3: buang sysfs_disk_stat dari system/sepolicy (Fase 5).
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
# 3. system/sepolicy: buang tipe mati sysfs_disk_stat (pemblokir Fase 5)
# ---------------------------------------------------------------------------
# Fork UL LineageOS-UL/android_system_sepolicy lineage-20.0 membeku dengan
# inkonsistensi internal: cherry-pick 2018 "Fix storaged access to
# /sys/block/mmcblk0/stat" (a6cfe58e0) menaruh tipe sysfs_disk_stat di posisi
# berbeda antara public/private dan snapshot beku prebuilts/api/33.0. Akibatnya
# sepolicy_freeze_test gagal (dipaksa hanya bila PLATFORM_SEPOLICY_VERSION !=
# TOT_SEPOLICY_VERSION; system/sepolicy/Android.mk:359-362):
#
#   FAILED: sepolicy_freeze_test
#   Files system/sepolicy/public/file.te and .../api/33.0/public/file.te differ
#
# Hulu LineageOS lineage-20.0 TIDAK punya tipe ini sama sekali (sudah dibuang);
# tipe ini juga tidak dipakai device tree A37 (nol referensi di device/oppo/A37
# dan vendor/oppo). Jadi penyelesaiannya: selaraskan dengan hulu — buang tipe
# dari system/sepolicy (public, private, dan snapshot 29.0-33.0: 32 berkas)
# serta referensinya di device/qcom/sepolicy-legacy/legacy-common/file_contexts
# (2 baris label mmcblk/sdhci). Dengan itu public/ == snapshot 33.0 dan
# private/ == snapshot 33.0, dan vendor_file_contexts_test lolos.
SEPOLICY_PATCHED=1

SEPOLICY_DIRS="system/sepolicy device/qcom/sepolicy-legacy"

if [ ! -d system/sepolicy ]; then
    c_no "system/sepolicy tidak ada -- periksa manifest"; rc=1
elif ! grep -rq "sysfs_disk_stat" $SEPOLICY_DIRS 2>/dev/null; then
    c_ok "sepolicy: sysfs_disk_stat sudah dibuang"
elif [ "$CHECK" = 1 ]; then
    c_do "sepolicy: PERLU buang sysfs_disk_stat ($(grep -rl "sysfs_disk_stat" $SEPOLICY_DIRS | wc -l) berkas)"
else
    c_do "sepolicy: buang sysfs_disk_stat"
    # Baris yang dihapus (semua baris yang memuat string -- jenisnya hanya:
    #   file.te       : type sysfs_disk_stat, fs_type, sysfs_type;
    #   storaged.te   : blok komentar + r_dir_file(storaged, sysfs_disk_stat)
    #   *.ignore.cil  : "    sysfs_disk_stat"
    #   file_contexts : label u:object_r:sysfs_disk_stat:s0
    # Tidak ada baris lain yang sah memuat string ini di kedua repo.)
    grep -rl "sysfs_disk_stat" $SEPOLICY_DIRS | while read -r f; do
        sed -i '/sysfs_disk_stat/d' "$f" \
            || { c_no "sepolicy: gagal mengedit $f"; rc=1; }
    done
    if grep -rq "sysfs_disk_stat" $SEPOLICY_DIRS 2>/dev/null; then
        c_no "sepolicy: masih tersisa -- periksa manual"; rc=1
    else
        c_ok "sepolicy: sysfs_disk_stat dibuang (freeze test + file_contexts_test)"
    fi
fi

# ---------------------------------------------------------------------------
# 4. vendor/lineage/build/soong/Android.bp: HOSTCFLAGS untuk generator
#    generated_kernel_includes (pemblokir Fase 8)
# ---------------------------------------------------------------------------
# LOS 20 menaruh -fuse-ld=lld hanya di HOSTLDFLAGS (config/BoardConfigKernel.mk:167).
# Kernel 3.10 tidak memakai HOSTLDFLAGS untuk rule host-csingle
# (scripts/Makefile.host:117) yang dipakai fixdep, sehingga clang mencari `ld`
# polos yang tidak ada di PATH sandbox soong:
#
#   FAILED: generated_kernel_includes
#   clang-14: error: unable to execute command: Executable "ld" doesn't exist!
#
# Di 19.1 perbaikan ini datang dari TARGET_KERNEL_ADDITIONAL_FLAGS (HOSTCFLAGS),
# tapi itu digabung ke KERNEL_MAKE_FLAGS di tasks/kernel.mk yang TERLAMBAT —
# ekspor ke soong (BoardConfigSoong.mk) sudah terjadi lebih dulu, jadi generator
# tidak pernah melihatnya. Ditambahkan langsung ke cmd generator di sini.
GENBP=vendor/lineage/build/soong/Android.bp
GENBP_PAT='HOSTCFLAGS=\\"-fuse-ld=lld -Wno-unused-command-line-argument\\"'

if [ ! -f "$GENBP" ]; then
    c_no "$GENBP tidak ada -- periksa manifest"; rc=1
elif grep -q "$GENBP_PAT" "$GENBP"; then
    c_ok "kernel headers generator: HOSTCFLAGS sudah terpasang"
elif [ "$CHECK" = 1 ]; then
    c_do "kernel headers generator: PERLU tambah HOSTCFLAGS"
else
    c_do "kernel headers generator: tambah HOSTCFLAGS"
    if sed -i 's|\(cmd: "\$PATH_OVERRIDE_SOONG.*\$KERNEL_MAKE_FLAGS\) \(.*headers_install"\),|\1 HOSTCFLAGS=\\"-fuse-ld=lld -Wno-unused-command-line-argument\\" \2,|' "$GENBP" \
        && grep -q "$GENBP_PAT" "$GENBP"; then
        c_ok "kernel headers generator: HOSTCFLAGS ditambahkan"
    else
        c_no "kernel headers generator: sed GAGAL -- patch manual"; rc=1
    fi
fi

# ---------------------------------------------------------------------------
# 5. hardware/qcom-caf/msm8916/display/common.mk: -Wno-error=enum-enum-conversion
# ---------------------------------------------------------------------------
# Clang 14 (clang-r450784d, dipakai LOS 20) menaruh -Wenum-enum-conversion di
# -Wall; display HAL CAF 2015 mencampur enum (mis. copybit_c2d.cpp:259)
# C2D_RGB_FORMAT | C2D_FORMAT_MODE, dan common.mk memaksa -Werror:
#
#   error: bitwise operation between different enumeration types
#   [-Werror,-Wenum-enum-conversion]
#
# Di 19.1 (clang 12, clang-r416183b1) warning ini belum ada di -Wall sehingga
# file yang sama lolos. Tidak boleh via BOARD_GLOBAL_CFLAGS: -Werror lokal
# display datang SETELAH flag global dan menaikkan lagi peringatan ini.
DISP_COMMON=hardware/qcom-caf/msm8916/display/common.mk
DISP_PAT='-Wno-error=enum-enum-conversion'

if [ ! -f "$DISP_COMMON" ]; then
    c_no "$DISP_COMMON tidak ada -- periksa manifest"; rc=1
elif grep -qe "$DISP_PAT" "$DISP_COMMON"; then
    c_ok "display common.mk: enum-enum-conversion sudah diredam"
elif [ "$CHECK" = 1 ]; then
    c_do "display common.mk: PERLU tambah -Wno-error=enum-enum-conversion"
else
    c_do "display common.mk: tambah -Wno-error=enum-enum-conversion"
    if sed -i 's|\(common_flags += -Wconversion -Wall -Werror -Wno-sign-conversion\)|\1 -Wno-error=enum-enum-conversion|' "$DISP_COMMON" \
        && grep -qe "$DISP_PAT" "$DISP_COMMON"; then
        c_ok "display common.mk: enum-enum-conversion diredam"
    else
        c_no "display common.mk: sed GAGAL -- patch manual"; rc=1
    fi
fi

# ---------------------------------------------------------------------------
# 6. packages/modules/Bluetooth: toleransi opcode vendor tanpa OGF
#    (perbaikan crash BT — Fase 10)
# ---------------------------------------------------------------------------
# Controller BT WCNSS A37 mengembalikan respons perintah HCI vendor dengan
# opcode yang hanya memuat OCF (OGF vendor 0xFC00 hilang): menunggu 0xFD57
# (HCI_BLE_ADV_FILTER), respons datang dengan 0x157. Assertion gd
# (hci_layer.cc:183) lalu mematikan proses com.android.bluetooth (SIGABRT):
#
#   Abort message: 'assertion 'waiting_command_ == op_code' failed -
#   Waiting for 0xfd57 (LE_ADV_FILTER), got 0x157 (Unknown OpCode: 343)'
#
# Akibat: BT selalu kembali OFF (DeadObjectException), baik saat boot
# maupun toggle manual. Dispatch respons gd memakai front antrian (bukan
# lookup per-opcode), jadi membandingkan OCF saja sudah cukup.
BT_HCI=packages/modules/Bluetooth/system/gd/hci/hci_layer.cc
BT_PAT='waiting_is_vendor'

if [ ! -f "$BT_HCI" ]; then
    c_no "$BT_HCI tidak ada -- periksa manifest"; rc=1
elif grep -q "$BT_PAT" "$BT_HCI"; then
    c_ok "bluetooth hci_layer: toleransi opcode vendor sudah terpasang"
elif [ "$CHECK" = 1 ]; then
    c_do "bluetooth hci_layer: PERLU tambah toleransi opcode vendor (crash BT)"
else
    c_do "bluetooth hci_layer: tambah toleransi opcode vendor"
    if python3 - "$BT_HCI" <<'PY'
import sys
p = sys.argv[1]
src = open(p).read()
old = '''    ASSERT_LOG(waiting_command_ == op_code, "Waiting for 0x%02hx (%s), got 0x%02hx (%s)", waiting_command_,
               OpCodeText(waiting_command_).c_str(), op_code, OpCodeText(op_code).c_str());'''
new = '''    bool waiting_is_vendor = static_cast<int>(waiting_command_) & (0x3f << 10);
    if (waiting_is_vendor) {
      // Some legacy controllers (e.g. Qualcomm WCNSS on msm8916) echo vendor
      // command responses with only the OCF field, dropping the vendor OGF.
      // Compare only the OCF so the response is accepted and dispatched to
      // the waiting command callback (dispatch is by queue front, not by
      // opcode, so the rest of the pipeline works unchanged).
      ASSERT_LOG((static_cast<int>(waiting_command_) & 0x03ff) == (static_cast<int>(op_code) & 0x03ff),
                 "Waiting for 0x%02hx (%s), got 0x%02hx (%s)", waiting_command_,
                 OpCodeText(waiting_command_).c_str(), op_code, OpCodeText(op_code).c_str());
    } else {
      ASSERT_LOG(waiting_command_ == op_code, "Waiting for 0x%02hx (%s), got 0x%02hx (%s)", waiting_command_,
                 OpCodeText(waiting_command_).c_str(), op_code, OpCodeText(op_code).c_str());
    }'''
if old not in src:
    print("PEMBUKA TIDAK DITEMUKAN — patch manual diperlukan", file=sys.stderr)
    sys.exit(1)
open(p, 'w').write(src.replace(old, new, 1))
PY
    then
        grep -q "$BT_PAT" "$BT_HCI" && c_ok "bluetooth hci_layer: toleransi opcode vendor terpasang" \
            || { c_no "bluetooth hci_layer: patch GAGAL -- periksa manual"; rc=1; }
    else
        c_no "bluetooth hci_layer: python GAGAL -- periksa manual"; rc=1
    fi
fi

# ---------------------------------------------------------------------------
# 7. Penjaga regresi -- bukan patch, tapi memeriksa asumsi yang bisa berubah
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
if grep -rq "sysfs_disk_stat" system/sepolicy/public system/sepolicy/private 2>/dev/null; then
    c_no "sepolicy: sysfs_disk_stat masih di platform -- langkah 3 belum jalan / hulu cair lagi"; rc=1
else
    c_ok "sepolicy: sysfs_disk_stat sudah dibuang dari platform"
fi
if grep -rq "sysfs_disk_stat" device/qcom/sepolicy-legacy 2>/dev/null; then
    c_no "sepolicy: sysfs_disk_stat masih di sepolicy-legacy -- langkah 3 belum jalan"; rc=1
else
    c_ok "sepolicy: sepolicy-legacy bersih dari sysfs_disk_stat"
fi
if grep -rq "sysfs_disk_stat" device/oppo/A37 vendor/oppo 2>/dev/null; then
    c_no "sepolicy: sysfs_disk_stat terdefinisi di device tree -- duplikat"; rc=1
else
    c_ok "sepolicy: device tree tidak mendefinisikan sysfs_disk_stat"
fi

echo
[ "$rc" = 0 ] && c_ok "selesai -- semua langkah beres" || c_no "selesai dengan peringatan (rc=$rc)"
exit $rc

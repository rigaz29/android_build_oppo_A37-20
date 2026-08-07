#!/bin/bash
# apply-official-patches.sh — LineageOS 20 / OPPO A37, BASIS OFFICIAL
#
# Penerus tools/apply-legacy-patches.sh untuk basis LineageOS official
# (PLAN-OFFICIAL.md fase M3). WAJIB dijalankan ulang setiap habis `repo sync`:
# sync mengembalikan tiap project ke revisi manifest, jadi commit patch di bawah
# hilang tanpa peringatan.
#
# Sumber patch: patches/official/<repo>/*.patch (ekstraksi fase M1; peta tier di
# patches/official/MANIFEST.md). Urutan aplikasi = urutan nomor berkas
# (kronologis). git am dipakai agar riwayat commit asli UL terbawa.
#
# Perbedaan dengan skrip lama (basis UL):
#   - revert libbfqio TIDAK lagi langkah terpisah — sudah termasuk seri
#     vendor_lineage/0013 (verifikasi di penjaga regresi).
#   - langkah sysfs_disk_stat sisi system/sepolicy hilang — official tidak punya
#     tipe itu dari sananya. Sisi device/qcom/sepolicy-legacy TETAP ada (langkah K).
#   - patch T3 (bionic/jemalloc/wlan) opt-in lewat flag --t3.
#
# Pemakaian:
#   tools/apply-official-patches.sh [--check] [--t3] [/path/ke/tree]
#     --check : hanya lapor, tanpa mengubah
#     --t3    : ikut terapkan tier 3 (kondisional; baca MANIFEST dulu)
#     default tree: /root/los20

set -u

CHECK=0
T3=0
for a in "$@"; do
  case "$a" in
    --check) CHECK=1 ;;
    --t3)    T3=1 ;;
    *)       TREE_ARG="$a" ;;
  esac
done
TREE="${TREE_ARG:-/root/los20}"
PATCHES="$(cd "$(dirname "$0")/.." && pwd)/patches/official"

c_ok(){ printf '\033[1;32m ok\033[0m %s\n' "$1"; }
c_do(){ printf '\033[1;34m ::\033[0m %s\n' "$1"; }
c_no(){ printf '\033[1;31m !!\033[0m %s\n' "$1"; }

[ -d "$TREE/.repo" ] || { c_no "bukan tree repo: $TREE"; exit 1; }
[ -d "$PATCHES" ] || { c_no "patches/official tidak ada di $PATCHES"; exit 1; }
cd "$TREE" || exit 1

echo "== apply-official-patches (basis LineageOS official) : $TREE =="
[ "$CHECK" = 1 ] && echo "   (mode --check, tidak mengubah apa pun)"
[ "$T3" = 1 ] && echo "   (--t3: tier kondisional ikut diterapkan)"
rc=0

# ---------------------------------------------------------------------------
# Penerapan seri patch per repo
# ---------------------------------------------------------------------------
# tier path-patch path-tree
SERIES="\
T0 packages_modules_adb          packages/modules/adb
T0 art                           art
T0 system_bpf                    system/bpf
T0 external_perfetto             external/perfetto
T0 frameworks_libs_net           frameworks/libs/net
T0 packages_modules_NetworkStack packages/modules/NetworkStack
T1 vendor_lineage                vendor/lineage
T1 system_core                   system/core
T1 system_netd                   system/netd
T1 packages_modules_Connectivity packages/modules/Connectivity
T1 system_sepolicy               system/sepolicy
T1 device_lineage_sepolicy       device/lineage/sepolicy
T1 hardware_interfaces           hardware/interfaces
T1 frameworks_native             frameworks/native
T1 packages_modules_Wifi         packages/modules/Wifi
T1 packages_modules_Bluetooth    packages/modules/Bluetooth
T2 frameworks_av                 frameworks/av
T2 frameworks_base               frameworks/base"

SERIES_T3="\
T3 bionic                        bionic
T3 external_jemalloc_new         external/jemalloc_new
T3 hardware_qcom-caf_wlan        hardware/qcom-caf/wlan"

apply_series(){ # dirpatch pathtree
  local dp="$1" pt="$2"
  local patches last_subj n
  patches=$(ls "$PATCHES/$dp"/0*.patch 2>/dev/null | sort)
  if [ -z "$patches" ]; then
    c_no "$pt: tidak ada patch di $PATCHES/$dp"; rc=1; return
  fi
  n=$(echo "$patches" | wc -l)
  last_subj=$(grep -m1 '^Subject:' "$(echo "$patches" | tail -1)" \
              | sed 's/^Subject: //; s/^\[PATCH [0-9/]*\] //')
  # Idempotensi: subjek patch terakhir sudah ada di riwayat = seri terpasang
  if git -C "$pt" log --format=%s -n "$n" 2>/dev/null | grep -qxF "$last_subj"; then
    c_ok "$pt: $n patch sudah terpasang"
    return
  fi
  if [ "$CHECK" = 1 ]; then
    c_do "$pt: PERLU $n patch (terakhir: $last_subj)"
    return
  fi
  if [ -n "$(git -C "$pt" status --porcelain 2>/dev/null)" ]; then
    c_no "$pt: working tree kotor — selesaikan/stash dulu"; rc=1; return
  fi
  c_do "$pt: menerapkan $n patch"
  if git -C "$pt" am --quiet $patches; then
    c_ok "$pt: $n patch diterapkan"
  else
    local gagal
    gagal=$(git -C "$pt" am --show-current-patch 2>/dev/null | grep -m1 '^Subject:' | sed 's/^Subject: //')
    git -C "$pt" am --abort >/dev/null 2>&1
    c_no "$pt: KONFLIK di '$gagal'"
    c_no "  SOP: cd $pt && git am -3 <patch gagal>; selesaikan; git am --continue;"
    c_no "       lalu perbarui seri di patches/official/$dp dari hasilnya."
    rc=1
  fi
}

while read -r tier dp pt; do
  [ -z "${tier:-}" ] && continue
  apply_series "$dp" "$pt"
done <<< "$SERIES"

if [ "$T3" = 1 ]; then
  c_do "tier 3 (kondisional) — bionic 0002 memengaruhi TARGET_PROCESS_SDK_VERSION_OVERRIDE; baca MANIFEST"
  while read -r tier dp pt; do
    [ -z "${tier:-}" ] && continue
    apply_series "$dp" "$pt"
  done <<< "$SERIES_T3"
fi

# ---------------------------------------------------------------------------
# Langkah warisan (dibawa dari apply-legacy-patches.sh, diverifikasi untuk
# basis official)
# ---------------------------------------------------------------------------

# G. guard hardware/qcom-caf/msm8916/Android.mk (paritas board qcom-caf lain)
GUARD_SRC=hardware/qcom-caf/common/os_pickup.mk
GUARD_DST=hardware/qcom-caf/msm8916/Android.mk
if [ ! -d hardware/qcom-caf/msm8916 ]; then
  c_no "hardware/qcom-caf/msm8916 tidak ada -- periksa A37-20-official.xml"; rc=1
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

# H. HOSTCFLAGS generator kernel headers (pemblokir Fase 8 PLAN lama).
# Regresi -fuse-ld=lld di HOSTLDFLAGS diverifikasi masih ada atau tidak di
# vendor/lineage official; bila cmd generator tak punya HOSTCFLAGS, tambahkan.
GENBP=vendor/lineage/build/soong/Android.bp
GENBP_PAT='HOSTCFLAGS=\\"-fuse-ld=lld -Wno-unused-command-line-argument\\"'
if [ ! -f "$GENBP" ]; then
  c_no "$GENBP tidak ada"; rc=1
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
    c_no "kernel headers generator: sed GAGAL — periksa manual (format soong mungkin berubah)"; rc=1
  fi
fi

# I. display CAF 2015 vs clang 14 (-Wenum-enum-conversion). Repo pin
# lineage-19.0-caf-msm8916 tidak berubah, jadi langkah ini tetap sama.
DISP_COMMON=hardware/qcom-caf/msm8916/display/common.mk
DISP_PAT='-Wno-error=enum-enum-conversion'
if [ ! -f "$DISP_COMMON" ]; then
  c_no "$DISP_COMMON tidak ada"; rc=1
elif grep -qe "$DISP_PAT" "$DISP_COMMON"; then
  c_ok "display common.mk: enum-enum-conversion sudah diredam"
elif [ "$CHECK" = 1 ]; then
  c_do "display common.mk: PERLU tambah -Wno-error=enum-enum-conversion"
else
  if sed -i 's|\(common_flags += -Wconversion -Wall -Werror -Wno-sign-conversion\)|\1 -Wno-error=enum-enum-conversion|' "$DISP_COMMON" \
      && grep -qe "$DISP_PAT" "$DISP_COMMON"; then
    c_ok "display common.mk: enum-enum-conversion diredam"
  else
    c_no "display common.mk: sed GAGAL -- patch manual"; rc=1
  fi
fi

# K. device/qcom/sepolicy-legacy: buang 2 baris label sysfs_disk_stat
# (tipenya tidak ada di official; checkfc menolak). Sisi system/sepolicy
# tidak perlu disentuh — official bersih dari sananya.
SEPLEG=device/qcom/sepolicy-legacy
if [ ! -d "$SEPLEG" ]; then
  c_no "$SEPLEG tidak ada -- periksa pin di A37-20-official.xml"; rc=1
elif ! grep -rq "sysfs_disk_stat" "$SEPLEG" 2>/dev/null; then
  c_ok "sepolicy-legacy: bersih dari sysfs_disk_stat"
elif [ "$CHECK" = 1 ]; then
  c_do "sepolicy-legacy: PERLU buang sysfs_disk_stat"
else
  grep -rl "sysfs_disk_stat" "$SEPLEG" | while read -r f; do
    sed -i '/sysfs_disk_stat/d' "$f"
  done
  if grep -rq "sysfs_disk_stat" "$SEPLEG" 2>/dev/null; then
    c_no "sepolicy-legacy: masih tersisa"; rc=1
  else
    c_ok "sepolicy-legacy: sysfs_disk_stat dibuang"
  fi
fi

# L. Bluetooth device patch 1/2 — toleransi opcode vendor tanpa OGF (PLAN lama
# langkah 6; akar: WCNSS membalas 0x157 untuk perintah 0xFD57).
BT_HCI=packages/modules/Bluetooth/system/gd/hci/hci_layer.cc
BT_PAT='waiting_is_vendor'
if [ ! -f "$BT_HCI" ]; then
  c_no "$BT_HCI tidak ada"; rc=1
elif grep -q "$BT_PAT" "$BT_HCI"; then
  c_ok "bluetooth hci_layer: toleransi opcode vendor sudah terpasang"
elif [ "$CHECK" = 1 ]; then
  c_do "bluetooth hci_layer: PERLU patch toleransi opcode vendor"
else
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
    print("PEMBUKA TIDAK DITEMUKAN — upstream berubah; patch manual diperlukan", file=sys.stderr)
    sys.exit(1)
open(p, 'w').write(src.replace(old, new, 1))
PY
  then
    grep -q "$BT_PAT" "$BT_HCI" && c_ok "bluetooth hci_layer: toleransi opcode vendor terpasang" \
        || { c_no "bluetooth hci_layer: patch GAGAL"; rc=1; }
  else
    c_no "bluetooth hci_layer: konteks upstream berubah — port manual ke HEAD official"; rc=1
  fi
fi

# M. Bluetooth device patch 2/2 — inquiry scan STANDARD (uji §10.6 PLAN lama;
# UJI: kembalikan ke SetInterlacedInquiryScan bila terbukti bukan penyebab).
BT_SCAN=packages/modules/Bluetooth/system/main/shim/btm_api.cc
BT_SCAN_PAT='SetStandardInquiryScan();'
if [ ! -f "$BT_SCAN" ]; then
  c_no "$BT_SCAN tidak ada"; rc=1
elif grep -q "$BT_SCAN_PAT" "$BT_SCAN"; then
  c_ok "bluetooth shim: inquiry scan STANDARD sudah terpasang (uji §10.6)"
elif [ "$CHECK" = 1 ]; then
  c_do "bluetooth shim: PERLU ganti interlaced -> standard inquiry scan"
else
  if python3 - "$BT_SCAN" <<'PY'
import sys
p = sys.argv[1]
src = open(p).read()
old = '''void bluetooth::shim::BTM_EnableInterlacedInquiryScan() {
  Stack::GetInstance()->GetBtm()->SetInterlacedInquiryScan();
}'''
new = '''void bluetooth::shim::BTM_EnableInterlacedInquiryScan() {
  // Uji A37: WCNSS tidak merespons inquiry HP lain dengan interlaced scan.
  // Pakai STANDARD (lihat PLAN 20 §10.6). Kembalikan ke SetInterlacedInquiryScan
  // bila terbukti bukan penyebab.
  Stack::GetInstance()->GetBtm()->SetStandardInquiryScan();
}'''
if old not in src:
    print("PEMBUKA TIDAK DITEMUKAN — upstream berubah; patch manual diperlukan", file=sys.stderr)
    sys.exit(1)
open(p, 'w').write(src.replace(old, new, 1))
PY
  then
    grep -q "$BT_SCAN_PAT" "$BT_SCAN" && c_ok "bluetooth shim: STANDARD scan terpasang" \
        || { c_no "bluetooth shim: patch GAGAL"; rc=1; }
  else
    c_no "bluetooth shim: konteks upstream berubah — port manual ke HEAD official"; rc=1
  fi
fi

# ---------------------------------------------------------------------------
# Penjaga regresi — asumsi yang bisa berubah diam-diam
# ---------------------------------------------------------------------------
echo
echo "-- penjaga regresi --"

chk_file(){ if [ -e "$1" ]; then c_ok "$2"; else c_no "$2 -- HILANG di $1"; rc=1; fi; }
chk_grep(){ if [ -f "$1" ] && grep -q "$2" "$1"; then c_ok "$3"; else c_no "$3 -- TIDAK ditemukan"; rc=1; fi; }

chk_file packages/modules/adb/transport_legacy.cpp \
         "adb: transport_legacy.cpp (tanpa ini tidak ada adb di FunctionFS 3.10)"
chk_file frameworks/av/services/camera/libcameraservice/device1 \
         "camera: direktori device1 (HAL1)"
chk_grep frameworks/av/services/camera/libcameraservice/common/CameraProviderManager.cpp \
         "initializeDeviceInfo<DeviceInfo1>" \
         "camera: case 1 -> DeviceInfo1"
chk_grep frameworks/native/libs/renderengine/include/renderengine/RenderEngine.h \
         "GLES = 1" \
         "RenderEngine: backend GLES (perbaikan 10.B)"
chk_grep vendor/lineage/config/BoardConfigSoong.mk \
         "TARGET_HAS_LEGACY_CAMERA_HAL1" \
         "vendor/lineage: flag TARGET_HAS_LEGACY_CAMERA_HAL1 hidup kembali"
chk_grep vendor/lineage/config/BoardConfigSoong.mk \
         "TARGET_HAS_MEMFD_BACKPORT" \
         "vendor/lineage: flag TARGET_HAS_MEMFD_BACKPORT hidup kembali"
chk_file vendor/lineage/build/tasks/dt_image.mk \
         "vendor/lineage: dt_image.mk (TARGET_CUSTOM_DTBTOOL=dtbToolOppo)"
chk_file vendor/lineage/libbfqio/Android.bp \
         "vendor/lineage: libbfqio kembali (seri patch 0013)"
if grep -rq "sysfs_disk_stat" system/sepolicy/public system/sepolicy/private 2>/dev/null; then
  c_no "sepolicy platform: sysfs_disk_stat MUNCUL lagi — hulu berubah?"; rc=1
else
  c_ok "sepolicy platform: bersih dari sysfs_disk_stat"
fi
if grep -rq "sysfs_disk_stat" "$SEPLEG" 2>/dev/null; then
  c_no "sepolicy-legacy: sysfs_disk_stat masih ada — langkah K belum jalan"; rc=1
else
  c_ok "sepolicy-legacy: bersih dari sysfs_disk_stat"
fi
if grep -rq "sysfs_disk_stat" device/oppo/A37 vendor/oppo 2>/dev/null; then
  c_no "device tree mendefinisikan sysfs_disk_stat — duplikat"; rc=1
else
  c_ok "device tree tidak mendefinisikan sysfs_disk_stat"
fi

echo
[ "$rc" = 0 ] && c_ok "selesai — semua langkah beres" || c_no "selesai dengan peringatan (rc=$rc)"
exit "$rc"

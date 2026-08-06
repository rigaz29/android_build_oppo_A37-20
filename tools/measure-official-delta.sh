#!/bin/bash
# Ukur delta UL vs official untuk repo-repo fork UL.
# Keluaran: work/official-delta/<path-aman>.log per repo + ringkasan.tsv
set -u
TREE=/root/los20
OUT=/root/a37-20/work/official-delta
mkdir -p "$OUT"
SUM="$OUT/ringkasan.tsv"
: > "$SUM"

measure() { # path url ref
  local p="$1" url="$2" ref="$3"
  local safe log
  safe=$(echo "$p" | tr '/' '_')
  log="$OUT/$safe.log"
  {
    echo "==== $p ===="
    cd "$TREE/$p" || { echo "TIDAK ADA DIREKTORI"; exit 1; }
    echo "UL HEAD: $(git rev-parse --short HEAD) $(git log -1 --format=%ad --date=short)"
    if ! git fetch -q "$url" "$ref" 2>/dev/null; then
      echo "FETCH GAGAL: $url $ref"
      echo -e "$p\tFETCH_GAGAL\t-\t-\t-" >> "$SUM"
      exit 1
    fi
    local off mb
    off=$(git rev-parse FETCH_HEAD)
    echo "official ($ref): $(git rev-parse --short $off) $(git log -1 --format=%ad --date=short $off)"
    mb=$(git merge-base HEAD $off 2>/dev/null || echo "")
    if [ -z "$mb" ]; then
      echo "MERGE-BASE TIDAK ADA (sejarah tak berhubungan)"
      echo -e "$p\tNO_MERGE_BASE\t-\t-\t-" >> "$SUM"
      exit 1
    fi
    echo "merge-base: $(echo $mb | cut -c1-12) $(git log -1 --format=%ad --date=short $mb)"
    local uln offn stat
    uln=$(git rev-list --count $off..HEAD)
    offn=$(git rev-list --count HEAD..$off)
    stat=$(git diff --shortstat $mb HEAD | tail -1 | sed 's/^ *//')
    echo "UL-only commits: $uln"
    echo "official-only (pasca fork): $offn"
    echo "diffstat UL (dari merge-base): ${stat:-kosong}"
    echo "--- commit UL-only ---"
    git log --oneline $off..HEAD | head -60
    echo -e "$p\t$uln\t$offn\t${stat:-kosong}\t$(git log -1 --format=%ad --date=short)" >> "$SUM"
  } > "$log" 2>&1
  tail -1 "$log" | head -1
}

# LOS fork (branch lineage-20.0 di org LineageOS)
G=https://github.com/LineageOS
measure frameworks/av               $G/android_frameworks_av.git            lineage-20.0
measure frameworks/base             $G/android_frameworks_base.git          lineage-20.0
measure frameworks/native           $G/android_frameworks_native.git        lineage-20.0
measure system/core                 $G/android_system_core.git              lineage-20.0
measure system/netd                 $G/android_system_netd.git              lineage-20.0
measure system/sepolicy             $G/android_system_sepolicy.git          lineage-20.0
measure vendor/lineage              $G/android_vendor_lineage.git           lineage-20.0
measure hardware/interfaces         $G/android_hardware_interfaces.git      lineage-20.0
measure packages/modules/Bluetooth  $G/android_packages_modules_Bluetooth.git lineage-20.0
measure packages/modules/Wifi       $G/android_packages_modules_Wifi.git    lineage-20.0
measure packages/modules/Connectivity $G/android_packages_modules_Connectivity.git lineage-20.0
measure bionic                      $G/android_bionic.git                   lineage-20.0
measure device/lineage/sepolicy     $G/android_device_lineage_sepolicy.git  lineage-20.0
measure frameworks/opt/telephony    $G/android_frameworks_opt_telephony.git lineage-20.0
measure hardware/ril                $G/android_hardware_ril.git             lineage-20.0
measure hardware/qcom-caf/wlan      $G/android_hardware_qcom_wlan.git       lineage-20.0-caf

# AOSP tag (official memaku tag android-13.0.0_r75; tidak bergerak lagi)
A=https://android.googlesource.com
measure art                         $A/platform/art                         refs/tags/android-13.0.0_r75
measure system/bpf                  $A/platform/system/bpf                  refs/tags/android-13.0.0_r75
measure external/perfetto           $A/platform/external/perfetto           refs/tags/android-13.0.0_r75
measure frameworks/libs/net         $A/platform/frameworks/libs/net         refs/tags/android-13.0.0_r75
measure external/jemalloc_new       $A/platform/external/jemalloc_new       refs/tags/android-13.0.0_r75
measure packages/modules/NetworkStack $A/platform/packages/modules/NetworkStack refs/tags/android-13.0.0_r75

echo "SELESAI"
cat "$SUM"

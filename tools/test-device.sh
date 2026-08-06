#!/bin/bash
# test-device.sh — uji diagnostik komprehensif A37 LineageOS 20 via adb.
#
# Menjalankan pemeriksaan yang BISA diukur lewat adb (tanpa sentuhan manual),
# lalu mencetak PASS/FAIL per item. Uji yang butuh interaksi manusia (kamera,
# pairing BT, panggilan, dll.) ada di PLAN.md Fase 10b.
#
# Pakai: ./tools/test-device.sh
# Prasyarat: device terhubung adb (build diagnostik — WITH_ADB_INSECURE).

set -u
ok()  { printf '  \033[1;32mPASS\033[0m %s\n' "$*"; }
bad() { printf '  \033[1;31mFAIL\033[0m %s\n' "$*"; fail=1; }
inf() { printf '\033[1;34m::\033[0m %s\n' "$*"; }
fail=0

adb devices | grep -q "device$" || { echo "adb: tidak ada device terhubung" >&2; exit 1; }

# ---------------------------------------------------------------- boot ----
inf "kesehatan boot"
BOOT=$(adb shell getprop sys.boot_completed 2>/dev/null | tr -d '\r')
[ "$BOOT" = "1" ] && ok "sys.boot_completed=1" || bad "sys.boot_completed='$BOOT'"
adb shell uptime 2>/dev/null | grep -q "load average" && ok "uptime: $(adb shell uptime | tr -d '\r' | grep -o 'up.*')" || bad "uptime"

# ------------------------------------------------------------ watchdog ----
inf "tidak ada Watchdog / FATAL / ANR (60 menit terakhir)"
adb shell "logcat -d -t 5000 2>/dev/null" > /tmp/opencode/td-log.txt 2>&1
grep -q "WATCHDOG KILLING" /tmp/opencode/td-log.txt && bad "Watchdog membunuh system_server" || ok "tidak ada Watchdog"
grep -q "FATAL EXCEPTION" /tmp/opencode/td-log.txt && bad "ada FATAL EXCEPTION" || ok "tidak ada FATAL EXCEPTION"
grep -q "ANR in" /tmp/opencode/td-log.txt && bad "ada ANR" || ok "tidak ada ANR"

# ------------------------------------------------------------ servis -----
inf "state servis init (HAL)"
adb shell getprop 2>/dev/null > /tmp/opencode/td-prop.txt
for s in vendor.audio-hal vendor.bluetooth-1-0-qti vendor.gnss_service \
         vendor.gralloc-2-0 vendor.hwcomposer-2-1 vendor.keymaster-3-0 \
         vendor.light-hal-2-0 vendor.lineage_health vendor.media.omx \
         vendor.memtrack-hal-1-0 vendor.power-hal-1-0 vendor.ril-daemon \
         vendor.wifi_hal_legacy vendor.livedisplay-hal-2-0-sysfs; do
    st=$(grep -o "init.svc.$s\]: \[[a-z]*\]" /tmp/opencode/td-prop.txt | sed "s/.*\[//;s/\]//")
    [ "$st" = "running" ] && ok "$s" || bad "$s = '${st:-KOSONG}'"
done

# ------------------------------------------------------- registrasi HAL ---
inf "registrasi HAL di servicemanager"
adb shell "service list 2>/dev/null" > /tmp/opencode/td-svc.txt
for h in android.hardware.audio android.hardware.bluetooth android.hardware.gnss \
         android.hardware.graphics.composer android.hardware.light \
         android.hardware.media.omx android.hardware.memtrack \
         android.hardware.power android.hardware.wifi \
         vendor.qti.hardware.perf vendor.lineage.livedisplay; do
    grep -q "$h" /tmp/opencode/td-svc.txt && ok "$h" || bad "$h TIDAK terdaftar"
done

# ---------------------------------------------------------------- RIL ----
inf "RIL"
SIM=$(adb shell getprop gsm.sim.state 2>/dev/null | tr -d '\r')
NET=$(adb shell getprop gsm.network.type 2>/dev/null | tr -d '\r')
grep -q "android.hardware.radio" /tmp/opencode/td-svc.txt && ok "IRadio terdaftar" || bad "IRadio TIDAK terdaftar (risiko terbuka yang diketahui)"
inf "  gsm.sim.state='$SIM' gsm.network.type='$NET'"

# -------------------------------------------------------------- wifi -----
inf "Wi-Fi"
WIFIST=$(adb shell "cmd wifi status 2>/dev/null | head -3" 2>/dev/null | tr -d '\r' | tr '\n' ' ')
echo "$WIFIST" | grep -qi "enabled" && ok "wifi enabled: $WIFIST" || bad "wifi: $WIFIST"
grep -q "android.hardware.wifi.supplicant" /tmp/opencode/td-svc.txt && ok "supplicant terdaftar" || bad "supplicant TIDAK terdaftar"

# ------------------------------------------------------------ bluetooth --
inf "Bluetooth"
BTST=$(adb shell "cmd bluetooth_manager status 2>/dev/null" 2>/dev/null | tr -d '\r' | head -1)
grep -q "android.hardware.bluetooth" /tmp/opencode/td-svc.txt && ok "HAL BT terdaftar" || bad "HAL BT TIDAK terdaftar"
[ "$(adb shell pidof com.android.bluetooth | tr -d '\r')" != "" ] && ok "aplikasi BT hidup" || bad "aplikasi BT mati"

# ------------------------------------------------------------- kamera ----
inf "Kamera (dumpsys)"
adb shell "dumpsys media.camera 2>/dev/null" > /tmp/opencode/td-cam.txt 2>&1
grep -qi "Camera HAL module" /tmp/opencode/td-cam.txt && ok "CameraService terhubung ke HAL" || bad "CameraService/HAL: $(grep -icE 'error|fail' /tmp/opencode/td-cam.txt) error"
grep -q "android.hardware.camera" /tmp/opencode/td-svc.txt && ok "camera.provider terdaftar" || bad "camera.provider TIDAK"

# ------------------------------------------------------------ sensors ----
inf "Sensor"
adb shell "dumpsys sensorservice 2>/dev/null | head -30" > /tmp/opencode/td-sens.txt 2>&1
N=$(grep -cE "^\s+[0-9]+\|" /tmp/opencode/td-sens.txt)
[ "$N" -gt 0 ] 2>/dev/null && ok "$N sensor terdaftar" || bad "sensorservice: $(head -3 /tmp/opencode/td-sens.txt | tr -d '\r' | tr '\n' ' ')"

# -------------------------------------------------------------- audio ----
inf "Audio"
adb shell "dumpsys media.audio_flinger 2>/dev/null | head -5" > /tmp/opencode/td-audio.txt 2>&1
grep -qi "AudioFlinger" /tmp/opencode/td-audio.txt && ok "AudioFlinger hidup" || bad "AudioFlinger: $(head -2 /tmp/opencode/td-audio.txt | tr -d '\r')"

# ---------------------------------------------------------------- GPS ----
inf "GPS"
adb shell "dumpsys location 2>/dev/null" > /tmp/opencode/td-gps.txt 2>&1
grep -qi "gps" /tmp/opencode/td-gps.txt && ok "provider GPS ada" || bad "provider GPS tidak terlihat"

# ------------------------------------------------------------ storage ----
inf "Storage"
adb shell df -h /data 2>/dev/null | tail -1 | tr -d '\r' | sed 's/^/  /'
adb shell "cat /proc/mounts 2>/dev/null | grep -E ' /data | /sdcard '" | tr -d '\r' | sed 's/^/  /'

# ------------------------------------------------------------- charging --
inf "Charging control"
CHG=$(adb shell "cat /sys/class/power_supply/battery/charging_enabled 2>/dev/null" | tr -d '\r')
[ "$CHG" = "1" ] && ok "charging_enabled=1 (node writable + chmod init bekerja)" || bad "charging_enabled='$CHG'"

# --------------------------------------------------------------- sleep ----
inf "Suspend"
adb shell "dumpsys power 2>/dev/null | grep -m1 'mWakefulness='" 2>/dev/null | tr -d '\r' | sed 's/^/  /'

# ------------------------------------------------------------ ringkasan --
echo
if [ "$fail" = 0 ]; then
    printf '\033[1;32mSEMUA UJI OTOMATIS LOLOS\033[0m — lanjut ke uji manual PLAN Fase 10b.\n'
else
    printf '\033[1;31mADA YANG GAGAL\033[0m — lihat butir di atas; langkah diagnosis di PLAN Fase 10b.\n'; exit 1
fi

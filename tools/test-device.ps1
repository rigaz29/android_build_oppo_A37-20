# test-device.ps1 — uji diagnostik komprehensif A37 LineageOS 20 via adb
# Versi Windows PowerShell (5.1+). Padanan dari tools/test-device.sh.
#
# Menjalankan pemeriksaan yang BISA diukur lewat adb (tanpa sentuhan manual),
# lalu mencetak PASS/FAIL per item. Uji yang butuh interaksi manusia (kamera,
# pairing BT, panggilan, dll.) ada di PLAN.md Fase 10b.
#
# Pakai:
#   powershell -ExecutionPolicy Bypass -File .\tools\test-device.ps1
#   powershell -ExecutionPolicy Bypass -File .\tools\test-device.ps1 -Adb "C:\platform-tools\adb.exe"
#
# Prasyarat: device terhubung adb (build diagnostik — WITH_ADB_INSECURE),
# usb debugging aktif.

param(
    [string]$Adb = "adb"
)

$script:fail = 0

function Write-Ok([string]$msg)  { Write-Host ("  PASS " + $msg) -ForegroundColor Green }
function Write-Bad([string]$msg) { Write-Host ("  FAIL " + $msg) -ForegroundColor Red; $script:fail = 1 }
function Write-Inf([string]$msg) { Write-Host (":: " + $msg) -ForegroundColor Cyan }

function Invoke-Device([string]$cmd) {
    (& $Adb shell $cmd 2>$null | Out-String).Trim()
}

# ---------------------------------------------------------------- awal ----
if (-not (& $Adb devices 2>$null | Out-String).Trim() -match "device$") {
    Write-Host "adb: tidak ada device terhubung. Cek kabel/usb debugging." -ForegroundColor Red
    exit 1
}

# ---------------------------------------------------------------- boot ----
Write-Inf "kesehatan boot"
$boot = Invoke-Device "getprop sys.boot_completed"
if ($boot -eq "1") { Write-Ok "sys.boot_completed=1" } else { Write-Bad "sys.boot_completed='$boot'" }

$uptime = Invoke-Device "uptime"
if ($uptime -match "load average") { Write-Ok "uptime: $uptime" } else { Write-Bad "uptime tidak terbaca" }

# ------------------------------------------------------------ watchdog ----
Write-Inf "tidak ada Watchdog / FATAL / ANR (5000 baris logcat terakhir)"
$log = Invoke-Device "logcat -d -t 5000"
if ($log -match "WATCHDOG KILLING")   { Write-Bad "Watchdog membunuh system_server" } else { Write-Ok "tidak ada Watchdog" }
if ($log -match "FATAL EXCEPTION")    { Write-Bad "ada FATAL EXCEPTION" }             else { Write-Ok "tidak ada FATAL EXCEPTION" }
if ($log -match "ANR in")             { Write-Bad "ada ANR" }                         else { Write-Ok "tidak ada ANR" }

# ------------------------------------------------------------ servis -----
Write-Inf "state servis init (HAL)"
$props = Invoke-Device "getprop"
$svcs = @(
    "vendor.audio-hal", "vendor.bluetooth-1-0-qti", "vendor.gnss_service",
    "vendor.gralloc-2-0", "vendor.hwcomposer-2-1", "vendor.keymaster-3-0",
    "vendor.light-hal-2-0", "vendor.lineage_health", "vendor.media.omx",
    "vendor.memtrack-hal-1-0", "vendor.power-hal-1-0", "vendor.ril-daemon",
    "vendor.wifi_hal_legacy", "vendor.livedisplay-hal-2-0-sysfs"
)
foreach ($s in $svcs) {
    $m = [regex]::Match($props, "\[init\.svc\." + [regex]::Escape($s) + "\]:\s*\[([a-z]*)\]")
    if ($m.Success -and $m.Groups[1].Value -eq "running") { Write-Ok $s }
    else { Write-Bad ("{0} = '{1}'" -f $s, $(if ($m.Success) { $m.Groups[1].Value } else { "KOSONG" })) }
}

# ------------------------------------------------------- registrasi HAL ---
Write-Inf "registrasi HAL (lshal — hwbinder servicemanager)"
# CATATAN: `service list` hanya menampilkan binder servicemanager (framework).
# HAL HIDL terdaftar di hwbinder servicemanager — harus dicek dengan `lshal`.
$lshal = Invoke-Device "lshal --neat"
$hals = @(
    "android.hardware.audio", "android.hardware.bluetooth", "android.hardware.gnss",
    "android.hardware.graphics.composer", "android.hardware.light",
    "android.hardware.media.omx", "android.hardware.memtrack",
    "android.hardware.power", "android.hardware.wifi",
    "vendor.qti.hardware.perf", "vendor.lineage.livedisplay",
    "android.hardware.camera.provider"
)
foreach ($h in $hals) {
    if ($lshal -match [regex]::Escape($h)) { Write-Ok $h } else { Write-Bad "$h TIDAK terdaftar di lshal" }
}

# ---------------------------------------------------------------- RIL ----
Write-Inf "RIL"
if ($lshal -match "android\\.hardware\\.radio") { Write-Ok "IRadio terdaftar" }
else { Write-Bad "IRadio TIDAK terdaftar (risiko terbuka yang diketahui)" }
$sim = Invoke-Device "getprop gsm.sim.state"
$net = Invoke-Device "getprop gsm.network.type"
Write-Host "     gsm.sim.state='$sim' gsm.network.type='$net'"

# -------------------------------------------------------------- wifi -----
Write-Inf "Wi-Fi"
$wifist = Invoke-Device "cmd wifi status"
if ($wifist -match "enabled") { Write-Ok "wifi enabled" } else { Write-Bad "wifi: $wifist" }
# supplicant adalah servis AIDL — terdaftar di BINDER servicemanager, dicek
# dengan `service list`, bukan lshal.
$svclist = Invoke-Device "service list"
if ($svclist -match "wifi\.supplicant") { Write-Ok "supplicant terdaftar" } else { Write-Bad "supplicant TIDAK terdaftar" }

# ------------------------------------------------------------ bluetooth --
Write-Inf "Bluetooth"
if ($lshal -match "android\\.hardware\\.bluetooth") { Write-Ok "HAL BT terdaftar" } else { Write-Bad "HAL BT TIDAK terdaftar" }
$btpid = Invoke-Device "pidof com.android.bluetooth"
if ($btpid -ne "") { Write-Ok "aplikasi BT hidup" } else { Write-Bad "aplikasi BT mati" }

# ------------------------------------------------------------- kamera ----
Write-Inf "Kamera (dumpsys media.camera)"
$cam = Invoke-Device "dumpsys media.camera"
$camErr = ([regex]::Matches($cam, "(?i)error|fail|fatal")).Count
if ($cam -match "(?i)Camera HAL module|CameraService") { Write-Ok "CameraService hidup ($camErr baris error)" }
else { Write-Bad "CameraService: $(($cam -split "`n")[0..2] -join ' ')" }
if ($lshal -match "camera\.provider") { Write-Ok "camera.provider terdaftar di lshal" }
else { Write-Host "     catatan: camera.provider passthrough hanya muncul di lshal setelah dimuat (uji M1/M2 kamera)" -ForegroundColor Yellow }

# ------------------------------------------------------------ sensors ----
Write-Inf "Sensor"
$sens = Invoke-Device "dumpsys sensorservice"
$n = ([regex]::Matches($sens, "(?m)^\s+\d+\|")).Count
if ($n -gt 0) { Write-Ok "$n sensor terdaftar" } else { Write-Bad "sensorservice: $(($sens -split "`n")[0..2] -join ' ')" }

# -------------------------------------------------------------- audio ----
Write-Inf "Audio"
$audio = Invoke-Device "dumpsys media.audio_flinger"
if ($audio -match "AudioFlinger") { Write-Ok "AudioFlinger hidup" } else { Write-Bad "AudioFlinger: $(($audio -split "`n")[0..1] -join ' ')" }

# ---------------------------------------------------------------- GPS ----
Write-Inf "GPS"
$gps = Invoke-Device "dumpsys location"
if ($gps -match "(?i)gps") { Write-Ok "provider GPS ada" } else { Write-Bad "provider GPS tidak terlihat" }

# ------------------------------------------------------------ storage ----
Write-Inf "Storage"
$df = Invoke-Device "df -h /data"
$df -split "`n" | Select-Object -Last 1 | ForEach-Object { Write-Host "     $_" }
$mounts = Invoke-Device "cat /proc/mounts"
$mounts -split "`n" | Where-Object { $_ -match " /data | /sdcard " } | ForEach-Object { Write-Host "     $_" }

# ------------------------------------------------------------- charging --
Write-Inf "Charging control"
$chg = Invoke-Device "cat /sys/class/power_supply/battery/charging_enabled"
if ($chg -eq "1") { Write-Ok "charging_enabled=1 (node writable + chmod init bekerja)" }
else { Write-Bad "charging_enabled='$chg'" }

# --------------------------------------------------------------- sleep ----
Write-Inf "Suspend"
$wk = Invoke-Device "dumpsys power"
$mwk = [regex]::Match($wk, "mWakefulness=([A-Za-z]+)")
if ($mwk.Success) { Write-Host "     mWakefulness=$($mwk.Groups[1].Value)" } else { Write-Bad "dumpsys power tidak terbaca" }

# ------------------------------------------------------------ ringkasan --
Write-Host ""
if ($script:fail -eq 0) {
    Write-Host "SEMUA UJI OTOMATIS LOLOS — lanjut ke uji manual PLAN Fase 10b." -ForegroundColor Green
} else {
    Write-Host "ADA YANG GAGAL — lihat butir di atas; langkah diagnosis di PLAN Fase 10b." -ForegroundColor Red
    exit 1
}

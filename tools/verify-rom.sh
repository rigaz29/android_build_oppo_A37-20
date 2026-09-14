#!/bin/bash
# Verifikasi ROM LOS 20 A37 SEBELUM di-flash.
#
# Memeriksa hal-hal yang kalau salah baru ketahuan sebagai "stuck di logo OPPO" —
# yaitu persis cara percobaan 19.1 lama gagal tanpa bisa didiagnosis.
#
# Pakai: ./tools/verify-rom.sh [OUT_DIR]
#        default OUT_DIR = /root/los20/out/target/product/A37

set -o pipefail
OUT="${1:-/root/los20/out/target/product/A37}"
REF="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/ref"

ok()  { printf '\033[1;32m ok\033[0m %s\n' "$*"; }
bad() { printf '\033[1;31m  X\033[0m %s\n' "$*"; fail=1; }
inf() { printf '\033[1;34m::\033[0m %s\n' "$*"; }
fail=0

[ -d "$OUT" ] || { echo "OUT_DIR tidak ada: $OUT" >&2; exit 1; }

# ---------------------------------------------------------------- properti ---
# Dicari di SELURUH build.prop, bukan hanya system/. Dengan
# BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true (dipasang untuk memperbaiki
# /vendor/ueventd.rc yang tidak terbaca), 146 properti PINDAH ke
# vendor/build.prop — termasuk ro.zygote. Versi pertama skrip ini hanya membaca
# system/build.prop dan melaporkan ro.zygote hilang padahal cuma berpindah.
BPS=""
for f in "$OUT/system/build.prop" "$OUT/system/vendor/build.prop" \
         "$OUT/system/system_ext/etc/build.prop" "$OUT/system/product/etc/build.prop"; do
    [ -f "$f" ] && BPS="$BPS $f"
done
BP=$(echo $BPS | awk '{print $1}')
if [ -n "$BPS" ]; then
    inf "build.prop (dicari di $(echo $BPS | wc -w) berkas)"
    # nilai yang WAJIB dan alasannya masing-masing
    check_prop() {
        local key="$1" want="$2" why="$3"
        local got
        got=$(grep -hE "^$key=" $BPS 2>/dev/null | head -1 | cut -d= -f2-)
        if [ "$got" = "$want" ]; then ok "$key=$got"
        else bad "$key='$got', diharapkan '$want' — $why"; fi
    }
    check_prop ro.build.version.sdk 33            "LOS 20 itu Android 13, bukan 12L"
    check_prop ro.kernel.ebpf.supported false     "gerbang W1/W2; tanpa false, bpfloader menggagalkan boot"
    check_prop ro.config.low_ram true             "perangkat 2 GB, sama dengan ROM referensi"
    check_prop external_storage.casefold.enabled 0 "ext4 kernel 3.10 tidak punya casefold"
    check_prop external_storage.sdcardfs.enabled 0 "A13 memakai FUSE"
    check_prop ro.treble.enabled false            "perangkat non-treble"
    # BUILD 64-BIT: zygote64_32, bukan zygote32. Diubah 13 Sep 2026 (Fase 2).
    # zygote 64-bit dengan anak 32-bit -- dipilih, BERBEDA dari proyek LOS 23.2 yang
    # memakai ZYGOTE_FORCE_64: di Android 13 aplikasi 32-bit-saja masih banyak, dan
    # zygote64 membuat ro.product.cpu.abilist hanya arm64-v8a sehingga aplikasi
    # seperti itu tidak bisa dipasang sama sekali.
    check_prop ro.zygote zygote64_32              "zygote 64-bit dengan anak 32-bit (Fase 2)"
    check_prop ro.vndk.version current            "tanpa snapshot VNDK, sama dengan ROM gt58wifi"
else
    bad "tidak ada build.prop sama sekali — build belum sampai tahap pengemasan?"
fi

# ------------------------------------------------------------------ blob ---
# Semua blob yang didaftarkan A37-vendor.mk harus benar-benar ada di image.
# Blob yang "hilang" biasanya tertelan aturan build (mis. kena filter image),
# dan baru ketahuan saat HAL-nya gagal dlopen di perangkat.
inf "blob vendor (A37-vendor.mk)"
VMK="$(cd "$OUT" && pwd)/../../../../vendor/oppo/A37/A37-vendor.mk"
# Fallback: tree yang umum dipakai
[ -f "$VMK" ] || VMK=/root/los20/vendor/oppo/A37/A37-vendor.mk
if [ -f "$VMK" ]; then
    missing=0; total=0
    # Peta partisi -> direktori di image. Non-treble: VENDOR = system/vendor.
    # Perhatian: ganti SYSTEM_EXT dulu, karena polanya mengandung SYSTEM.
    while read -r src dst; do
        [ -z "$src" ] && continue
        total=$((total+1))
        [ -f "$OUT/$dst" ] || { bad "blob hilang di image: $dst"; missing=$((missing+1)); }
    done < <(grep -oE 'vendor/oppo/A37/proprietary/[^:]+:\$\(TARGET_COPY_OUT_[A-Z]+\)/[^ \\]+' "$VMK" \
             | sed -E 's#\$\(TARGET_COPY_OUT_SYSTEM_EXT\)#system/system_ext#; s#\$\(TARGET_COPY_OUT_SYSTEM\)#system#; s#\$\(TARGET_COPY_OUT_VENDOR\)#system/vendor#; s#\$\(TARGET_COPY_OUT_PRODUCT\)#system/product#; s#\$\(TARGET_COPY_OUT_ODM\)#system/vendor/odm#' \
             | sed -E 's#vendor/oppo/A37/proprietary/([^:]+):(.*)#\1 \2#')
    [ "$missing" = 0 ] && ok "$total blob lengkap di image"
else
    bad "A37-vendor.mk tidak ditemukan ($VMK)"
fi

# ----------------------------------------------------------------- sepolicy ---
# Lokasi sepolicy hasil build harus sama dengan ROM yang boot (PLAN §5.3).
# Device ini NON-system-as-root: /sepolicy monolitik berada di RAMDISK
# (out/.../root/sepolicy), bukan di root system.img — sama seperti 19.1.
# Yang dibandingkan dengan ROM gt58wifi: keberadaan monolitik + *.cil.
inf "lokasi sepolicy"
[ -f "$OUT/root/sepolicy" ] && ok "/sepolicy monolitik di ramdisk (root/sepolicy)" \
    || bad "/sepolicy tidak ada di root/ (ramdisk)"
[ -f "$OUT/system/etc/selinux/plat_sepolicy.cil" ] && [ -f "$OUT/system/etc/selinux/plat_sepolicy_and_mapping.sha256" ] \
    && ok "system/etc/selinux berisi plat_sepolicy.cil + mapping" \
    || bad "system/etc/selinux tidak lengkap (lihat PLAN §5.3 / ref/evidence/selinux-list/)"
[ -f "$OUT/system/vendor/etc/selinux/precompiled_sepolicy" ] \
    && ok "vendor/etc/selinux/precompiled_sepolicy ada" \
    || bad "vendor/etc/selinux/precompiled_sepolicy hilang"

# ------------------------------------------------------------------- adbd ---
# Tanpa Gerrit 326385, adbd A12 memakai deskriptor FunctionFS v2/v3 yang tidak
# dipahami f_fs kernel 3.10 -> USB TIDAK PERNAH enumerasi, sejauh apa pun boot
# berhasil. Inilah sebabnya "adb devices kosong" di percobaan lama bukan bukti
# init mati awal.
# CATATAN: skrip ini jalan dengan `set -o pipefail`, jadi JANGAN `cmd | grep -q`.
# grep -q keluar di match pertama, `strings` di hulu kena SIGPIPE (exit 141), dan
# pipefail menggagalkan pipeline yang sebenarnya BERHASIL. Versi pertama skrip ini
# melaporkan "adbd TIDAK memuat transport_legacy.cpp" padahal binernya memuatnya —
# jebakan yang sama sudah terdokumentasi di tools/build-kernel-zip.sh, lalu
# terulang di sini. grep -c membaca sampai habis, jadi aman.
count_in() { grep -cF -- "$2" < <(strings -a "$1") 2>/dev/null || true; }

inf "adbd legacy FunctionFS (Gerrit 326385)"
ADBD=$(find "$OUT/system" -name adbd -type f 2>/dev/null | head -1)
if [ -z "$ADBD" ]; then
    bad "adbd tidak ditemukan di image"
else
    n_t=$(count_in "$ADBD" "transport_legacy.cpp")
    n_u=$(count_in "$ADBD" "daemon/usb_legacy.cpp")
    n_m=$(count_in "$ADBD" "using legacy FunctionFS")
    if [ "$n_t" -gt 0 ] && [ "$n_u" -gt 0 ] && [ "$n_m" -gt 0 ]; then
        ok "adbd memuat jalur legacy FunctionFS (transport_legacy + usb_legacy + pesan usb_init)"
    else
        bad "adbd TIDAK lengkap memuat jalur legacy (transport=$n_t usb=$n_u pesan=$n_m) — repopick 326385 hilang, adb tidak akan pernah muncul"
    fi
fi

# ------------------------------------------------------------------ kernel ---
inf "boot.img"
BOOT="$OUT/boot.img"
if [ -f "$BOOT" ]; then
    read -r _ ks ka rs ra ss sa ta ps dt _ < <(python3 - "$BOOT" <<'PY'
import struct,sys
d=open(sys.argv[1],'rb').read(1648)
print('x', *struct.unpack('<10I', d[8:48]))
PY
)
    [ "$ps" = 2048 ] && ok "pagesize $ps" || bad "pagesize $ps, diharapkan 2048"
    [ "$ka" = 2147516416 ] && ok "kernel_addr 0x80008000 (base 0x80000000)" || bad "kernel_addr $ka"
    if [ "$dt" -gt 200000 ] && [ "$dt" -lt 220000 ]; then ok "dt_size $dt (referensi 210944)"
    else bad "dt_size $dt jauh dari referensi 210944"; fi
else
    bad "boot.img tidak ada"
fi

# ------------------------------------------------------------ arsitektur ---
# DITAMBAHKAN 13 Sep 2026 untuk build 64-bit.
#
# Salah arsitektur TIDAK tertangkap saat build. Ia muncul saat boot sebagai HAL
# yang gagal dimuat, dan ongkosnya satu siklus build penuh. Perangkat ini tanpa
# partisi vendor terpisah, jadi jalurnya system/vendor/..., bukan vendor/...
inf "arsitektur (build 64-bit)"
SYSV="$OUT/system/vendor"
if [ -d "$SYSV/lib64" ]; then
    n=0; bad64=0
    while IFS= read -r f; do n=$((n+1))
        file -b "$f" | grep -q 'ELF 64-bit.*aarch64' || { bad "SALAH ARCH (bukan 64-bit): ${f#$OUT/}"; bad64=$((bad64+1)); }
    done < <(find "$SYSV/lib64" -name '*.so' 2>/dev/null)
    [ "$bad64" = 0 ] && ok "system/vendor/lib64: $n pustaka, semuanya ELF 64-bit aarch64"
else
    bad "system/vendor/lib64 tidak ada — build 64-bit seharusnya membuatnya"
fi
n=0; bad32=0
while IFS= read -r f; do n=$((n+1))
    file -b "$f" | grep -q 'ELF 32-bit.*ARM' || { bad "SALAH ARCH (bukan 32-bit): ${f#$OUT/}"; bad32=$((bad32+1)); }
done < <(find "$SYSV/lib" -maxdepth 2 -name '*.so' 2>/dev/null)
[ "$bad32" = 0 ] && ok "system/vendor/lib: $n pustaka, semuanya ELF 32-bit ARM"

# Tiga biner yang WAJIB 32-bit, masing-masing karena blob yang dimuatnya.
# mediaserver, BUKAN cameraserver: di LOS 20 servis kamera ditaut ke dalam
# mediaserver lewat camera_in_mediaserver_defaults (overrides:["cameraserver"]),
# dan mediaserver ber-compile_multilib "prefer32" sehingga 32-bit bahkan pada
# TARGET_ARCH=arm64. Ia klien HAL kamera, dan justru karena ia 32-bit jalur
# passthrough tetap berlaku di build 64-bit. Diperbaiki 13 Sep 2026 setelah Fase 4
# dibatalkan; versi pertama penjaga ini memeriksa @2.4-service yang tidak dipasang.
for b in "vendor/bin/hw/rild:blob RIL 2016 + libril_shim" \
         "bin/mediaserver:klien HAL kamera, memuat blob kamera 32-bit lewat passthrough" \
         "vendor/bin/mm-qcamera-daemon:daemon kamera QTI"; do
    path="${b%%:*}"; why="${b#*:}"; f="$OUT/system/$path"
    if [ -f "$f" ]; then
        if file -b "$f" | grep -q 'ELF 32-bit'; then ok "$(basename "$path") 32-bit ($why)"
        else bad "$(basename "$path") BUKAN 32-bit — $why akan gagal dimuat"; fi
    else
        bad "$path tidak ada"
    fi
done
# cameraserver TIDAK boleh ada: camera_in_mediaserver_defaults meng-override-nya.
# Kalau ia muncul, flag has_legacy_camera_hal1 mati dan jalur HAL1 ikut mati.
if [ -e "$OUT/system/bin/cameraserver" ]; then
    bad "bin/cameraserver ADA — TARGET_HAS_LEGACY_CAMERA_HAL1 mati, jalur HAL1 putus"
else
    ok "bin/cameraserver tidak dikirim (di-override camera_in_mediaserver_defaults)"
fi

# Pola khas dual-arch tertinggal: pustaka yang punya versi 64-bit tapi tidak 32-bit
# padahal ada konsumen 32-bit. Dilaporkan sebagai info, bukan kegagalan.
only64=$(comm -13 <(find "$SYSV/lib" -maxdepth 1 -name '*.so' -printf '%f\n' 2>/dev/null | sort) \
                  <(find "$SYSV/lib64" -maxdepth 1 -name '*.so' -printf '%f\n' 2>/dev/null | sort) | wc -l)
inf "pustaka vendor yang hanya ada 64-bit: $only64 (wajar; periksa bila ada HAL 32-bit gagal dlopen)"

# ------------------------------------------------------------ ukuran image ---
# BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2859466752 (2.727 MB). Build 64-bit membawa
# dua set pustaka; margin ini yang paling mungkin habis.
inf "ukuran image"
LIMIT=2859466752
# Build ini menghasilkan system.new.dat.br (OTA berbasis blok), BUKAN system.img —
# jadi yang diukur pohon system/ hasil build. Itu justru ukuran yang benar: ia isi
# partisi yang sesungguhnya, sedangkan .dat.br sudah terkompresi dan tidak
# sebanding dengan batas partisi.
SIMG="$OUT/system.img"
if [ -f "$SIMG" ]; then
    sz=$(stat -c%s "$SIMG")
else
    sz=$(du -sb "$OUT/system" 2>/dev/null | cut -f1)
fi
if [ -n "$sz" ] && [ "$sz" -gt 0 ]; then
    sisa=$(( LIMIT - sz ))
    if [ "$sz" -le "$LIMIT" ]; then
        ok "isi system $((sz/1048576)) MB dari $((LIMIT/1048576)) MB — sisa $((sisa/1048576)) MB"
        [ "$sisa" -lt 104857600 ] && inf "margin di bawah 100 MB: pangkas PRODUCT_PACKAGES sebelum menambah apa pun"
    else
        bad "isi system $((sz/1048576)) MB MELEBIHI partisi $((LIMIT/1048576)) MB — pangkas PRODUCT_PACKAGES, JANGAN ubah tata letak partisi"
    fi
else
    bad "tidak bisa mengukur isi system — periksa $OUT"
fi

# ------------------------------------------------------------------ Tier A ---
inf "Tier A (T-A3, T-A4, T-A6, T-A8)"

# T-A3 thermal HAL 2.0
TH=$OUT/system/vendor/bin/hw/android.hardware.thermal@2.0-service.msm8916
if [ -f "$TH" ] && [ -f "$OUT/system/vendor/etc/thermal_info_config.json" ]; then
    ok "T-A3 HAL thermal 2.0 + config terpasang"
    # pm8916_tz harus SKIN (bms datar, tak layak jadi SKIN), dan tak boleh ada
    # SHUTDOWN pada sensor proxy -- itu memanggil PowerManager.shutdown() sungguhan
    if python3 - "$OUT/system/vendor/etc/thermal_info_config.json" <<'PYEOF'
import json,sys
d=json.load(open(sys.argv[1]))
s={x["Name"]:x for x in d["Sensors"]}
assert s["pm8916_tz"]["Type"]=="SKIN", "pm8916_tz bukan SKIN"
assert s["bms"]["Type"]=="UNKNOWN", "bms bukan UNKNOWN"
for n,x in s.items():
    if n!="battery":
        assert x["HotThreshold"][6]=="NAN", f"{n} masih punya ambang SHUTDOWN"
PYEOF
    then ok "T-A3 config: SKIN=pm8916_tz, bms=UNKNOWN, SHUTDOWN hanya di battery"
    else bad "T-A3 config sensor tidak sesuai keputusan terukur"; fi
else
    bad "T-A3 HAL thermal tidak terpasang"
fi

# T-A4 Widevine: empat berkas, dan protobuf WAJIB versi 3.0.0 kita
WV=$OUT/system/vendor
n=0
for f in bin/hw/android.hardware.drm@1.1-service.widevine \
         etc/init/android.hardware.drm@1.1-service.widevine.rc \
         lib/libwvhidl.so lib/libprotobuf-cpp-lite.so; do
    [ -f "$WV/$f" ] && n=$((n+1))
done
if [ "$n" = 4 ]; then
    ok "T-A4 empat artefak Widevine terpasang"
else
    bad "T-A4 hanya $n dari 4 artefak Widevine terpasang"
fi
PV=$WV/lib/libprotobuf-cpp-lite.so
PS=$OUT/system/lib/libprotobuf-cpp-lite.so
if [ -f "$PV" ] && [ -f "$PS" ] && [ "$(stat -c%s "$PV")" != "$(stat -c%s "$PS")" ]; then
    ok "T-A4 protobuf vendor ($(stat -c%s "$PV") B) berbeda dari protobuf pohon ($(stat -c%s "$PS") B)"
else
    bad "T-A4 protobuf vendor tidak ada atau identik dengan versi pohon"
fi
if grep -q "setenv LD_LIBRARY_PATH /vendor/lib" "$WV/etc/init/android.hardware.drm@1.1-service.widevine.rc" 2>/dev/null; then
    ok "T-A4 setenv LD_LIBRARY_PATH ada (tanpa ini blob menaut protobuf 3.9.1)"
else
    bad "T-A4 setenv LD_LIBRARY_PATH hilang dari .rc terpasang"
fi

# T-A6 server PSDS
if grep -q "XTRA_SERVER_1\|PSDS" "$OUT/system/etc/gps_debug.conf" 2>/dev/null; then
    ok "T-A6 gps_debug.conf memuat server bantuan"
else
    bad "T-A6 gps_debug.conf tidak memuat server bantuan"
fi

# T-A8 module_api_version di HMI, dibaca langsung dari biner
CW=$OUT/system/lib/hw/camera.msm8916.so
if [ -f "$CW" ] && python3 - "$CW" <<'PYEOF'
import subprocess,struct,sys
so=sys.argv[1]; addr=None
for l in subprocess.run(['readelf','-sW',so],capture_output=True,text=True).stdout.splitlines():
    p=l.split()
    if len(p)>=8 and p[7]=='HMI': addr=int(p[1],16); break
if addr is None: sys.exit(1)
off=None
for l in subprocess.run(['readelf','-SW',so],capture_output=True,text=True).stdout.splitlines():
    if ']' not in l: continue
    p=l.split(']',1)[1].split()
    if len(p)<5: continue
    try: a,o,sz=int(p[2],16),int(p[3],16),int(p[4],16)
    except ValueError: continue
    if a and a<=addr<a+sz: off=o+(addr-a); break
tag,mav,hav=struct.unpack('<IHH', open(so,'rb').read()[off:off+8])
sys.exit(0 if (tag==0x48574d54 and mav==256 and hav==256) else 1)
PYEOF
then ok "T-A8 HMI: module_api_version 256, hal_api_version 256"
else bad "T-A8 module_api_version masih salah bentuk (atau HMI tak terbaca)"; fi

# ------------------------------------------------------------------ Tier B ---
inf "Tier B (T-B3, T-B4, T-B6, T-B7)"

# T-B3 power HAL. Diperiksa pada varian lib64: servis power berjalan 64-bit,
# jadi itulah berkas yang benar-benar dimuat perangkat.
PW=$OUT/system/vendor/lib64/hw/power.msm8916.so
if [ -f "$PW" ]; then
    if strings "$PW" | grep -qx 800000 && strings "$PW" | grep -qx 1209600; then
        ok "T-B3 batas frekuensi 800000 dan 1209600 ada di power HAL lib64"
    else
        bad "T-B3 konstanta batas frekuensi tidak ada di power HAL lib64"
    fi
else
    bad "T-B3 power.msm8916.so lib64 tidak terpasang"
fi

# T-B4 wireguard-tools
if [ -f "$OUT/system/bin/wg" ] && file -b "$OUT/system/bin/wg" | grep -q "ELF 64-bit"; then
    ok "T-B4 wg terpasang, 64-bit ($(stat -c%s "$OUT/system/bin/wg") byte)"
else
    bad "T-B4 /system/bin/wg tidak terpasang atau salah arch"
fi

# T-B6a volume speaker. WAJIB di mixer_paths_mtp.xml: sound card perangkat
# bernama msm8x16-snd-card-mtp dan platform.c:838 memetakannya ke berkas itu,
# jadi menyuntingnya di mixer_paths.xml akan menjadi no-op.
if grep -q 'RX1 Digital Volume" value="96"' "$OUT/system/vendor/etc/mixer_paths_mtp.xml" 2>/dev/null; then
    ok "T-B6 volume digital speaker 96 ada di mixer_paths_mtp.xml"
else
    bad "T-B6 volume digital speaker tidak disetel di mixer_paths_mtp.xml"
fi

# T-B6d + T-B7c
RC=$OUT/system/vendor/etc/init/hw/init.target.rc
grep -q "default_pwrlevel 2" "$RC" 2>/dev/null \
    && ok "T-B6 GPU default_pwrlevel 2 (level istirahat 200 MHz)" \
    || bad "T-B6 default_pwrlevel tidak disetel"
grep -q "hung_task_timeout_secs 90" "$RC" 2>/dev/null \
    && ok "T-B7 hung_task_timeout_secs 90 (init.rc AOSP menyetel 0)" \
    || bad "T-B7 hung_task_timeout_secs tidak disetel"

# T-B7a PinnerService. Dibaca dari APK RRO hasil build, bukan dari sumber
# overlay -- itu membuktikan overlay benar-benar terkompilasi dan terpasang.
RRO=$(find "$OUT" -name "framework-res__auto_generated_rro_vendor.apk" 2>/dev/null | head -1)
AAPT="${OUT%/target/product/*}/host/linux-x86/bin/aapt2"
if [ -n "$RRO" ] && [ -x "$AAPT" ]; then
    daftar=$("$AAPT" dump resources "$RRO" 2>/dev/null | grep -A9 "config_defaultPinnerServiceFiles")
    pin=$(printf '%s\n' "$daftar" | grep -oE '"/(system|data)[^"]*"' | wc -l)
    if printf '%s\n' "$daftar" | grep -q "oat/arm64/services.odex"; then
        ok "T-B7 daftar pinner di RRO: $pin entri, services.odex sudah arm64"
    else
        bad "T-B7 daftar pinner di RRO masih menunjuk jalur lama"
    fi
else
    inf "  (RRO atau aapt2 tidak ditemukan, lewati pemeriksaan pinner)"
fi

# --------------------------------------------------------------------- zip ---
inf "paket"
# Beberapa nama zip adalah hardlink ke satu inode, sehingga mtime-nya seri dan
# "ls -t" memecah seri itu dengan urutan nama -- memilih yang TERTUA. Nama zip
# memuat stempel waktu build, jadi urut nama adalah pemilihan yang benar.
ZIP=$(ls -1 "$OUT"/lineage-20.0-*.zip 2>/dev/null | sort | tail -1)
if [ -n "$ZIP" ]; then
    ok "$(basename "$ZIP") ($(du -h "$ZIP" | cut -f1))"
    case "$(basename "$ZIP")" in
        *microG*|*ReSukiSU*) bad "nama ROM tercemar env sisa proyek lain — source tools/envsetup-a37.sh" ;;
    esac
else
    bad "zip ROM tidak ditemukan"
fi

echo
if [ "$fail" = 0 ]; then
    printf '\033[1;32mSEMUA VERIFIKASI LOLOS\033[0m — aman dilanjut ke protokol flash §9.1 (recovery dulu).\n'
else
    printf '\033[1;31mADA YANG GAGAL\033[0m — perbaiki sebelum flash.\n'; exit 1
fi

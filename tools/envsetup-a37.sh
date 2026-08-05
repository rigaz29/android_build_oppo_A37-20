# Siapkan environment build LineageOS 20 (Android 13) untuk OPPO A37.
#
# HARUS di-source, bukan dijalankan:
#     cd /root/los20 && source /root/a37-20/tools/envsetup-a37.sh
#
# Gunanya satu: membuang variabel environment sisa proyek lain sebelum
# `lunch`, lalu lunch. Tanpa ini nama ROM ikut tercemar.

if [ ! -f build/envsetup.sh ]; then
    echo "error: source dari root tree LineageOS 20 (mis. /root/los20)" >&2
    return 1 2>/dev/null || exit 1
fi

# Bocoran dari proyek j7elte / A37 18.1 + microG. Sumbernya /root/.bashrc, yang
# sudah dikomentari 4 Agustus 2026 — tapi sesi shell yang start SEBELUM suntingan
# itu masih mewarisi nilainya dari proses induk, jadi tetap dibuang di sini.
#
#   TARGET_UNOFFICIAL_BUILD_ID  nama ROM jadi "...-UNOFFICIAL-microG-ReSukiSU-A37"
#                               padahal microG dan KernelSU tidak dibangun
#   WITH_GMS                    di tree ini efektif inert (partner_gms.mk
#                               memakai inherit-product-if-exists dan
#                               vendor/partner_gms tidak ada; WITH_GMS_COMMS_SUITE
#                               tidak punya konsumen), tapi akan aktif diam-diam
#                               begitu vendor gapps ditambahkan
for v in TARGET_UNOFFICIAL_BUILD_ID WITH_GMS; do
    if [ -n "${!v:-}" ]; then
        echo ":: buang \$$v (=${!v}) — sisa proyek lain"
        unset "$v"
    fi
done

# BUILD_USERNAME / BUILD_HOSTNAME sengaja DIPERTAHANKAN: keduanya cuma mengisi
# identitas build dan tidak mengubah isi ROM.

source build/envsetup.sh
# userdebug, bukan eng — StrictMode memasang penaltyFlashScreen TANPA SYARAT
# di build eng (StrictMode.java, cabang Build.IS_ENG). Itu penyebab "kotak merah
# di tepi layar" yang ditriase sebagai 10.F di proyek 19.1.
lunch lineage_A37-userdebug

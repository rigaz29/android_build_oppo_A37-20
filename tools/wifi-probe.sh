( while :; do input keyevent KEYCODE_WAKEUP; sleep 8; done ) & J=$!
trap "kill $J 2>/dev/null" EXIT

rxb() { awk '/wlan0/{gsub(/.*wlan0:/,""); print $1}' /proc/net/dev; }
# unduhan di latar
curl -s --interface 192.168.0.184 -o /dev/null --max-time 30 \
  "https://speed.cloudflare.com/__down?bytes=52428800" & C=$!

prev=$(rxb)
echo "  detik  Mbps   bitrate_phy        cpu_idle%  softirq%"
for i in $(seq 1 20); do
  sleep 1
  cur=$(rxb)
  mbps=$(awk -v a="$prev" -v b="$cur" 'BEGIN{printf "%5.1f", (b-a)*8/1000000}')
  prev=$cur
  br=$(iw dev wlan0 link 2>/dev/null | awk '/tx bitrate/{print $3" "$4" "$5" "$6}')
  # cuplik cpu agregat
  read _ u n s idle iow irq sirq rest < /proc/stat
  tot=$((u+n+s+idle+iow+irq+sirq))
  if [ -n "$ptot" ]; then
    di=$((idle-pidle)); dsq=$((sirq-psirq)); dt=$((tot-ptot))
    [ "$dt" -gt 0 ] && cpu=$(awk -v a="$di" -v b="$dsq" -v t="$dt" 'BEGIN{printf "%5.1f  %5.1f", a*100/t, b*100/t}')
  fi
  ptot=$tot; pidle=$idle; psirq=$sirq
  echo "  $i      $mbps  ${br:-?}   ${cpu:-?}"
done
wait $C 2>/dev/null
kill $J 2>/dev/null

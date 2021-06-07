while xsetroot -name "   `/home/redson/.wifi.sh`    `acpi | awk '{print $4}' | sed s/,//`    `pamixer --get-volume`%   `date +"%l:%M"| sed 's/  / /g'`"
 do
sleep 1
done &
flameshot &
setxkbmap br &
xrandr -s 1366x768 &
dunst &
nitrogen --restore &
exec dwm
# vim: ft=sh

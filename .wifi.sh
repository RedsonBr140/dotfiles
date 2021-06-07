#!/usr/bin/bash
ssidnt="$(iw wlan0 info | sed -n '5p' | sed -e 's/\<ssid\>//g')"
ssidt="$(echo $ssidnt | sed -e 's/\s+//g')"

if [ "$(echo $ssidt)" = "type managed" ]
then
	echo "Not Connected"
else
	echo "$(echo $ssidt)"
fi

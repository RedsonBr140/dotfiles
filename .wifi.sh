#!/usr/bin/bash
# Script que mostra sua rede wifi para a barra do dwm, pode ser necessário editar dependendo da placa de rede.
ssidnt="$(iw wlan0 info | sed -n '5p' | sed -e 's/\<ssid\>//g')"
ssidt="$(echo $ssidnt | sed -e 's/\s+//g')"

if [ "$(echo $ssidt)" = "type managed" ]
then
	echo "Not Connected"
else
	echo "$(echo $ssidt)"
fi

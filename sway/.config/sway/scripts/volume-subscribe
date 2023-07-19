#!/usr/bin/env sh

msgTag="volume-control"

OLD_VOL=0
pactl subscribe | grep --line-buffered "sink" |
while read; do
	VOL=$(amixer get Master | grep -Po "[0-9]+(?=%)" | tail -1)
	if [[ $VOL != $OLD_VOL ]]; then
		notify-send "Volume" -a "changeVolume" -i audio-volume-high -u low \
		-h string:x-canonical-private-synchronous:$msgTag \
		-h int:value:"$VOL" "${VOL}%"
		
		OLD_VOL=$VOL
	fi
done

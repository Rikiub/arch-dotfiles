#!/usr/bin/env sh
# changeVolume

# Arbitrary but unique message tag
msgTag="volume-control"

# Query pactl for the current volume and whether or not the speaker is muted
volume="$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)"
mute="$(pactl get-sink-mute @DEFAULT_SINK@ | awk '/Mute:/ {print $2}')"

if [[ $volume == 0 || "$mute" == "yes" ]]; then
    # Show the sound muted notification
    notify-send "Volume muted" -a "changeVolume" -i audio-volume-high -u low \
    -h string:x-canonical-private-synchronous:$msgTag \

else
    # Show the volume notification
    notify-send "Volume" -a "changeVolume" -i audio-volume-high -u low \
    -h string:x-canonical-private-synchronous:$msgTag \
    -h int:value:"$volume" "Volume: ${volume}%"
fi

# Play the volume changed sound
#canberra-gtk-play -i audio-volume-change -d "changeVolume"

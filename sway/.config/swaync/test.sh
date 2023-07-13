#!/usr/bin/env sh

echo "> Reloading..."
swaync-client -rs
swaync-client -R

echo "> Starting"
notify-send "hola" -i weather-clear
sleep 1
swaync-client -t
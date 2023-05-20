#!/usr/bin/env sh

swaynag --config $HOME/.config/sway/scripts/swaynag.conf -t custom\
	-m 'Powermenu'\
	\
	-b ' Apagar' 'systemctl poweroff'\
	-b ' Reiniciar' 'systemctl reboot'\
	-b ' Suspender' 'systemctl suspend'\
	-b ' Cerrar sesión' 'swaymsg exit'\

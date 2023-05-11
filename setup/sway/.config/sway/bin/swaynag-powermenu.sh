#!/usr/bin/sh

swaynag -t custom\
	-m 'Powermenu'\
	\
	-b ' Apagar' 'systemctl poweroff'\
	-b ' Reiniciar' 'systemctl reboot'\
	-b ' Suspender' 'systemctl suspend'\
	-b ' Cerrar sesión' 'swaymsg exit'\

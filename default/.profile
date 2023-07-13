#!/bin/env sh

# --- STARTUP ---

# desktop session
if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
    export TERM=foot
elif [ "$XDG_SESSION_TYPE" == "x11" ]; then
	export TERM=alacritty
fi

# enable GTK_THEME with QT compability
#export QT_QPA_PLATFORMTHEME=gtk2

# --- USER ---

# darkman themes
export GTK_THEME_LIGHT="Catppuccin-Latte-Standard-Sky-light"
export ICON_LIGHT="Papirus"
export GTK_THEME_DARK="Catppuccin-Frappe-Standard-Sky-dark"
export ICON_DARK="Papirus-Dark"

# default apps
export EDITOR=nvim
export BROWSER=brave

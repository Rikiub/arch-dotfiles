#!/usr/bin/env sh

# --- STARTUP ---

# desktop session
if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
    export TERM=foot
elif [ "$XDG_SESSION_TYPE" == "x11" ]; then
	export TERM=alacritty
fi

# QT with GTK THEME compability
# for "qt5ct" just put
# for "gnome" you need the packages: qgnomeplatform-qt5 qgnomeplatform-qt6
export QT_QPA_PLATFORMTHEME=qt5ct

# --- USER ---

# darkman themes
export GTK_THEME_LIGHT="adw-gtk3"
export ICON_LIGHT="Papirus-Dark"
export GTK_THEME_DARK="adw-gtk3-dark"
export ICON_DARK="Papirus-Dark"

# default apps
export EDITOR=neovide
export BROWSER=brave

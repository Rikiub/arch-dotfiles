#!/bin/env sh

# desktop session
if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
    export TERM=foot
elif [ "$XDG_SESSION_TYPE" == "x11" ]; then
	export TERM=alacritty
fi

# enable GTK_THEME with QT compability
#export QT_QPA_PLATFORMTHEME=gtk2

# default apps
export EDITOR=nvim
export BROWSER=brave

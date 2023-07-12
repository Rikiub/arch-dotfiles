#!/bin/env sh

# desktop session
if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

# enable GTK_THEME with QT compability
#export QT_QPA_PLATFORMTHEME=gtk2

# default apps
export TERM=alacritty
export EDITOR=nvim
export BROWSER=brave

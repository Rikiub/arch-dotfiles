#!/usr/bin/env sh

# --- ENV FIXES ---
ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"                            # remove xsession-errors
rm -f $HOME/.xsession-errors

# To follow XDG Base Directory specification.
# https://wiki.archlinux.org/title/XDG_Base_Directory
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"                   # move ZSH config
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}"/gnupg            # move GNU Privacy Guard
export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}"/bash/history     # move bash history
export ANDROID_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"/android       # move .android folder created by ADB

# --- STARTUP ---

# Detect desktop-session
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	export MOZ_ENABLE_WAYLAND=1
	export TERM=foot
elif [ "$XDG_SESSION_TYPE" = "x11" ]; then
	export TERM=alacritty
fi

# Custom sort preference
export LC_COLLATE=C

# user PATH
export PATH="$HOME/.local/bin:$PATH"

# QT with GTK THEME compability
# for "qt5ct" just put
# for "gnome" you need install this packages: qgnomeplatform-qt5 qgnomeplatform-qt6
export QT_QPA_PLATFORMTHEME=qt5ct

# --- USER ---

# darkman themes
export GTK_THEME_LIGHT="adw-gtk3"
export ICON_LIGHT="Papirus-Dark"
export GTK_THEME_DARK="adw-gtk3-dark"
export ICON_DARK="Papirus-Dark"

# default apps
export EDITOR=nvim
export BROWSER=brave

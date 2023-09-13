#!/usr/bin/env sh

# --- XDG Base Directory ---
# https://wiki.archlinux.org/title/XDG_Base_Directory

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# --- ENV FIXES ---

ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"                             # remove xsession-errors
rm -f $HOME/.xsession-errors

export ZDOTDIR="$XDG_CONFIG_HOME"/zsh                                     # ZSH config
export GNUPGHOME="$XDG_DATA_HOME"/gnupg                                   # GNU Privacy Guard
export HISTFILE="$XDG_STATE_HOME"/bash/history                            # bash history
export ANDROID_HOME="$XDG_DATA_HOME"/android                              # .android folder created by ADB
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java   # .java folder

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

# User PATH
export PATH="$HOME/.local/bin:$PATH"

# QT with GTK THEME compability
# for "qt5ct" just put
# for "gnome" you need install this packages: qgnomeplatform-qt5 qgnomeplatform-qt6
export QT_QPA_PLATFORMTHEME=qt5ct

# --- USER ---

# darkman themes
export GTK_THEME_LIGHT="adw-gtk3"
export ICON_LIGHT="Papirus-Light"
export GTK_THEME_DARK="adw-gtk3-dark"
export ICON_DARK="Papirus-Dark"

# default apps
export EDITOR=helix
export BROWSER=brave

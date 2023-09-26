#!/usr/bin/env sh

# --- USER PREFERENCES ---

# Default Apps
export EDITOR=helix
export BROWSER=brave
WAYLAND_TERM=foot
X11_TERM=alacritty

# Custom sort preference
export LC_COLLATE=C

# Detect desktop-session
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	export TERM=$WAYLAND_TERM
	export MOZ_ENABLE_WAYLAND=1
elif [ "$XDG_SESSION_TYPE" = "x11" ]; then
	export TERM=$X11_TERM
fi

# --- GTK THEME ---

# QT with GTK THEME compability
# for "qt5ct" just put "qt5ct"
# for "gnome" you need install this packages: qgnomeplatform-qt5 qgnomeplatform-qt6
export QT_QPA_PLATFORMTHEME=qt5ct

# Custom GTK Variables. Uses for 'darkman' themes.
export GTK_THEME_LIGHT="adw-gtk3"
export GTK_THEME_DARK="adw-gtk3-dark"

export GTK_ICON_LIGHT="Papirus-Light"
export GTK_ICON_DARK="Papirus-Dark"

export GTK_CURSOR_LIGHT="Qogir"
export GTK_CURSOR_DARK="Qogir"

export GTK_FONT_NAME="11"

# --- XDG Base Directory ---
# https://wiki.archlinux.org/title/XDG_Base_Directory

export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# Add user PATH
export PATH="$HOME/.local/bin:$PATH"

# Remove X11 files
ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"                             # remove xsession-errors
rm -f $HOME/.xsession-errors
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
rm -f $HOME/.Xauthority
# .android folder created by ADB
export ANDROID_HOME="$XDG_DATA_HOME"/android                              
rm -rf $HOME/.android
rm -rf $HOME/.fastboot
# Others
rm -rf $HOME/.dmrc
rm -rf $HOME/.w3m
rm -rf $HOME/.pki
rm -f $HOME/.python_history

# Move config locations
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh                                     # ZSH config
export GNUPGHOME="$XDG_DATA_HOME"/gnupg                                   # GNU Privacy Guard
export HISTFILE="$XDG_STATE_HOME"/bash/history                            # bash history
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java   # .java folder

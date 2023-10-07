#!/usr/bin/env sh

# --- USER PREFERENCES ---

# Default Apps
export EDITOR=helix
export BROWSER=brave
TERM_WAYLAND=foot
TERM_X11=alacritty

# Custom sort preference
export LC_COLLATE=C

# --- GTK THEME ---

# QT with GTK style
export XDG_CURRENT_DESKTOP=GNOME

# Custom GTK Variables. Used to "darkman" themes.
export GTK_THEME_LIGHT="adw-gtk3"
export GTK_THEME_DARK="adw-gtk3-dark"

export GTK_ICON_LIGHT="Papirus-Light"
export GTK_ICON_DARK="Papirus-Dark"

export GTK_CURSOR_LIGHT="Qogir"
export GTK_CURSOR_DARK="Qogir"

export GTK_FONT_NAME="Ubuntu 11"

# --- DIRECTORIES ---

# User PATH
export PATH="$HOME/.local/bin:$PATH"

# XDG Base Directory
# https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# Move config locations
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh                                     # ZSH config
export GNUPGHOME="$XDG_DATA_HOME"/gnupg                                   # GNU Privacy Guard
export HISTFILE="$XDG_STATE_HOME"/bash/history                            # bash history
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java   # .java folder

# -- CLEANUP ---

# Remove X11 files
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
rm -f $HOME/.xsession-errors
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

# --- DESKTOP-SESSION ---

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	export TERM=$TERM_WAYLAND
	export QT_QPA_PLATFORM=wayland-egl
	export ECORE_EVAS_ENGINE=wayland_egl
	export ELM_ENGINE=wayland_egl
	export SDL_VIDEDRIVER=wayland
	export _JAVA_AWT_WM_NONREPARENTING=1
	export MOZ_ENABLE_WAYLAND=1
elif [ "$XDG_SESSION_TYPE" = "x11" ]; then
	export TERM=$TERM_X11
fi

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
# export XDG_CURRENT_DESKTOP=GNOME

# Fix libadwaita applications
export ADW_DISABLE_PORTAL=1

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
if command -v antidot &> /dev/null; then
	eval "$(antidot init -s bash)"
fi

rm -f .xsession-errors .xsession-errors.old .dmrc

# --- DESKTOP-SESSION ---

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	export TERM=$TERM_WAYLAND
	export MOZ_ENABLE_WAYLAND=1
	export QT_QPA_PLATFORM=wayland-egl
	export ECORE_EVAS_ENGINE=wayland_egl
	export ELM_ENGINE=wayland_egl
	export SDL_VIDEODRIVER=wayland
	export _JAVA_AWT_WM_NONREPARENTING=1
elif [ "$XDG_SESSION_TYPE" = "x11" ]; then
	export TERM=$TERM_X11
fi

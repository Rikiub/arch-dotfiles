#!/bin/sh

THEME="Catppuccin-Latte-Standard-Sky-light"
ICON="Papirus"

export GTK_THEME=$THEME

gsettings set org.gnome.desktop.interface gtk-theme $THEME
gsettings set org.gnome.desktop.interface icon-theme $ICON
gsettings set org.gnome.desktop.interface color-scheme prefer-light

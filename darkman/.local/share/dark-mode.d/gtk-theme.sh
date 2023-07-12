#!/bin/sh

THEME="Catppuccin-Frappe-Standard-Sky-dark"
ICON="Papirus-Dark"

export GTK_THEME=$THEME

gsettings set org.gnome.desktop.interface gtk-theme $THEME
gsettings set org.gnome.desktop.interface icon-theme $ICON
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

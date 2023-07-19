#!/usr/bin/env sh

export GTK_THEME=$GTK_THEME_LIGHT
gsettings set org.gnome.desktop.interface gtk-theme $GTK_THEME_LIGHT
gsettings set org.gnome.desktop.interface icon-theme $ICON_LIGHT
gsettings set org.gnome.desktop.interface color-scheme prefer-light

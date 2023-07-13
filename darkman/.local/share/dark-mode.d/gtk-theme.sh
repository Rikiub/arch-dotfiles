#!/bin/sh

export GTK_THEME=$GTK_THEME_DARK
gsettings set org.gnome.desktop.interface gtk-theme $GTK_THEME_DARK
gsettings set org.gnome.desktop.interface icon-theme $ICON_DARK
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

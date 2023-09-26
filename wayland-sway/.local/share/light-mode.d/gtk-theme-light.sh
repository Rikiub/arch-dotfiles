#!/usr/bin/env sh

gsettings set org.gnome.desktop.interface gtk-theme    $GTK_THEME_LIGHT
gsettings set org.gnome.desktop.interface icon-theme   $GTK_ICON_LIGHT
gsettings set org.gnome.desktop.interface cursor-theme $GTK_CURSOR_LIGHT
gsettings set org.gnome.desktop.interface font-name    $GTK_FONT_NAME
gsettings set org.gnome.desktop.interface color-scheme prefer-light
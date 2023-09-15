#!/usr/bin/env sh

gsettings set org.gnome.desktop.interface gtk-theme    $GTK_THEME_DARK
gsettings set org.gnome.desktop.interface icon-theme   $GTK_ICON_DARK
gsettings set org.gnome.desktop.interface cursor-theme $GTK_CURSOR_DARK
gsettings set org.gnome.desktop.interface font-name    $GTK_FONT_NAME
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
#!/usr/bin/env sh

cmus-remote -C clear
cmus-remote -C "add $(xdg-user-dir MUSIC)"
cmus-remote -C "update-cache -f"

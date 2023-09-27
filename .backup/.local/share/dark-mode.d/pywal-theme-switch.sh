#!/usr/bin/env sh

# --- VARS ---

if pgrep darkman >/dev/null; then
  COLOR_SCHEME=$(darkman get)
else
  COLOR_SCHEME=$(gsettings get org.gnome.desktop.interface color-scheme)
  COLOR_SCHEME=$(echo $COLOR_SCHEME | sed "s/'//g")
  COLOR_SCHEME=$(echo $COLOR_SCHEME | sed -n 's/prefer-\(dark\|light\)/\1/p')
fi

echo "Swtiching to $COLOR_SCHEME"

WAL=${XDG_CACHE_HOME:-$HOME/.cache}/wal
CURRENT_WALLPAPER=$(command cat $WAL/wal)

SCHEME=$(echo $CURRENT_WALLPAPER | tr '/\.' '_')
SCHEME=$(echo "$WAL/schemes/$SCHEME""_$COLOR_SCHEME"*)

if [ $COLOR_SCHEME = "light" ]; then
  WAL_COMMAND="wal -qnst -l"
elif [ $COLOR_SCHEME = "dark" ]; then
  WAL_COMMAND="wal -qnst"
fi

# --- MAIN ---

# check if scheme was created.
if [ -f "$SCHEME" ]; then
  echo "Scheme founded."
  $WAL_COMMAND -f "$SCHEME"

# if not exist, check if wallpaper exist and create.
elif [ -f $CURRENT_WALLPAPER ]; then
  echo "Scheme not founded. Creating $COLOR_SCHEME theme..."
  $WAL_COMMAND -i $CURRENT_WALLPAPER

# if nothing exist, got error. you need create a theme with "wal -i <path/to/image>"
else
  echo 'Theme not founded. You need create a theme with "wal -i <path/to/image>"'
fi
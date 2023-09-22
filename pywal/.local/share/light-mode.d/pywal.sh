#!/usr/bin/env sh

# --- VARS ---

TYPE="light"
WAL=${XDG_CACHE_HOME:-$HOME/.cache}/wal
CURRENT_WALLPAPER=$(command cat $WAL/wal)

SCHEME=$(echo $CURRENT_WALLPAPER | tr '/\.' '_')
SCHEME=$(echo "$WAL/schemes/$SCHEME""_$TYPE"*)

WAL_COMMAND="wal -qnst -l"

# --- MAIN ---

# check if scheme was created.
if [ -f "$SCHEME" ]; then
  echo "Scheme founded."
  $WAL_COMMAND -f "$SCHEME"

# if not exist, check if wallpaper exist and create.
elif [ -f $CURRENT_WALLPAPER ]; then
  echo "Scheme not founded. Creating {$TYPE} theme..."
  $WAL_COMMAND -i $CURRENT_WALLPAPER

# if nothing exist, got error. you need create a theme with "wal -i <path/to/image>"
else
  echo 'ERROR: Theme not founded. You need create a theme with "wal -i <path/to/image>"'
fi
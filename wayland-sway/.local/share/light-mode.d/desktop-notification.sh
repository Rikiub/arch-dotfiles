#!/usr/bin/env bash

# trigger a small, passive popup dialog to inform the user about darkman's activity
# reference https://wiki.archlinux.org/title/Desktop_notifications#Usage_in_programming

ID=$(notify-send -ept 1 ".")

if [ $ID = 1 ]
then
  :
else
  notify-send --app-name="darkman" --urgency=low --replace-id=1 --icon=weather-clear \
  "Switching to light mode"
fi

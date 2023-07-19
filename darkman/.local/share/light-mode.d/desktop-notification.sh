#!/usr/bin/env bash

# trigger a small, passive popup dialog to inform the user about darkman's activity
# reference https://wiki.archlinux.org/title/Desktop_notifications#Usage_in_programming

MSG_TAG="darkman"

notify-send --app-name="$MSG_TAG" --urgency=low --icon=weather-clear \
-h string:x-canonical-private-synchronous:"$MSG_TAG" \
"Switching to light mode"

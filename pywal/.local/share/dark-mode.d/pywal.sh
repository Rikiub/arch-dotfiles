#!/usr/bin/env sh

PYWAL=$(command cat $HOME/.cache/wal/wal)

wal -stnq -i $PYWAL
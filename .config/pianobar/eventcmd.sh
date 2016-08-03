#!/usr/bin/env bash

DIR="/Volumes/RAM Disk"

if [[ $1 == songstart || $1 == songlove ]]; then
  echo "$(cat)" > "$DIR/pianobar.info"

  if [[ $1 == songstart ]]; then
    echo 0 > "$DIR/pianobar.anchor"
    true > "$DIR/pianobar.stdout"
  fi
fi

# vim:ts=2 sw=2 et

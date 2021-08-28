#!/bin/bash

DIR="$HOME/Documents/Dotfiles/scripts/icons"

CUR_VOL=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

if (($CUR_VOL > -1 && $CUR_VOL < 33)); then
    dunstify -a "Volume" \
    "Volume" \
    "Current volume is $CUR_VOL%" \
    -r 100 \
    -i $DIR/volume.svg
elif (($CUR_VOL > 33 && $CUR_VOL < 66)); then
    dunstify -a "Volume" \
    "Volume" \
    "Current volume is $CUR_VOL%" \
    -r 100 \
    -i $DIR/volume-1.svg
elif (($CUR_VOL > 66 && $CUR_VOL < 101)); then
    dunstify -a "Volume" \
    "Volume" \
    "Current volume is $CUR_VOL%" \
    -r 100 \
    -i $DIR/volume-2.svg

fi
#!/bin/bash

DIR="$HOME/dotfiles/scripts/icons"

CUR_VOL=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
MUTE=$(pactl list sinks | grep Mute | sed 's/.*Mute: //g')
affirmative="yes"
negative="no"

VOL_QUIET=33
VOL_LOUD=66

if [[ $MUTE = $affirmative ]]; then
        dunstify -a "Mute" \
        "Mute" \
        "Muted" \
        -r 100 \
        -i $DIR/volume-x.svg
elif [[ $MUTE = $negative ]]; then
        if [ $CUR_VOL -le $VOL_QUIET ]; then
            dunstify -a "Mute" \
            "Mute" \
            "Unmuted" \
            -r 100 \
            -i $DIR/volume.svg
        fi
        if [ $CUR_VOL -gt $VOL_QUIET ] && [ $CUR_VOL -le $VOL_LOUD ]; then
            dunstify -a "Mute" \
            "Mute" \
            "Unmuted" \
            -r 100 \
            -i $DIR/volume-1.svg
        fi
        if [ $CUR_VOL -gt $VOL_LOUD ]; then
            dunstify -a "Mute" \
            "Mute" \
            "Unmuted" \
            -r 100 \
            -i $DIR/volume-2.svg
        fi

    fi
echo $MUTE

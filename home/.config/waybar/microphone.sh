#!/bin/sh

mic=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [ "$1" == "toggle" ]; then
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
fi

mic=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [ "$mic" == "yes" ]; then
    echo '{"text":"","class":"mic-muted"}'
else
    echo '{"text":"","class":"mic-unmuted"}'
fi
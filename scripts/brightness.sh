#!/bin/bash
DIR="$HOME/Documents/Dotfiles/scripts/icons"
MAX_BRI=$(cat /sys/class/backlight/amdgpu_bl0/max_brightness)
CUR_BRI=$(cat /sys/class/backlight/amdgpu_bl0/brightness)

# calculating current percentage
((CUR_PER = CUR_BRI * 100 / MAX_BRI))

        if (($CUR_PER > 50)); then
                dunstify -a "Brightness" \
                "Brightness" \
                "Current brightness is $CUR_PER%" \
                -r 100 \
                -i $DIR/sun.svg
        else
                dunstify -a "Brightness" \
                "Brightness" \
                "Current brightness is $CUR_PER%" \
                -r 100 \
                -i $DIR/moon.svg
        fi
    ;;
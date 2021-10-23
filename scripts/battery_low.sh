# #!/bin/bash

# DIR="$HOME/Documents/Dotfiles/scripts/icons"
# ADAPTER=$(cat /sys/class/power_supply/ACAD/online)
# BATTERY=$(cat /sys/class/power_supply/BAT1/capacity)



# # while [ 1 ]
# # do
# #   if [ $(cat /sys/class/power_supply/ACAD/online) = "0" ] && \
# #    [ $(cat /sys/class/power_supply/BAT1/capacity) \< "20" ]; then
# #        # Display Notification
# #        if [ $DISPLAY ]; then notify-send -t 8000 "Battery is low ($(cat /sys/class/power_supply/BAT1/capacity)%)" "Plug in to AC or Suspend immediately"; fi
# # fi
# #   sleep 120s
# # done
# while [ 1 ]
# do
# if (($BATTERY < 95 && $ADAPTER < 1)); then
#         dunstify -a "Battery" \
#         "Battery" \
#         "Low" \
#         -r 100 \
#         -i $DIR/sun.svg
# else
#         dunstify -a "Battery" \
#         "Battery" \
#         "Not low" \
#         -r 100 \
#         -i $DIR/moon.svg
# fi
# done

# echo $ADAPTER
# echo $BATTERY
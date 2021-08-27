#!/bin/bash
# Check AC adapter status and Battery Voltage
while [ 1 ]
do
  if [ $(cat /sys/class/power_supply/ACAD/online) = "0" ] && \
   [ $(cat /sys/class/power_supply/BAT1/capacity) \< "20" ]; then
       # Display Notification
       if [ $DISPLAY ]; then notify-send -t 8000 "Battery is low ($(cat /sys/class/power_supply/BAT1/capacity)%)" "Plug in to AC or Suspend immediately"; fi
fi
  sleep 120s
done

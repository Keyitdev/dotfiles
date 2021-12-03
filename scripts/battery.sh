#!/bin/bash

for pid in $(pidof -x battery.sh); do
    if [ $pid != $$ ]; then
        kill -9 $pid
    fi
done

DIR="/usr/local/bin/icons"

# Notify when below this percentage
warning_level=15

# How often to check battery status, in minutes
check_interval=1

while true; do
  battery_level=$(acpi -b \
    | cut -d, -f2 | cut --characters=2,3,4 \
    | sed 's/%//g')
  charging=$(acpi -b | grep -c "Charging")

  # When battery is low, and not already charging
  if [ $battery_level -lt $warning_level ] &&
     [ $charging -eq 0 ]
  then
    dunstify -a "Battery" \
        "Low battery: ${battery_level}%" \
        "Battery is running low" \
        -r 100 \
        -i $DIR/battery.svg
  fi

  sleep ${check_interval}m
done

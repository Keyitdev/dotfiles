##!/bin/sh
dark(){
  cp -f ./themes/dark/polybar/colors.ini ./polybar/
  cp -f ./themes/dark/kitty/kitty.conf ./kitty/
  #restart i3
  i3-msg restart
  #send notify
  echo "Everything is ready"
  notify-send "Everything is ready" "Enjoy :D"
}
blue(){
  cp -f ./themes/blue/polybar/colors.ini ./polybar/
  cp -f ./themes/blue/kitty/kitty.conf ./kitty/
  #restart i3
  i3-msg restart
  #send notify
  echo "Everything is ready"
  notify-send "Everything is ready" "Enjoy :D"
}
blue_high_contrast(){
  cp -f ./themes/blue_high_contrast/polybar/colors.ini ./polybar/
  cp -f ./themes/blue_high_contrast/kitty/kitty.conf ./kitty/
  #restart i3
  i3-msg restart
  #send notify
  echo "Everything is ready"
  notify-send "Everything is ready" "Enjoy :D"
}
clear
case $1 in
   "--dark") dark;;
   "--blue") blue;;
   "--blue_high_contrast") blue_high_contrast;;
   *) echo "error";;
esac

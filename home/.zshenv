if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
   sway-run
fi


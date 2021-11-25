
#!/bin/sh

switcher() {
  rofi_command="rofi -theme $HOME/.config/rofi/compact.rasi"
  options="Blue\nBlue high contrast\nDark"
  chosen="$(echo "$options" | $rofi_command -dmenu -selected-row 2 -p "Choose theme")"
  case $chosen in
    Blue) thm -Blue;;
    "Blue high contrast") thm -blue_high_contrast;;
    Dark) thm -Dark;;

  esac
}

thm() {
  if ! [ "$1" = "" ]; then
    killall -q conky tint2 dunst xsettingsd
  fi
  case $1 in
    *Blue) theme="blue";;
    *blue_high_contrast) theme="blue_high_contrast";;
    *Dark) theme="dark";;

  esac
  killall -KILL polybar
  cp -f $HOME/dotfiles/themes/$theme/polybar/colors.ini ~/.config/polybar/
  cp -f $HOME/dotfiles/themes/$theme/kitty/kitty.conf ~/.config/kitty/
  cp -f $HOME/dotfiles/themes/$theme/rofi/* ~/.config/rofi/
  cp -f $HOME/dotfiles/themes/$theme/vsc/* ~/.config/VSCodium/User/
  cp -f $HOME/dotfiles/themes/$theme/vsc/* ~/.config/Code/User/
  cp -f $HOME/dotfiles/themes/$theme/dunst/* ~/.config/dunst/
  i3-msg restart


}
switcher
case $1 in
  *rofi) switcher;;
  *) thm $1;;
esac

notify-send "Theme" "Theme changed to $chosen"
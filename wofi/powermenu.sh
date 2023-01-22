#!/bin/bash

entries="⭮ Reboot\n⏻ Shutdown\n⇠ Logout\n⏾ Suspend"

selected=$(echo -e $entries|wofi --width 250 --height 260 --dmenu --hide-scroll --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
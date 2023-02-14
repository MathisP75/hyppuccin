#!/bin/sh

function handle {
  if [[ ${1:0:12} == "activewindow" ]]; then
    if [[ $1 != "activewindow>>," ]]; then
      cat ~/.config/hypr/scripts/focused-window > ~/.config/hypr/scripts/last-focused-window
      window=$(hyprctl activewindow)
      echo $window > ~/.config/hypr/scripts/focused-window
      #notify-send $1
    fi
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | while read line; do handle $line; done
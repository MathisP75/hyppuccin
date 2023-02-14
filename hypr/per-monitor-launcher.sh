#!/bin/sh
pkill waybar
pkill hyprpaper

m=$(printenv LAPTOP)

if [ $m = 1 ]; then
    hyprpaper -c .config/hypr/hyprpaper-laptop.conf &
    sleep 2 & waybar --config .config/waybar/laptop-bar/config --style .config/waybar/laptop-bar/style.css
else
    hyprpaper -c .config/hypr/hyprpaper-desktop.conf &
    sleep 2 & waybar --config .config/waybar/desktop-bar/config --style .config/waybar/desktop-bar/style.css
fi

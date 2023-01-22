#!/bin/sh

m=$(printenv LAPTOP)

if [ $m = 1 ]; then
    waybar --config .config/waybar/laptop-bar/config --style .config/waybar/laptop-bar/style.css
else
    waybar --config .config/waybar/desktop-bar/config --style .config/waybar/desktop-bar/style.css
fi
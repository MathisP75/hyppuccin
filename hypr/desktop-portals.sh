#!/bin/bash
sleep 1
killall xdg-desktop-portal-hyprland
sleep 1
killall xdg-desktop-portal
sleep 1
killall xdg-desktop-portal-gtk
sleep 3
/usr/local/libexec/xdg-desktop-portal-hyprland &

sleep 8
/usr/lib/xdg-desktop-portal &

sleep 8
/usr/lib/xdg-desktop-portal-gtk &

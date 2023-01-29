#!/bin/bash

echo "[LOG] started script" >> desktop-portals.log
sleep 1
killall xdg-desktop-portal-hyprland && echo "[LOG] killed hyprland portal" >> desktop-portals.log
sleep 1
killall xdg-desktop-portal && echo "[LOG] killed default portal" >> desktop-portals.log
sleep 1
killall xdg-desktop-portal-gtk && echo "[LOG] killed gtk portal" >> desktop-portals.log 

sleep 3 &
/usr/local/libexec/xdg-desktop-portal-hyprland && echo "[LOG] launched hyprland portal" >> desktop-portals.log

sleep 8 &
/usr/lib/xdg-desktop-portal && echo "[LOG] launched default portal" >> desktop-portals.log 

sleep 8 &
/usr/lib/xdg-desktop-portal-gtk && echo "[LOG] launched gtk portal" >> desktop-portals.log

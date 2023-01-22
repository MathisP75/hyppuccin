m=$(printenv LAPTOP)

if [ $m = 1 ]; then
    hyprpaper -c .config/hypr/hyprpaper-laptop.conf
else
    hyprpaper -c .config/hypr/hyprpaper-desktop.conf
fi
#!/bin/bash

./tools/kbd/setkbd.sh &
xss-lock i3lock-fancy &
# ./dwm/dwmbar &
nm-applet &
fcitx5 &

bar () {
pkill xmobar 
sleep 0.5s
xmobar ~/.xmonad/xmobarrc &
}

# bar

proxy() {
    pkill v2ray >/dev/null 2>&1
    pkill qv2ray >/dev/null 2>&1
    sleep 2s
    qv2ray >/dev/null 2>&1 &
}

proxy &
feh --randomize --bg-fill $HOME/Pictures/Wallpapers/
picom -b

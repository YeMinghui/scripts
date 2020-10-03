#!/bin/sh
# attention !!!!!! there is no env for any user.
export XAUTHORITY=/home/hui/.Xauthority
export DISPLAY=:0
export HOME=/home/hui

# set repeat speed
xset r rate 250 30 &

do_set () {
    setxkbmap -option caps:swapescape
    setxkbmap -option compose:menu
    numlockx on
}
sleep 3s; do_set;

#!/bin/bash
# attention !!!!!! there is no env for any user.
export XAUTHORITY=/home/hui/.Xauthority
export DISPLAY=:0
export HOME=/home/hui

ID=$(xinput list |  grep -i Touchpad | cut -f2 | cut -f2 -d=)
# Enabled=$(xinput list-props $ID | grep "Device Enabled" | cut -f3)
if [ "$1" == "d" ]; then
    xinput disable $ID
else
    xinput enable $ID
fi

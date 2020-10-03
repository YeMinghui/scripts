#!/bin/bash

ID=$(xinput list |  grep -i Touchpad | cut -f2 | cut -f2 -d=)
Enabled=$(xinput list-props $ID | grep "Device Enabled" | cut -f3)
if [ $Enabled == 1 ]; then
    xinput disable $ID
else
    xinput enable $ID
fi

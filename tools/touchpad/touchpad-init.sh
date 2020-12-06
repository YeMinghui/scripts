#!/bin/bash
NATURE_SCORLL=1
TAP_TO_CLICK=1

ID=$(xinput list |  grep -i Touchpad | cut -f2 | cut -f2 -d=)

set_prop() {
    prop=$(xinput list-props $ID | grep "$1" | cut -f2 -d'(' | cut -f1 -d')')
    xinput set-prop "$ID" "$prop" "$2"
}

set_prop "libinput Natural Scrolling Enabled (" $NATURE_SCORLL
set_prop "libinput Tapping Enabled (" $TAP_TO_CLICK

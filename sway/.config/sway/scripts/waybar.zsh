#!/bin/zsh

if pgrep -x waybar > /dev/null; then
    pkill waybar
fi

waybar & ; notify-send "Waybar restarted" "The Waybar has been restarted successfully."

#!/bin/zsh

if pgrep -x waybar > /dev/null; then
    pkill waybar
fi

waybar &
#!/bin/bash
# Minimal waybar launcher

killall waybar 2>/dev/null
pkill waybar 2>/dev/null
sleep 0.5

if [ ! -f "$HOME/.config/ml4w/settings/waybar-disabled" ]; then
    waybar -c "$HOME/.config/waybar/config" -s "$HOME/.config/waybar/style.css" &
else
    echo ":: Waybar disabled"
fi

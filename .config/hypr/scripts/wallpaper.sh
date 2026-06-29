#!/bin/bash
# Wallpaper post-command: run pywal + restart waybar

WALLPAPER="$1"

if [ -z "$WALLPAPER" ] || [ ! -f "$WALLPAPER" ]; then
    echo "No valid wallpaper provided"
    exit 1
fi

# Generate pywal colors
wal -i "$WALLPAPER" -q

# Restart waybar
~/.config/waybar/launch.sh &

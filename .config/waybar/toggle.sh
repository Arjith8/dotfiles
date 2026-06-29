#!/bin/bash
# Toggle waybar on/off

DISABLED_FILE="$HOME/.config/ml4w/settings/waybar-disabled"

if [ -f "$DISABLED_FILE" ]; then
    rm "$DISABLED_FILE"
else
    mkdir -p "$(dirname "$DISABLED_FILE")"
    touch "$DISABLED_FILE"
fi

~/.config/waybar/launch.sh &

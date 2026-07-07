#!/bin/bash
# Launch hyprpaper with proper Hyprland IPC environment

# Try to get the instance signature from a running Hyprland instance
if [ -z "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
  INSTANCE=$(hyprctl instances -j 2>/dev/null | python3 -c "import sys,json; data=json.load(sys.stdin); print(data[0]['instance'] if data else '')" 2>/dev/null)
  if [ -n "$INSTANCE" ]; then
    export HYPRLAND_INSTANCE_SIGNATURE="$INSTANCE"
  fi
fi

exec hyprpaper

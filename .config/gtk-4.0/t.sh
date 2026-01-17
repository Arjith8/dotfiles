#!/bin/bash

# Go to your dotfiles repo
cd ~/dotfiles || {
  echo "Couldn't cd into ~/dotfiles"
  exit 1
}

# Loop through all symlinks in the repo
find . -type l | while read -r link; do
  target=$(readlink "$link")

  # Skip non-absolute links
  [[ "$target" != /* ]] && continue

  abs_link=$(realpath "$link")
  rel_target=$(realpath --relative-to="$(dirname "$abs_link")" "$target")

  echo "Converting $link"
  rm "$link"
  ln -s "$rel_target" "$link"
done


#!/bin/bash

stack=(~)
status_code=0
search_term=""

while (($status_code == 0)); do
    path=$(find "${stack[-1]}" -maxdepth 1 -type d | fzf)
    status_code=$?
    stack+=($path)
done

echo ${stack[@]}
echo ${stack[-1]}

tmux set-environment -g NEW_SESSION_PATH "${stack[-1]}"

read

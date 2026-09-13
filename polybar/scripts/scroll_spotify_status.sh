#!/bin/bash
if playerctl -p spotify status &>/dev/null; then
    playerctl -p spotify metadata --format "{{ artist }} - {{ title }}"
else
    echo "Now - Playing"
fi

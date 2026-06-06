#!/bin/bash

# lista redes WiFi
chosen=$(nmcli dev wifi list | awk 'NR>1 {print $2}' | wofi --dmenu -p "Conectar WiFi")

if [ -n "$chosen" ]; then
    nmcli dev wifi connect "$chosen"
fi

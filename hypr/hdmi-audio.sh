#!/bin/bash

HDMI=$(wpctl status | grep -i "hdmi" | head -n 1 | awk '{print $2}')

wpctl set-default "$HDMI"

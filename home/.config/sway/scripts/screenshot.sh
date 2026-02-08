#!/usr/bin/env bash

FILE=~/Pictures/Screenshots/shot_$(date +%Y_%m_%d_%H_%M_%S).png
grim -g "$(python3 ~/.config/sway/scripts/my-slurp.py)" $FILE
wl-copy < $FILE

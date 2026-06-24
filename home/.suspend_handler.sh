#!/bin/bash
# this script is run when i press power button on my laptop
# or close the lid. despite the name, it actually doesn't
# suspend the laptop, it turns off the screen, so that it can
# keep running. if you don't need that, you should just call
# `systemd-run --user --machine=YOUR_USERNAME@ bash -c 'swaylock -c 000000' && systemctl suspend`
# but you might need to make this script not run when lid is open.
# i haven't tried, so i'm not too sure
#
# the steps to make it run on other machines:
# - `snvim /etc/systemd/logind.conf`
# - in it make `HandlePowerKey=ignore`
# - and `HandleLidSwitch=ignore`
# - run:
# ```
# echo "event=button/power.*
# action=/home/$USER/.suspend_handler.sh" | sudo tee /etc/acpi/events/powerbutton
# echo "event=button/lid.*
# action=/home/$USER/.suspend_handler.sh" | sudo tee /etc/acpi/events/lid
# ```
# - reboot ig

# WARNING: a lot of things are hardcoded here, and need to be modified on different machines
systemd-run --user --machine=meow@ bash -c '
swaylock -c 000000 && \
brightnessctl set 48001 && \
brightnessctl -d "dell::kbd_backlight" set 100%
'

brightnessctl set 0
brightnessctl -d "dell::kbd_backlight" set 0

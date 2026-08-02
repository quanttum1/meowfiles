#!/bin/bash
# this script is run when i press power button on my laptop or close the lid

systemd-run --user --machine=meow@ swaylock -c 000000
systemctl suspend

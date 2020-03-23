##!/bin/bash
## You will need the module upower

upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $2} '


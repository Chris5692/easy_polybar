#!/bin/bash

## If the default uncommented one gives error plz use the other one

## Use this if you have a Uefi install or is you have the file power_now in /sys/class/power_supply/BAT0/
#a="$(cat /sys/class/power_supply/BAT0/current_now)"
#echo "$(($a/1000000))"W""

## Use this if you have a grub in bios mode or if you don't have the file power_now in /sys/class/power_supply/BAT0/


echo - | awk "{printf \"%.1f\", \
$(( \
  $(cat /sys/class/power_supply/BAT0/current_now) * \
  $(cat /sys/class/power_supply/BAT0/voltage_now) \
)) / 1000000000000 }" ; echo " W "

#!/usr/bin/env bash
while sleep 60; do
  bat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 \
        | grep percentage | awk '{print $2}' | sed 's/%//')
  if [[ $bat -le 15 && $bat -gt 5 ]]; then
    notify-send "Battery low: $bat%"
  elif [[ $bat -le 5 ]]; then
    notify-send "Battery critical: $bat%" --urgency=critical
  fi
done


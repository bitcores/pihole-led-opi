#!/bin/bash
# script to blink the red LED on an orange pi when
# pihole logs a blocked request
# based on https://github.com/esnalabu/piholeblink

ledcmd="/sys/class/leds/orangepi:red:status/brightness"
piholelog="/var/log/pihole.log"

# check for root
if [ "$EUID" -ne 0 ]; then
  echo "Needs root to run"
  exit 1
fi

tailf $piholelog | while read INPUT; do
  if [[ "$INPUT" == *"/etc/pihole/gravity.list"* ]]; then
    echo 255 > $ledcmd
    sleep 0.25
    echo 0 > $ledcmd
    sleep 0.125
  fi
done

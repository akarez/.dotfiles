#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main -r 2>&1 | tee -a /tmp/polybar1.log & disown

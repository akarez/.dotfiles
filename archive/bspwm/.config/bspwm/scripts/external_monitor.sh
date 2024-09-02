#! /bin/bash

external_monitor=$(xrandr --query | grep 'HDMI2')
internal_monitor=$(cat /proc/acpi/button/lid/LID0/state)

if [[ $internal_monitor = *open* ]] && [[ $external_monitor = *disconnected* ]]; then
        xrandr --output eDP1 --primary --mode 2560x1600 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off &
        bspc monitor eDP1      -d I II III IV V VI
fi

if [[ $internal_monitor = *open* ]] && [[ $external_monitor = *connected* ]]; then
	xrandr --output eDP1 --primary --mode 2560x1600 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 320x0 --rotate normal --output VIRTUAL1 --off &
	bspc monitor eDP1      -d I II III IV V VI
	bspc monitor HDMI2     -d VI 
fi

if [[ $internal_monitor = *closed* ]] && [[ $external_monitor = *connected* ]]; then
	xrandr --output eDP1 --off --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off &
	bspc monitor HDMI2      -d I II III IV V VI
fi

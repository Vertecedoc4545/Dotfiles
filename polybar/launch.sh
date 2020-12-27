#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch
#my_laptop_external_monitor=$(xrandr --query | grep 'VGA1')
#if [[ $my_laptop_external_monitor = VGA1\ connected* ]]; then
#else
#fi

polybar primary -c ~/.config/polybar/config.ini &
sleep 1 &&
polybar work -c ~/.config/polybar/config.ini &
polybar windw -c ~/.config/polybar/config.ini &


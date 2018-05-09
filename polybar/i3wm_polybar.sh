#!/bin/env sh

pkill polybar

sleep 1;

MONITOR=DP1 polybar i3wm &

#!/bin/sh

# i3 runs this on every reload. Wait for killed bars to exit so the new bar
# can claim its X11 resources reliably.
killall -q polybar
while pgrep -x polybar >/dev/null 2>&1; do
    sleep 0.1
done

exec polybar example

#!/usr/bin/env bash
# following shebang directive would also work: #!/bin/bash

# this script pretends the OS from going into sleep mode / screen saver / darker screen
# this is done by moving the mouse pointer every 60s

sleep_period=60s

while true; do
    # move mouse pointer to position 10|10 (relative to top left corner) and immediatly back to previous position
    xdotool mousemove 10 10 mousemove restore
    sleep ${sleep_period}
done


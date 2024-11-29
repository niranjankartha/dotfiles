#!/bin/bash

killall -q polybar
echo "--- RELAUNCH ---" | tee -a /tmp/polybar.log
polybar base & disown | tee -a /tmp/polybar.log


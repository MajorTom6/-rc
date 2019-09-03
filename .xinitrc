#!/bin/bash

/home/tom/.screenlayout/set.sh

while true; do
	/home/tom/src/dwmstatus/dwmstatus &
	nitrogen --restore
	/home/tom/src/dwm/dwm 2> /home/tom/.dwm.log
done

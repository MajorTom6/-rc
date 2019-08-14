#!/bin/bash

/home/tom/.screenlayout/set.sh

while true; do
	/home/tom/dwmstatus/dwmstatus &
	nitrogen --restore
	/home/tom/dwm/dwm 2> /home/tom/.dwm.log
done

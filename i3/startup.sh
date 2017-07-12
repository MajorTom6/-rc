#!/bin/bash

i3-msg 'workspace 1; append_layout /home/tom/.i3/one.json'
thunderbird &
xterm -bg black -fg white -e "htop" &
virtualbox &

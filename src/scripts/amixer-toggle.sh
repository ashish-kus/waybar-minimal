#!/bin/bash

# Check the current state of the speaker
state=$(amixer -D pulse sget Master | awk '/\[on\]/{print "unmute"; exit} /\[off\]/{print "mute"; exit}')

# Toggle the state of the speaker
#
if [ "$state" = "[on] "]; then 
  amixer 
# amixer -D pulse sset Master "$state" > /dev/null


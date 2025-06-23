#!/usr/bin/bash

if [ "$1" == "set" ]; then
	result=$(pactl list short sinks | grep "reversed")
	if [[ -n "$result" ]]; then
    		echo "Reversing already loaded."
	fi
    	pactl load-module module-remap-sink sink_name=reversed channels=2 master=$(pactl list short sinks | awk '$2 ~ /^bluez_output\.64_68_76_FC_B7_D1/ { print $2 }') channel_map=right,left	
    	pactl set-default-sink reversed
	echo "Module loaded succesfully."
elif [ "$1" == "unset" ]; then
	ID=$(pactl list modules short | grep "reversed"| awk '{print $1}')
	pactl unload-module $ID
	echo "Module unloaded succesfully."
fi



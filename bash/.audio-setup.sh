#!/usr/bin/env bash

# Find speakers
dev=$(pactl list short sinks | awk '$2 ~ /^bluez_output\.64_68_76_FC_B7_D1/ { print $2 }')
if [[ -z "$dev" ]]; then
    echo "Error: could not find Bluetooth device."
    exit 1
fi

if [ "$1" == "set" ]; then
    
    # Check whether the inversion is already loaded
    result=$(pactl list short sinks | grep "reversed")
    if [[ -n "$result" ]]; then
        echo "Reversing already loaded."
        exit 1
    fi

    # Invert channels
    pactl load-module module-remap-sink sink_name=reversed sink_properties="device.description='Reversed Output'" channels=2 master="$master_sink" channel_map=right,left
    pactl set-default-sink reversed
    echo "Module loaded successfully."

elif [ "$1" == "unset" ]; then
    ID=$(pactl list modules short | grep "reversed" | awk '{print $1}')
    if [[ -n "$ID" ]]; then
        pactl unload-module "$ID"
        echo "Module unloaded successfully."
    else
        echo "No reversed module found."
    fi
else
    echo "Usage: $0 [set|unset]"
    exit 1
fi

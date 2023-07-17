#!/bin/bash

current_sink=$(pacmd list-sinks | awk '/\* index:/ {print $3}')
is_muted=$(pacmd list-sinks | awk '/\* index:/ {sink_index = $3} /^[\t ]+muted:/ {print $2}' | sed -n "$((sink_index + 1))p")

if [ "$is_muted" == "yes" ]; then
    pacmd set-sink-mute "$current_sink" 0
else
    pacmd set-sink-mute "$current_sink" 1
fi

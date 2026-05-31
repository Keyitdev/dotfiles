#!/bin/sh

LOG_FILE="$HOME/.system_stats.json"
today=$(date +%Y-%m-%d)

if [ ! -f "$LOG_FILE" ]; then
    echo "0s"
    exit 0
fi

total_seconds=$(jq -r ".\"$today\".screen.turned_on_s // 0" "$LOG_FILE")

if [ "$total_seconds" -eq 0 ]; then
    echo "0s"
    exit 0
fi

h=$(( total_seconds / 3600 ))
m=$(( (total_seconds % 3600) / 60 ))
s=$(( total_seconds % 60 ))

output=""
[ "$h" -gt 0 ] && output="${h}h "
[ "$m" -ge 0 ] && output="${output}${m}m "
# [ "$s" -gt 0 ] || [ -z "$output" ] && output="${output}${s}s"

echo "$output" | sed 's/ $//'
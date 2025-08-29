#!/bin/bash

# Get current day of week (1=Mon, ..., 7=Sun)
day=$(date +%u)

# Get current hour (00–23) and minutes (00–59)
hour=$(date +%H)
minute=$(date +%M)

# Convert to minutes since midnight for easier comparison
current_minutes=$((10#$hour * 60 + 10#$minute))
start_minutes=$((7 * 60))     # 07:00 → 420 minutes
end_minutes=$((17 * 60))      # 17:00 → 1020 minutes

# Check if weekday and time window
if [ "$day" -ge 1 ] && [ "$day" -le 5 ] && \
   [ "$current_minutes" -ge "$start_minutes" ] && \
   [ "$current_minutes" -lt "$end_minutes" ]; then
    # Weekday and within 07:00–17:00
    ~/.config/sway/scripts/launch_work_messages.sh
else
    # Outside time window or weekend
    ~/.config/sway/scripts/launch_private_messages.sh
fi

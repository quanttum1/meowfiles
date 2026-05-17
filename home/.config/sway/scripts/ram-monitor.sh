#!/usr/bin/env bash

THRESHOLD=90

while true; do
    USED=$(free | awk '/Mem:/ { printf("%.0f", $3/$2 * 100) }')

    if [ "$USED" -ge "$THRESHOLD" ]; then
        notify-send \
            "High RAM Usage" \
            "Memory usage is at ${USED}%"
    fi

    sleep 1
done

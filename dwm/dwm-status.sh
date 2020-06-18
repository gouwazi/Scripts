#!/bin/bash

date() {
    date="$(date + "%A, %B %d - %H:%M")"
    echo -e " $date"
}

while true; do
    xsetroot "$(date)"
    sleep 1s
done &

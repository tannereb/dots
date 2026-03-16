#!/bin/bash

current=$(brightnessctl g)
max=$(brightnessctl m)

percent=$(( current * 100 / max ))

if [ "$percent" -gt 10 ]; then
    brightnessctl set 5%
else
    brightnessctl set 100%
fi

#!/bin/sh
width=$(inkscape -W "$1" | cut -d '.' -f 1)
height=$(inkscape -H "$1" | cut -d '.' -f 1)

if [ "$width" -gt "$height" ]; then
    inkscape \
        --export-type=png \
        --export-filename="$(dirname "$1")/$(basename "$1" .svg).png" \
        --export-area-page \
        --export-width=512 \
        "$1"
else
    inkscape \
        --export-type=png \
        --export-filename="$(dirname "$1")/$(basename "$1" .svg).png" \
        --export-area-page \
        --export-height=512 \
        "$1"
fi

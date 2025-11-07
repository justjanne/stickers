#!/usr/bin/env bash
shopt -s nullglob
IFS=$'\t\n'

echo -n > designs/README.md
for file in designs/*.svg; do
    echo "<img src="https://raw.githubusercontent.com/justjanne/stickers/main/${file// /%20}" width="256" height="256" />&nbsp;" >> designs/README.md;
done

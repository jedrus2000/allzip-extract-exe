#!/bin/bash
FILENAME=$1
IFS=':'
GREP_RES=(`grep --only-matching --byte-offset --binary --text --perl-regexp "\x45\x47\x47\x41" "$FILENAME"`)
if [ ${GREP_RES[0]} ]; then
    dd skip=${GREP_RES[0]} if="$FILENAME" of=out.egg bs=1
    ./unegg -x out.egg .
else
    echo "Compressed struct not found."
fi

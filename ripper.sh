#!/bin/bash

if [ "$1" == "" ]; then
    echo "Missing Track ID"
    exit 1
fi

echo "Destination:"
read

mkdir -p "tracks/$REPLY"

cdda2wav -t $1 "tracks/$REPLY/track"

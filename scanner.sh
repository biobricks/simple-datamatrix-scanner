#!/bin/bash

# for beep to work:
# sudo modprobe pcspkr

v4l2-ctl -c brightness=100
v4l2-ctl -c contrast=100

PREVCODE=""
while true; do
    BARCODE=$(streamer -q -f jpeg -s 1024x768 -o /dev/stdout | dmtxread -m 200 -N1 /dev/stdin)
    if [ ${#BARCODE} -gt 3 ]; then
        echo $BARCODE
        beep -f 2000 -n -f 1500
    fi
done


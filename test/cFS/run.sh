#!/bin/bash -e

if [ $# -lt 1 ]; then
    echo "Usage: $0 MODE (0: Local, 1: Remote), PACKET_SIZE (0 : 1KB, 1: 8KB, 2: 16KB, 3: 32KB)"
    exit 1
fi

MODE=$1
PACKET_SIZE=$2

if [ "$MODE" -eq 0 ]; then
    mids=(0x1f83)
elif [ "$MODE" -eq 1 ]; then
    mids=(0x1d82)
else
    echo "Unknown Mode"
fi

echo Sending file requests
for mid in "${mids[@]}"
do
    echo Requesting for MID ${mid}
    printf '' | ./cisend --mid=$mid --cc=$PACKET_SIZE --host=127.0.0.1
done

echo done
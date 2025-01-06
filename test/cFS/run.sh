#!/bin/bash -e

if [ $# -lt 1 ]; then
    echo "Usage: $0 MODE (0: Local, 1: Remote), ITERATIONS (0 : 10, 1: 100, 2: 500, 3: 1000)"
    exit 1
fi

MODE=$1
ITERATIONS=$2

if [ "$MODE" -eq 0 ]; then
    mids=(0x1d83 0x1f83)
elif [ "$MODE" -eq 1 ]; then
    mids=(0x1d82 0x1f82)
else
    echo "Unknown Mode"
fi

echo Sending file requests
for mid in "${mids[@]}"
do
    echo Requesting for MID ${mid}
    printf '' | ./cisend --mid=$mid --cc=$ITERATIONS --host=127.0.0.1
done

echo done
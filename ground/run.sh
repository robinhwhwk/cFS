#!/bin/bash -e

if [ $# -lt 1 ]; then
    echo "Usage: $0 MODE (0: Local, 1: Remote), PACKET_SIZE (0 : 1KB, 1: 8KB, 2: 16KB, 3: 32KB)"
    exit 1
fi

MODE=$1
PACKET_SIZE=$2
HOST=$3


echo Sending file requests
for mid in "${mids[@]}"
do
    echo Requesting for MID ${mid}
    printf '' | ./cisend --mid=$mid --cc=$PACKET_SIZE --host=$HOST
done

echo done
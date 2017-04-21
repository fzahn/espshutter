#!/bin/bash
if [ $# -ne 1 ]; then
    echo "one parameter is mandatory!"
    echo "enter the IP of the plug to upgrade"
    echo ""
    echo "e.g. $0 192.168.0.101"
    exit 1
fi
IP=$1
FILES="wifi_config.lua webserver.lua init.lua"
for f in $FILES; do
    ./tcpFlash.py -t $IP -f $f
    if [ $? -ne 0 ]; then
        echo "STOOOOP"
        exit 1
    fi
done
exit 0

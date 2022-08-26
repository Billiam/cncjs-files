#!/bin/bash

SERVER=192.168.1.1

ping -c2 ${SERVER} > /dev/null

if [ $? != 0 ]
then
    echo "Rebooting wifi"
    ip link set wlan0 down
    sleep 5
    ip link set wlan0 up
    systemctl restart dhcpcd
fi
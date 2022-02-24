#!/bin/bash

echo "time"
echo "host name"
echo "network configuration"
read -p "enter operation " opt

shopt -s nocasematch

case $opt in 

time)
    echo "compressing the file using tar"
    ;;
host)
    echo "hostname is $HOSTNAME"
    ;;
network)
    echo "system info is: $(ifconfig)"
    ;;
*) #if none of the above is the case
    echo "enter either time, host or network"
esac

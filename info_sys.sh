#!/bin/bash

echo "current date -> $(date) and hostname is $(hostname)"

echo "system info: "
/sbin/ifconfig

echo "Enter the name: "
read name
echo "The current username is: $name"

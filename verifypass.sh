#!/bin/bash

read -p "enter a password " pass
if test -z $pass
then
    echo "password not found"
exit 1 #exit status is non-zero. echo $?=1 in this case
else
    echo "you have entered into system"
fi

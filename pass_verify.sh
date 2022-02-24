#!/bin/bash

#script to check the password
read -s -p "enter the password" pass
if test "$pass" == "ei" 
then
	echo "correct password"
else
	echo "incorrect password"
fi

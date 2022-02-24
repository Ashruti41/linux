#!/bin/bash

pass_file=/etc/passwd

read -p "enter the username " user
grep "^$user" $pass_file>/dev/null
status=$?

if test $status -eq 0
then
	echo "user exists"
else
	echo "user not found"
fi

#!/bin/bash
#user found with function
pass_file=/etc/passwd

user(){
read -p "enter the username " user
grep "^$user" $pass_file>/dev/null
status=$?
if test $status -eq 0
then 
    echo "user exists"
else
    echo "user not found"
fi
}
user 

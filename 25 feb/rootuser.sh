#!/bin/bash 
#whether the user is root or not

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

if [ $(id -u) -eq 1000 ]
then 
  echo "root user"
  user
else
  echo "other user permission denied only root user have the permission"
fi 

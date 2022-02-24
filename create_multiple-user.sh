#Write the script for adding user

#!/bin/bash

#sudo -i
user_add="user1 user2 user3 user4 user5"

for user in $user_add
do
     grep "^user" /etc/passwd>/dev/null
     status=$?
     if test $status -eq 0
     then 
       echo "user with username $user already exists"
     else
       useradd $user
       echo "user added $user"
     fi
done

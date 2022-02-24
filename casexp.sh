#!/bin/bash

# case example script
read -p "enter the way you wish to take the backup " bktype

case $bktype in 

tar)
    echo "compressing the file using tar"
    ;;
zip)
    echo "compressing the file using zip"
    ;;
dump)
    echo "compressing the file using mysql dump"
    ;;
*) #if none of the above is the case
    echo "enter either tar, zip, dump"
esac

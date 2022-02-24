#!/bin/bash 

read -p "enter the number for table: " tab

# for i in $(ls g1-project/*.txt)
# do
#     echo "$i"
# done

# print out a table
for i in {1..10}
do 
    echo "$tab * $i = $((tab*i))"
done

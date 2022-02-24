#!/bin/bash

read -p "enter a number " num
if (( $num > 0 ))
then
	echo "positive"
elif(( $num < 0 ))
then
	echo "negative"	
else
	echo "zero"
fi

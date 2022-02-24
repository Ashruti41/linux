#!/bin/bash
read -p "enter the location to find in " location
read -p "enter the location to save the file " to_save


if [ "$(ls -A $HOME/$location)" ]
then
	find $HOME/$location -name "*.html" > $HOME/$to_save/khikhi.txt && find $HOME/$location -name "*.txt" >> $HOME/$to_save/all_data.txt
	echo "not empty"
else
	echo "empty"
fi

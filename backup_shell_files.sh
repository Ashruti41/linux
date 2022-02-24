#!/bin/bash

dest=$HOME/foo

#find $directory -type f -name "*.sh"

[ -d $dest ] || mkdir $dest

#cp $directory $dest

#mkdir $dest
for i in $(ls *.sh)
do
	cp "$i" $dest
done

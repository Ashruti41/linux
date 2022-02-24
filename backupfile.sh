#!/bin/bash

DEST=/home/BKUP
SRC=/home/Downloads

[ !-d $DEST] && mkdir -p $DEST
[ !-d $SRC] && {echo "src directory is not exist" exit 1;}

echo "backing up the files $DEST"

tar zcvf $DEST/bkup.tar.gz $SRC 2>/dev/null

status=$?
[$status -eq 0] && {echo "backup done"}

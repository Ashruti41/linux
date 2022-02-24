#!/bin/bash

# an example script for countstarts
tar -cvf $HOME/backup/sample.tar.gz $HOME/SHELL-SCRIPTS/*.sh 2>/dev/null  #it will creates a zip file of /home/axay/SHELL-SCRIPTS directory to /home/zziipp/sample.tar.gz directory and if error occurs then error log will be redirected to the /dev/null

[ $? -eq 0 ] && echo "backup done" || echo "error while backing up"

status=$?

mail -s 'Backup status' hemal.shah@guni.ac.in<<mailstarts
Date: $(date)
Host: $(hostname)
Status: $status
mailstarts

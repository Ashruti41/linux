#!/bin/bash

# to sort the content(as per lines) in file line 
# sort < names.txt


# grep: for pattern or to find anything
grep axay /etc/passwd >/dev/null && echo "user found" || echo "user not found" #&& wil execute if axay found in /etc/passwd and || will execute if not
# by default this will print some other line as well to prevent that we can redirect the output to the file /dev/null(kernel will automatically wipes out the content from here)

# to get the count of characters
wc -c < error_mailer.sh #instead of file name we can give text also, shown below...

#this will counts the characters
wc -c << countstarts 
this is a first line
this is a second line
countstarts

#this will counts the words
wc -w << countstarts 
this is a first line
this is a second line
countstarts

#this will counts the lines
wc -l << countstarts 
this is a first line
this is a second line
countstarts



var="this is a sesion note of linux fundamentals"
grep "linux" <<<$var #<<< to find a matched pattern in $var

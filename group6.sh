############# - problem statement
# SCRIPT : Create a shell script which creates a list of all broken symbolic links on the system and print it. 
# Your Approach:
# First we learned to use ln command to create symbolic as well as hard links.
# Then we learned  to search for the links in the system using find command’s “-L” switch.
# We searched for broken symbolic links thereafter using find command’s  “-type l” switch and stored the list of broken symbolic links to a file called broken.txt for future reference.
#############




#!/bin/bash

echo "your files are being created & links will be created afterwards..."

for i in {1..5};
do
    touch text_$i.txt
done;

echo "this is a content of text_1.txt" > text_1.txt
echo "this is a content of text_2.txt" > text_2.txt

ln -s text_1.txt text_1_symbolic.txt
ln -v text_2.txt text_2_hardlink

find . -type l > found.txt

echo "list of the symbolic links from the file found.txt"
cat found.txt

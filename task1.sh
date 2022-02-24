#Write a shell command that associate the file descriptor 2 to a file called log.txt and send fd #2 to a log.txt instead of the screen. Then associates fd #1 with the file associated with the fd#2.
#!/bin/bash

echo "This is a append line from the shell" >> sample.txt 2> log.txt
cat sample.txt 1> log.txt

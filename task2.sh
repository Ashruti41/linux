#Write a shell script to open /etc/passwd file using fd(input) and copy the same to /tmp/passwd.output file using file descriptor(output).
#!/bin/bash
#Script to open etc/passwd, copy it to tmp/passwd and display it
exec 3</etc/passwd
exec 4<>/tmp/passwd.out
cat <&3 >&4
cat /tmp/passwd.out
exec 3<&-
exec 4<&-

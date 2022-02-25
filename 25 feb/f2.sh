#!/bin/bash -x
#use of FUNCNAME
backup(){
	local d=$1
	[ ! -d "$d" ] && { echo "$FUNCNAME():directory does not exits"; exit 1;}
}
backup $1
echo "backup started"



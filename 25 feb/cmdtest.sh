#!/bin/bash

cmd(){
val=$1
echo "the name of script is $0"
echo "first argument is $1"
echo "total arguments are $*"
echo "total arguments are $@"
}
echo "function call"
cmd city
echo "Giving call second time"
cmd city kia nexa bmw

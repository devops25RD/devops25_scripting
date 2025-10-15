#!/bin/bash

count=${1:-10}
length=${2:-5}
tstamp=$(date +"%Y-%m-$d")

for file in $(seq 1 $count)
do
    hash=$(openssl rand -base64 32 | tr -dc 'A-Za-z' | head -c $length)
    echo -e "This is $file th script Genarated with creater.sh \n $(openssl rand -base64 10000 | tr -dc 'A-Za-z') " >> $file-script-$hash-$tstamp.sh
done

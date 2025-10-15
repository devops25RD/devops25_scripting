#!/bin/bash

echo "Enter the file name"
read File

mapfile -t lines < "$File"
for (( i=${#lines[@]}-1; i>=0; i-- ));
do
 echo "${lines[i]}"
done


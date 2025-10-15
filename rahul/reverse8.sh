#!/bin/bash

echo -n "Enter a string: "
read string

reverse=""

len=${#string}

i=$((len - 1))

while [ $i -ge 0 ]
do
    reverse="$reverse${string:$i:1}"
    ((i--))
done

echo "Reversed string: $reverse"


#!/bin/bash

#If there are not at-least two parameter in a script.
if (( $#!=2 )); then
    #Print an error and exit.
    echo "Error, provide two numbers" && exit 1
fi
#For every number between the first argument and the last.
for ((i = $1; i <= $2; i++))
do
    #For that number create a new folder or directory.
    echo "Creating directory number $i"
    mkdir "week$i"
done
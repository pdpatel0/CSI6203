#!/bin/bash
#Check weather user input is a filename or not.
if [ -f "$1" ]; then
    #If user input is a file name then it's shows a file contents.
    cat $1
else
    #otherwise, print an error
    echo "I couldn't find that file"
fi

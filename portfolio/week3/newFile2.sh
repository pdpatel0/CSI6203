#!/bin/bash

#conditional statement script as new file.

# '$#' used for take the number of argument in bash terminal.
if [ $# -lt 2 ]; then
    echo 'Enter only 3 arguments:'
    exit 1
else
var=$1 #Assign variable.
    for i in "$@"; do # loop with the variable attributes.
        if [ -e $i ]; then #check weather its a file or a directory
            if [ $i -nt $var ]; then #checking the newest file
                var=$i
            fi
        else #print if it's doesn't exist.
        echo "Doesnt Exist, $i" 
        fi
done 
#print the output for newest file.
echo "the newest file is $var"    
fi



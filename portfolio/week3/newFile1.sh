#!/bin/bash

#conditional statement script as new file.

# '$#' used for take the number of argument in bash terminal.
if [ "$#" -ne 3 ]; then
    echo 'Enter only 3 arguments:'
    exit 1
    #Check if arguments are filenames.
    elif test -f $1 -a -f $2 -a -f $3 ;then
    echo "All Filenames are exist."
    echo "The newest file is"
    #Lists files with their timestamps that have been inputed and picks the header file and ouputs it
    ls -t $* | head -1
else
    echo "Not All Filenames" #if all are not filenames than print not all of them.
fi

#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo 'Enter 3 arguments:'
    exit 1
    elif test -f $1 -a -f $2 -a -f $3 ;then
    echo "All the Filenames exists"
    echo "The newest file is"
    ls -t $* | head -1
else
    echo "Not All Filenames"
    
fi

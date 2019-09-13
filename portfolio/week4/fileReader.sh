#!/bin/bash

if [ -f "$1" ]; then
    cat $1
else
    #otherwise, print an error
    echo "I couldn't find that file"
fi

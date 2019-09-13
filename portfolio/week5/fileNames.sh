#!/bin/bash

input="$1"
if [ -f "$1" ]; then
    while IFS= read -r line
    do
        [ -z "$line" ] && continue #if the line/string is zero its going to skip that line
        if [ -f  "$line" ]; then #if the line is a file then print that file exist
            echo "$line - That file Exists"
            
            elif [ -d "$line" ]; then #if the line is a directory then print its a directory
            echo "$line - That's a Directory"
            
        else
            echo " $line - I don't know what that is!" # if the line is not a file or directory
            
        fi
        
    done < "$1"
    
else
    #otherwise, print an error
    echo "I couldn't find that file"
    echo "Type filename in bash terminal ./filenames.sh xxxx.txt "
fi


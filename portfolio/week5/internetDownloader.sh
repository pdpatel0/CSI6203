#!/bin/bash

ping -c2 8.8.8.8 #ping with 3 echo packet requests

if [ $? -eq 0 ] #checks the exit status of the previous code 0 means true and 1 means false
then
    echo "internet seems to be connected"
    while true; do #Starting while loop.
        read -p "Please type a Website URL to download: " url #Prompt to user for input and store it into URL.
        if [ $url == "exit" ]; then #If URL is exist than exit the operation.
            echo "Exit the program."
            exit 1
            
        else
            wget $url #For download the URL.
        fi      
    done #end of the loop.   
    
else
    echo "Internet is not connected"
fi

#!/bin/bash
printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}
#This function will get a value between the 2nd and 3rd arguments
getNumber()
{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY > $3 )); do
        printError "Input must be between $2 and $3"
        read -p "$1: "
    done
}

getNumber "Please type a number between 1 and 100 " 1 100
if [ $REPLY == 42 ]; then
    printf "Correct\n\n"
fi

until [ $REPLY == 42 ]; do
    if [ $REPLY < 42]; then
        printf "too high\n\n"
    elif [ $REPLY > 42 ]; then
        printf "too low\n\n"
    fi
    getNumber "Please type a number between 1 and 100 " 1 100
done
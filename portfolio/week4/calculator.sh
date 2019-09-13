#!/bin/bash

# Using for loop through all attributes.
for i in $*; do
    num1=$1
    operator=$2
    num2=$3
done
case $operator in
    +) #check if its additon.
        #Sum of two numbers.
        answer=$(( $num1 + $num2))
    echo -e "\033[34m$answer";;
    
    -)
        #subtraction of two numbers.
        answer=$(( $num1 - $num2))
    echo -e "\033[32m$answer";;
    
    x)
        #Multiplication of two numbers.
        answer=$(( $num1 * $num2))
    echo -e "\033[31m$answer";;
    
    /)
        #Division of two numbers.
        answer=$(( $num1 / $num2))
    echo -e "\033[35m$answer";;
    
esac


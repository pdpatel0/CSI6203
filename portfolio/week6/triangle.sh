#!/bin/bash

atriangle()
{
    printf "The area for a triangle with base $1 and height $2 is $(($1*$2/2)) \n\n"
}

for ((a=1; a<101; a++)); do 
    for ((b=1; b<101; b++)); do
        atriangle $a $b
    done
done
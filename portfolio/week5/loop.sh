#!/bin/bash
# Print until 1000 in a loop skipping 3 numbers

x=1 #Set counter to one.
while [ $x -le 1000 ] #loop continue until x is 1000
do
    echo $x # print x on output screen.
    x=$(($x + 3)) #increase x by 3 numbers in each loop
done
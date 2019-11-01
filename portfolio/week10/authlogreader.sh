#!/bin/bash

cat /var/log/auth.log | awk 'begin{FS=" "}{
        printf $1 " " $2 " " $3 "\n" $4 "\n\t" $6 " " $7 " " $8 " " $9 " " $10 " " $11 "\n"  
    
    }'
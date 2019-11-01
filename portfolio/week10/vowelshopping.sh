#!/bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
FS=","
}
/^[aeiou]/ {
print "starts with a vowel: " $1
}
/^o/{
print "lines starting with o: " $1
}
/[[:alpha:]].*/{
print "more than one word: " $1
}

' ../week9/shopping.csv
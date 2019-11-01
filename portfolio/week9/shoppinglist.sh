#bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
FS=","
printf "Item \t|\t Price \t|\t Quantity \n"
printf "--------------------------------------\n"
}
{
    printf $1 "\t|\t" $2 "\t|\t" $3 "\n"
}' shopping.csv
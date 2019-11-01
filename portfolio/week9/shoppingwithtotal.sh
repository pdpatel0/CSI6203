#bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
FS=","
printf "Item \t|\t Price \t|\t Quantity \t|\t Total \n"
printf "-----------------------------------------------------------\n"
}
{
    printf $1 "\t|\t" $2 "\t|\t" $3 "\t|\t" $2*$3 "\n"
}
{ tp+=$2; tq+=$3; tt+=$2*$3 } END{ printf "Total \t|\t" tp "\t|\t" tq "\t|\t" tt }' shopping.csv
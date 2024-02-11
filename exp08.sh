# 1s If Else program to Gratest number amoung 3

#!/bin/bash

#echo "Enter First Number : "
#read num1

#echo "Enter Second Number :"
#read num2

read -p "Enter First Number  : " num1
read -p "Enter Second Number : " num2
read -p "Enter Third Number  : " num3

#check if nay number is not zero or negive

if [ "$num1" -le 0 ] || [ "$num2" -le 0 ] || [ "$num3" -le 0 ]; then
    echo "Error: All numbers must be positive and non-zero."
    exit 1
fi

#check biggest number

if [ "$num1" -gt "$num2" ] && [ "$num1" -gt "$num3" ]; then
    echo "$num1 is greater then $num2 and $num3"

elif [ "$num2" -gt "$num1" ] && [ "$num2" -gt "$num3" ]; then
    echo "$num2 is greater then $num1 and $num3"

elif [ "$num3" -gt "$num1" ] && [ "$num3" -gt "$num2" ]; then
    echo "$num3 is greater then $num1 and $num2"

else 
    echo "all numbers are equle"

fi
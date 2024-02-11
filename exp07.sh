# 1s If Else program to check biggest number

#!/bin/bash

#echo "Enter First Number : "
#read num1

#echo "Enter Second Number :"
#read num2

read -p "Enter First Number : " num1
read -p "Enter Second Number : " num2


if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater then $num2"

elif [ "$num1" -lt "$num2" ]; then
    echo "$num2 is greater then $num1"

else 
    echo "Both numbers are equle"

fi
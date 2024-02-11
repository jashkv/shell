#!/bin/bash

# Check if the year is a leap year
#if [ "$((year % 4))" -eq 0 ] && [ "$((year % 100))" -ne 0 ] || [ "$((year % 400))" -eq 0 ]; then
#    echo "$year is a leap year."
#else
#    echo "$year is not a leap year."
#fi


read -p "Enter a year : " year

a=$(( year % 4 ))    
b=$(( year % 100 ))
c=$(( year % 400 ))

#Conditions
# number totally divided by 4 "and" number totally not divided by 100 "or" 400
if [ $a -eq 0 ] && [ $b -ne 0 ] || [ $c -eq 0 ]; then
    echo "$year is a leap year"

else 
    echo "$year is no leap year"

fi
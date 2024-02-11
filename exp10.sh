# check the number it total divisible by number or not

#!/bin/bash

# Input: Prompt the user for a number
read -p "Enter a number: " num

# Check if the number is divisible by 2
if [ "$((num % 2))" -eq 0 ]; then
    echo "The number is totally divisible by 2."

elif [ "$((num % 3))" -eq 0 ]; then
    echo "The number is totally divisible by 3."

elif [ "$((num % 4))" -eq 0 ]; then
    echo "The number is totally divisible by 4."

elif [ "$((num % 5))" -eq 0 ]; then
    echo "The number is totally divisible by 5."

elif [ "$((num % 6))" -eq 0 ]; then
    echo "The number is totally divisible by 6."

elif [ "$((num % 7))" -eq 0 ]; then
    echo "The number is totally divisible by 7."

elif [ "$((num % 8))" -eq 0 ]; then
    echo "The number is totally divisible by 8."

elif [ "$((num % 9))" -eq 0 ]; then
    echo "The number is totally divisible by 9."

elif [ "$((num % 10))" -eq 0 ]; then
    echo "The number is totally divisible by 10."
else
    echo "The number is not totally divisible by 2."
fi

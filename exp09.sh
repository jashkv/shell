# Check if the number is negative, positive, or zero using comparisons

#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number: " num

# Check if the input is a valid number
if [[ ! "$num" =~ ^[-+]?[0-9]+\.?[0-9]*$ ]]; then
  echo "Error: Invalid input. Please enter a valid number."
  exit 1
fi

# Check if the number is positive, negative, or zero

if [[ $num -gt 0 ]]; then
  echo "$num is positive."

elif [[ $num -lt 0 ]]; then
  echo "$num is negative."

else
  echo "$num is zero."

fi
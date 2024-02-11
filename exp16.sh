#Script to check if th entered chracter iss lowercase or Uppercase

#!/bin/bash

read -p "Enter your Character : " char

if [[ "$char" =~ ^[[:upper:]]$ ]]; then
    echo "$char is Uppercase"

elif [[ "$char" =~ ^[[:lower:]]$ ]]; then
    echo "$char is lowercase"

else
    echo "Invailed Character"

fi
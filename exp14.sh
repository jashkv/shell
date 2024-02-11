#!/bin/bash

#Shell program to check if the input is alphabat number or special character

#!/bin/bash

read -p "Enter the Character : " char
   
if [[ "$char" =~ ^[[:alpha:]]$ ]]; then
    echo "$char is an  Alphabat"

elif [[ "$char" =~ ^[[:digit:]]$ ]]; then
    echo "$char is a Digit"

else
    echo "$char is a special character"
fi
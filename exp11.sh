# Check if the number is Even or Odd

#!/bin/bash

read -p "Enter a number: " num

remainder=$(( $num % 2 ))

# Check if the remainder is 0
if [[ $remainder -eq 0 ]]; then
  echo "$num is even"

else
  echo "$num is odd"

fi




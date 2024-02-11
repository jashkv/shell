#!/bin/bash

# Take user input
read -p "Enter a number: " num

# Initialize an empty list to store divisors
divisors=()

# Check for divisibility by 1 to 9
for i in {2..9}; do
  if [[ $((num % i)) -eq 0 ]]; then
    divisors+=($i)  # Add divisor to the list
  fi
done

# Display results
if [[ ${#divisors[@]} -eq 0 ]]; then
  echo "$num is not divisible by any number between 2 and 9."
else
  echo "$num is divisible by the following numbers:"
  printf "%s " "${divisors[@]}"
  echo
fi

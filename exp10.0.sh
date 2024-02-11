#!/bin/bash

read -p "Enter a number: " num

# Check if the input is a valid number
if [[ ! "$num" =~ ^[-+]?[0-9]+\.?[0-9]*$ ]]; then
  echo "Error: Invalid input. Please enter a valid number."
  exit 1
fi

# Divisibility checks
divisible_by=""

# Check for divisibility by 9 first for efficiency (multiple of 9 is also a multiple of 3)
if [[ $((num % 9)) -eq 0 ]]; then
  divisible_by="$divisible_by 9 3"
fi

# Check for remaining numbers using cascading if-else statements
if [[ $((num % 8)) -eq 0 ]]; then
  divisible_by="$divisible_by 8 4 2"
fi
if [[ $((num % 7)) -eq 0 ]]; then
  divisible_by="$divisible_by 7"
fi
if [[ $((num % 6)) -eq 0 ]]; then
  divisible_by="$divisible_by 6 3 2"
fi
if [[ $((num % 5)) -eq 0 ]]; then
  divisible_by="$divisible_by 5"
fi
if [[ $((num % 4)) -eq 0 ]]; then
  divisible_by="$divisible_by 4 2"
fi
if [[ $((num % 3)) -eq 0 ]]; then
  divisible_by="$divisible_by 3"
fi
if [[ $((num % 2)) -eq 0 ]]; then
  divisible_by="$divisible_by 2"
fi
if [[ $((num % 1)) -eq 0 ]]; then
  divisible_by="$divisible_by 1"
fi

# Handle divisibility and non-divisibility cases
if [[ -z "$divisible_by" ]]; then
  echo "$num is not divisible by any of the numbers 1, 2, 3, 4, 5, 6, 7, 8, or 9."
else
  echo "$num is divisible by:" $divisible_by
fi

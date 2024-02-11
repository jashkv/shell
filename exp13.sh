#Program to check char is vowel or consonent

#!/bin/bash

# Input: Prompt the user for an char
read -p "Enter an Alphabet: " char

# Convert the input to lowercase (optional, for case-insensitivity)
char=$(echo "$char" | tr '[:upper:]' '[:lower:]')

# Check if the input is a vowel or consonant
if [ "$char" == "a" ] || [ "$char" == "e" ] || [ "$char" == "i" ] || [ "$char" == "o" ] || [ "$char" == "u" ]; then
    echo "$char is a vowel."
else
    echo "$char is a consonant."
fi

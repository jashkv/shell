# Shell program to convert length

#!/bin/bash

# Input: Prompt the user for choice and length
echo "Choose conversion type:"
echo "1. Meter to Inches"
echo "2. Inches to Meter"
read -p "Enter your choice (1 or 2): " choice

if [ "$choice" -eq 1 ]; then
    # Meter to Inches conversion
    read -p "Enter length in meters: " length
    inches=$(echo "scale=2; $length / 0.0254" | bc)
    echo "$length meters is equal to $inches inches"

elif [ "$choice" -eq 2 ]; then
    # Inches to Meter conversion
    read -p "Enter length in inches: " length
    meters=$(echo "scale=2; $length * 0.0254" | bc)
    echo "$length inches is equal to $meters meters"

else
    echo "Invalid choice. Please enter 1 or 2."
fi

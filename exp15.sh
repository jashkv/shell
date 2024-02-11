#Shell Program to convert temp

#!/bin/bash

# Input: Prompt the user for choice and temperature
echo "Choose conversion type:"
echo "1. Fahrenheit to Celsius"
echo "2. Celsius to Fahrenheit"
read -p "Enter your choice (1 or 2): " choice

if [ "$choice" -eq 1 ]; then
    # Fahrenheit to Celsius conversion
    read -p "Enter temperature in Fahrenheit: " temp
    celsius=$(echo "scale=2; ($temp - 32) * 5/9" | bc)
    echo "$temp°F is equal to $celsius°C"

elif [ "$choice" -eq 2 ]; then
    # Celsius to Fahrenheit conversion
    read -p "Enter temperature in Celsius: " temp
    fahrenheit=$(echo "scale=2; $temp * 9/5 + 32" | bc)
    echo "$temp°C is equal to $fahrenheit°F"

else
    echo "Invalid choice. Please enter 1 or 2."
fi

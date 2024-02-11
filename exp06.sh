# This script to take user input

#!/bin/bash

# Take text input
echo -n "Enter your name: "
read name

# Take numerical input
echo -n "Enter your age: "
read age

# Take character input
echo -n "Are you M or F: "
read gender

# Take password input (without displaying input on the screen)
echo -n "Enter your password: "
read -s password
echo   # Move to the next line after password input

# Take input on the same line using the "-p" option
read -p "Enter your favorite color: " color

# Display the input

echo "Hello, $name!"
echo "You are $age years old."
echo "Oh you are $gender"   
echo "Your favorite color is $color."


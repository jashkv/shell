#!/bin/bash

# Input: Prompt the user for the lengths of the three sides of the triangle
read -p "Enter the length of side A: " a
read -p "Enter the length of side B: " b
read -p "Enter the length of side C: " c

# Check if the input forms a valid triangle
if [ "$((a + b > c))" -eq 1 ] && [ "$((b + c > a))" -eq 1 ] && [ "$((c + a > b))" -eq 1 ]; then

    # Determine the type of triangle based on sides
    if [ "$a" -eq "$b" ] && [ "$b" -eq "$c" ]; then
        triangle_type="Equilateral"
    elif [ "$a" -eq "$b" ] || [ "$b" -eq "$c" ] || [ "$c" -eq "$a" ]; then
        triangle_type="Isosceles"
    else
        triangle_type="Scalene"
    fi

    # Determine the type of triangle based on angles
    if [ "$a" -eq "$b" ] && [ "$b" -eq "$c" ]; then
        angle_type="Equiangular"
    elif [ "$((a*a + b*b))" -eq "$((c*c))" ] || [ "$((b*b + c*c))" -eq "$((a*a))" ] || [ "$((c*c + a*a))" -eq "$((b*b))" ]; then
        angle_type="Right-angled"
    elif [ "$((a*a + b*b))" -gt "$((c*c))" ] && [ "$((b*b + c*c))" -gt "$((a*a))" ] && [ "$((c*c + a*a))" -gt "$((b*b))" ]; then
        angle_type="Acute-angled"
    else
        angle_type="Obtuse-angled"
    fi

    echo "The triangle is $triangle_type and $angle_type."

else
    echo "The input does not form a valid triangle."
fi

#!/bin/bash

# Given three integers (X, Y, and Z) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.
# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.

# Read the three sides of the triangle from user input
echo "Enter the first side of the triangle:"
read X

echo "Enter the second side of the triangle:"
read Y

echo "Enter the third side of the triangle:"
read Z
# Check and display the type of triangle
if [ $side1 -eq $side2 ] && [ $side1 -eq $side3 ]; then
    echo "EQUILATERAL"
elif [ $side1 -eq $side2 ] || [ $side1 -eq $side3 ] || [ $side2 -eq $side3 ]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi
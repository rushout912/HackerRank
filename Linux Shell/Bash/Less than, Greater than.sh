#!/bin/bash

# Identify if the first argument is less than the second argument, greater than the second argument, or equal to the second argument.

# Read the two integers from user input
echo "Enter the first integer (X):"
read X

echo "Enter the second integer (Y):"
read Y

# Check and display the relationship between X and Y
if [ $X -lt $Y ]; then
    echo "$X is less than $Y"
elif [ $X -gt $Y ]; then
    echo "$X is greater than $Y"
else
    echo "$X is equal to $Y"
fi
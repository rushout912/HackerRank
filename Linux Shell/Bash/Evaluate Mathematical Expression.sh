#!/bin/bash

# Read the mathematical expression from user input
echo "Enter the mathematical expression:"
read expression

# Evaluate the expression using awk and round the result to decimal places
result=$(echo "$expression" | awk '{ printf "%.3f", $0 }')

# Display the rounded result
echo "Result: $result"

# Windows git bash does not support the bc command. So we used awk instead.
# You can use bc instead of awk if you are using Linux or macOS.
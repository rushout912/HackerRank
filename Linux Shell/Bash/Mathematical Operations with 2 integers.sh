#!/bin/bash

# Read the two integers from user input
echo "Enter the first integer:"
read num1

echo "Enter the second integer:"
read num2

# Calculate the sum, difference, product, and quotient
sum=$((num1 + num2))
difference=$((num1 - num2))
product=$((num1 * num2))

# Check if num2 is zero for the quotient calculation
if [ $num2 -ne 0 ]; then
    quotient=$((num1 / num2))
else
    echo "Error: Division by zero is not allowed."
fi

# Display the results for sum, difference, product, and quotient (if applicable)
echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"

if [ $num2 -ne 0 ]; then
    echo "Quotient: $quotient"
fi
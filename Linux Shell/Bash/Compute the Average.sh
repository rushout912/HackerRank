#!/bin/bash

read N
# Validate the value of N based on constraints
if ((N < 1 || N > 500)); then
    echo "Error: N must be between 1 and 500 (inclusive)."
    exit 1
fi

#Initialize variables
sum=0

# Read N integers and calculate their sum
for ((i = 1; i <= N; i++)); do
    read num
    # Validate the value of num based on constraints
    if ((num < -10000 || num > 10000)); then
        exit 1
    fi

    sum=$((sum + num))
done

# Calculate the average and round it to three decimal places
average=$(awk "BEGIN {printf \"%.3f\", $sum / $N}")

#Display the average
echo "Average: $average"

# The bc command is limited by the maximum scale value of 99. To handle large input values, we can use the awk command to calculate the average and round it to three decimal places.
# The begin block is used to initialize the awk interpreter.
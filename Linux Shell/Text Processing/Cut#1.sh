#!/bin/bash

# Given N limes of input, print the 3rd character from each line as a new line of output. It is guaranteed that each of the N lines of input will have a 3rd character.
# Input Format: A text file containing N lines of ASCII text only.
# Constraints: 1 <= N <= 100
# Output Format: For each line of input, print its 3rd character on a new line for a total of N lines of output.

# HackerRank Solution:
cut -c3

# My Solution:
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
sorted_file="${input_file}.cut"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Cut the lines and save the output to a new file
cut -c3 "$input_file" > "$sorted_file"

# Replace the original file with the cut output
mv "$sorted_file" "$input_file"

echo "Lines in $input_file have been cut and only characters at 2nd and 7th position of the corresponding input line displayed."
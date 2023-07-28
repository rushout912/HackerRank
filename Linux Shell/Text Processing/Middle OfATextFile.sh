#!/bin/bash
# Display the lines (from line number 12 to 22, both inclusive) of a given text file.
# Input Format: A text file.
# Output Format: Display the lines (from line number 12 to 22, both inclusive) for the input file.
#
# HackerRank Solution:
# head -n22 | tail -n11
#
# My Solution:
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
sorted_file="${input_file}.headtail"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Cut the lines and save the output to a new file
head -n22 "$input_file" | tail -n11 > "$sorted_file"

# Replace the original file with the cut output
mv "$sorted_file" "$input_file"

echo "Lines 12-22 of $input_file have been displayed."
#!/bin/bash
# In this challenge we practice using the head command to display the first n lines of a text file.
# Display the first 20 lines of an input file.
# Input Format: A text file.
# Output Format: Output the first 20 lines of the given text file.
#
# HackerRank Solution:
# head -c20
#
# My Solution:
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
sorted_file="${input_file}.head"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Cut the lines and save the output to a new file
head -c20 "$input_file" > "$sorted_file"

# Replace the original file with the cut output
mv "$sorted_file" "$input_file"

echo "First 20 characters of $input_file have been displayed."
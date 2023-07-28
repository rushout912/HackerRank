#!/bin/bash
# In this challenge, we practice using the head command to display the first n lines of a text file.
# Display the first 20 lines of an input file.
# Input Format: A text file.
# Output Format: Output the first 20 lines of the given text file.
# Hackerrank solution:
# head -20

# My solution
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
head_file="${input_file}.head"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Display the first 20 lines of an input file
head -20 "$input_file" > "$head_file"

# Replace the original file with the head output
mv "$head_file" "$input_file"

echo "The first 20 lines of an input file have been saved to $input_file."

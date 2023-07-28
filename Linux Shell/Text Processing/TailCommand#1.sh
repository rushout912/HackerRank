#!/bin/bash
# In this challenge, we practice using the tail command to display the last n lines of a text file.
# Display the last n lines of an input file.
# Input Format: A text file.
# Output Format: Output the last 20 lines of the text file.
#
# HackerRank Solution:
# tail -n20
#
# My Solution:
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
sorted_file="${input_file}.tail"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Cut the lines and save the output to a new file
tail -n20 "$input_file" > "$sorted_file"

# Replace the original file with the cut output
mv "$sorted_file" "$input_file"

echo "Last 20 characters of $input_file have been displayed."
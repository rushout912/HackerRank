#!/bin/bash
# Display the first four characters from each line of text.
# Input Format: A text file with N lines of ASCII text only.
# Constraints: 1 <= N <= 100
# Output Format: The output should contain N lines. Each line should contain just the first four characters of the corresponding input line.
# Hackerrank solution:
cut -c-4

# My solution
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
cut_file="${input_file}.cut"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Display the first four characters from each line of text
cut -c-4 "$input_file" > "$cut_file"

# Replace the original file with the cut output
mv "$cut_file" "$input_file"

echo "The first four characters from each line of text have been saved to $input_file."

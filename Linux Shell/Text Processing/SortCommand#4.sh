#!/bin/bash
# You are given a file of text, where each line contains a number (which may be either an integer or have decimal places). There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in descending order - - such that the first line holds the (numerically) largest number and the last line holds the (numerically) smallest number.
# Input Format: A text file where each line contains a number as described above.
# Output Format: The text file, with lines re-ordered in descending order (numerically).
# HackerRank Solution:
# sort -n -r
# My Solution:
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
sorted_file="${input_file}.sort"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Sort the lines and save the output to a new file
sort -n -r "$input_file" > "$sorted_file"

# Replace the original file with the sorted output
mv "$sorted_file" "$input_file"

echo "The lines in $input_file have been sorted in descending order."
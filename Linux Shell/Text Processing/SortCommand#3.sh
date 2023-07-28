#!/bin/bash
# In this challenge, we practice using the sort command to sort input in text or TSV formats.
# You are given a text file where each line contains a number. The numbers may be either an integer or have decimal places.
# There will be no extra characters other than the number or the newline at the end of each line.
# Sort the lines in ascending order - so that the first line holds the numerically smallest number, and the last line holds the numerically largest number.
# Input Format: A text file where each line contains a positive number (less than 100) as described above.
# Output Format: Output the text file with the lines reordered in numerically ascending order.
#
# HackerRank Solution:
# sort -n
#
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
sort -n "$input_file" > "$sorted_file"

# Replace the original file with the sorted output
mv "$sorted_file" "$input_file"

echo "The lines in $input_file have been sorted in ascending order."

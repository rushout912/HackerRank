#!/bin/bash
# In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it.
# Given a text file, remove the consecutive repetitions of any line.
# Input Format: A text file with consecutive repetitions of a line.
# Output Format: Output the text file with consecutive repetitions of any line removed.
# HackerRank Solution:
# uniq
# My Solution:
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
uniq_file="${input_file}.uniq"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Remove consecutive repetitions of a line
uniq "$input_file" > "$uniq_file"

# Replace the original file with the output
mv "$uniq_file" "$input_file"

echo "The consecutive repetitions of a line in $input_file have been removed."
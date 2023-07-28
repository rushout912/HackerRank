#!/bin/bash
# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, replace all parantheses () with box brackets [].
# Input Format: A block of ASCII text.
# Output Format: Output the text with all parentheses () replaced with box brackets [].
#
# HackerRank Solution:
# line="j"
#until [ -z $line ]
#do
#    read line
#    echo "$line" | tr "()" "[]"
#done
#
# My Solution:
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
sorted_file="${input_file}.tr"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Cut the lines and save the output to a new file
tr "()" "[]" < "$input_file" > "$sorted_file"

# Replace the original file with the cut output
mv "$sorted_file" "$input_file"

echo "All parantheses in $input_file have been replaced with box brackets."

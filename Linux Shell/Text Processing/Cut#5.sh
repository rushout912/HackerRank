#!/bin/bash
# Given a tab delimited file with several columns (tsv format) print the first three fields.
# Input Format: A tab-separated file with lines of ASCII text only.
# Constraints: 1 <= N <= 100
# Constraints: 2 <= C <= 100 (N is the number of lines of text in the input file and C is the number of columns of data in the file)
# Output Format: The output should contain N lines. For each line in the input, print the first three fields.

# Hackerrank solution:
# cut -f1-3
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

# Identify the first three fields in a given inout file and save the output to the new file
cut -f1-3 "$input_file" > "$cut_file"

# Replace the original file with the cut output
mv "$cut_file" "$input_file"

echo "First three fields have been saved to $input_file."
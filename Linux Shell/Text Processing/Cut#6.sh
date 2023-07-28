#!/bin/bash
# Print the characters from thirteenth position to the end.
# Input Format: A text file with lines of ASCII text only.
# Constraints: 1 <= N <= 100 (N is the number of lines of text in the input file)
# Output Format: The output should contain N lines. For each input line, print the characters from thirteenth position to the end.

# Hackerrank solution
#while read line
#do
#    echo $line | cut -c13-
#done

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

# Print the characters from thirteenth position to the end
cut -c13- "$input_file" > "$cut_file"

# Replace the original file with the cut output
mv "$cut_file" "$input_file"

echo "The characters from thirteenth position to the end have been saved to $input_file."
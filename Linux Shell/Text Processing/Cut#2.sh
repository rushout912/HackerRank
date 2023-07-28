#!/bin/bash
# Display the 2nd and 7th character from each line of text.
# Input Format: A text file with N lines of ASCII text only.
# Constraints: 1 <= N <= 100
# Output Format: The output should contain N lines. Each line should contain just two characters at the 2nd and the 7th position of the corresponding input line.

if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
sorted_file="${input_file}.sorted"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

# Cut the lines and save the output to a new file
cut -c2,7 "$input_file" > "$sorted_file"

# Replace the original file with the cut output
mv "$sorted_file" "$input_file"

echo "Lines in $input_file have been cut and only characters at 2nd and 7th position of the corresponding input line displayed."

# Hackerrank solution:
# cut -c2,7

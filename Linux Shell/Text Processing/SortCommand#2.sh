#!/bin/bash
#In this challenge, we practice using the sort command to sort input in text or TSV formats.
#Given a text file, order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z).
#Input Format: A text file.
#Output Format: Output the text file with the lines reordered in reverse lexicographical order.
#Sample Input: Dr. Rajendra Prasad     January 26, 1950    May 13, 1962
#Sample Output: Dr. Rajendra Prasad     January 26, 1950    May 13, 1962
#Explanation: The name "Dr. Rajendra Prasad" comes later in alphabetical order than the name "January 26, 1950", so we reorder these lines accordingly.
#
# Solution
# Check if the script is provided with the input file argument
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

# Sort the lines in lexicographical order and save the output to a new file
sort -r "$input_file" > "$sorted_file"

# Replace the original file with the sorted output
mv "$sorted_file" "$input_file"

echo "Lines in $input_file have been reordered in reverse lexicographical order."


#!/bin/bash
# You are given a file of pipe-delimited weather data (TSV). There is no header column in this data file. The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahreneit). (c) the average monthly temperature in April (in Fahreneit). (d) the average monthly temperature in July (in Fahreneit). (e) the average monthly temperature in October (in Fahreneit).
# You need to sort this file in descending order of the second column (i.e. the average monthly temperature in January).
# Input Format: A text file with multiple lines of pipe-delimited data. The first five fields have been explained above.
# Output Format: Sort the data in descending order of the average monthly temperature in January.
# HackerRank Solution:
# sort -t$'|' -k2 -rn
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
sort -t$'|' -k2 -rn "$input_file" > "$sorted_file"

# Replace the original file with the sorted output
mv "$sorted_file" "$input_file"

echo "The lines in $input_file have been sorted in descending order of the average monthly temperature in January."
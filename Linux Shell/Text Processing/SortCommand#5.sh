#!/bin/bash
# You are given a file of text, where each line contains temperature information about American cities, in TSV (tab-separated) format. The first column is the name of the city and the next four columns are the average temperature in the months of Jan, Feb, March and April (see the sample input). Rearrange the rows of the table in descending order of the values for the average temperature in January.
# Input Format: A text file where each line contains a row of data as described above.
# Output Format: Rearrange the rows of the table in descending order of the values for the average temperature in January (i.e, the mean temperature value provided in the second column of each row).
# HackerRank Solution:
# sort -t$'\t' -k2 -rn
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
sort -t$'\t' -k2 -rn "$input_file" > "$sorted_file"

# Replace the original file with the sorted output
mv "$sorted_file" "$input_file"

echo "The lines in $input_file have been sorted in descending order of the values for the average temperature in January."

# -t$'\t': Specifies the field separator as a tab character. The $'\t' represents the tab character in Bash.
# -k2: Specifies the second field as the sort key.
# -rn: Tells 'sort' to sort the data in reverse numerical order. The '-r' flag is for reverse sorting, and the '-n' flag is for numerical sorting.
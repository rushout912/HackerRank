#!/bin/bash
# Given the sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.
# Input Format: A text file with lines of ASCII text only. Each line has exactly one sentence.
# Output Format: The output should contain N lines. For each input sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.

# Hackerrank solution
#while read line
#do
#    echo $line | cut -d' ' -f4
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

# Identify the fourth word in a given input file and save the output to the new file
cut -d' ' -f4 "$input_file" > "$cut_file"

# Replace the original file with the cut output
mv "$cut_file" "$input_file"

echo "Fourth word in a given $input_file is identified and saved to $input_file."
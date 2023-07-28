#!/bin/bash
# Given a sentence, identify and display its three words. Assume that the space (' ') is the only delimiter between words.
# Input Format: A text file with lines of ASCII text only. Each line has exactly one sentence.
# Output Format: The output should contain N lines. For each input sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words.
# Constraints: 1 <= N <= 100 (N is the number of lines of text in the input file)

# Hackerrank solution
#while read line
#do
#    echo $line | cut -d' ' -f1-3
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

# Identify the first three words in a given inout file and save the output to the new file
cut -d' ' -f1-3 "$input_file" > "$cut_file"

# Replace the original file with the cut output
mv "$cut_file" "$input_file"

echo "First three words in a given $input_file are identified and saved to $input_file."

#!/bin/bash
# Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).
# Input format: A text file containing N lines of ASCII text only.
# Output format: Each line should contain the range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included). The output should contain N lines.
# Constraints: 1 <= N <= 100
#
while read line
do
  echo "$line" | cut -c2-7
done
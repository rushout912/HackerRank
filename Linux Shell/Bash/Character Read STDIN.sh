#!/bin/bash
# Read in one character from STDIN.
# If the character is 'Y' or 'y' display "YES".
# If the character is 'N' or 'n' display "NO".
# No other character will be provided as input.



# Read one character from STDIN
read -n 1 input_char

# Check the input character using the case statement
case $input_char in
    [Yy]) echo "YES";;
    [Nn]) echo "NO";;
    *) echo "Invalid input";;
esac
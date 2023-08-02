#!/bin/bash
# Given n lines of credit card numbers, mask the first 12 digits of each credit card number with an asterisk (i.e., *) and print the masked card number on a new line. Each credit card number consists of four space-separated groups of four digits. For example, the credit card number 1234 5678 9101 1234 would be masked and printed as **** **** **** 1234.

# Solution 1
sed -e 's/[0-9]\{4\} /**** /g'


# Solution 2
sed -E 's/([0-9]{4} ){3}([0-9]{4})/**** **** **** \2/'

# 's/' is the substitute command of sed.
# '\([0-9]\{4\} \)\{3\}' matches the first three groups of digits, followed by a space and repeats this pattern three times. This matches the first 12 digits of the credit card number.
# '\([0-9]\{4\}\)' matches the fourth group of digits. This is the last group of digits in the credit card number.
# /**** /g replaces all matches with **** followed by a space.
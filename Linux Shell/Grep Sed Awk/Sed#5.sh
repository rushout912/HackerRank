#!/bin/bash
# Given an input file, with N credit card numbers, each in a new line, your task is to reverse the ordering of segments in each credit card number. Assume that the credit card numbers will have 4 space seperated segments with 4 digits each.
# If the original credit card number is 1434 5678 9101 1234, transform it to 1234 9101 5678 1434.

# Solution 1
sed -E 's/([0-9]+) ([0-9]+) ([0-9]+) ([0-9]+)/\4 \3 \2 \1/'

# Solution 2
sed -E 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1/'

# -E: This option enables extended regular expressions. With this option, we can use parentheses () to capture groups in the regular expression.
# 's/([0-9]+) ([0-9]+) ([0-9]+) ([0-9]+)/\4 \3 \2 \1/': This part is the substitution command of sed, which follows the syntax s/pattern/replacement/.
# ([0-9]+): This is the first capturing group and represents one or more digits. The parentheses ( ) are used to capture this group for later use in the replacement section.
# [0-9]+: This matches one or more digits.
# ([0-9]+) ([0-9]+) ([0-9]+) ([0-9]+): This pattern matches four sets of digits separated by spaces, effectively representing a credit card number with four segments of four digits each.

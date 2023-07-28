#!/bin/bash
# In a given fragment of text, replace all sequences of multiple spaces with just one space.
# Input Format: A block of ASCII text.
# Output Format: Replace all sequences of multiple spaces with just one space.
# Sample Input: He  llo
# Sample Input: Worl  ld
# Sample Input: how  are  you
# Sample Output: He llo
# Sample Output: Worl ld
# Sample Output: how are you
# Explanation: The 'tr' command with the '-s' option is used to compress the given sequence of identical characters into a single character.

# Solution
tr -s " "
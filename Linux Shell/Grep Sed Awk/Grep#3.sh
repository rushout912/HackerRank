#!/bin/bash
# You are given a text file that will be piped into your command through STDIN. Use grep to remove all those lines that contain the word 'that'. The search should NOT be sensitive to case.

# Solution 
grep -viw "that"

# Explanation
# -i: Ignore case distinctions in both the PATTERN and the input files.
# -w: Select only those lines containing matches that form whole words.
# -v: Invert the sense of matching, to select non-matching lines. 
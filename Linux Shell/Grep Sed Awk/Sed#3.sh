#!/bin/bash
# Given an input file, in each line, highlight all the occurences of 'thy' by wrapping them up in brace brackets. The search should be case-insensitive.

# Solution 1
sed -e 's/thy/{&}/ig'

# Solution 2
sed -e 's/\bthy\b/{&}/ig'
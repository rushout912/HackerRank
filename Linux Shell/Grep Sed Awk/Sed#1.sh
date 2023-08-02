#!/bin/bash
# For each line in a given input file, transform the first occurence of the word 'the' with 'this'. The search and transformation should be strictly case sensitive.

# Solution 1
sed -e 's/\bthe\b/this/'

# Solution 2
sed -e 's/the /this /'

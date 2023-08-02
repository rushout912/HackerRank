#!/bin/bash
# For each line in a given input file, transform all the occurences of the word 'thy' with 'your'. The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.

# Solution 1
sed -e 's/\bthy\b/your/ig'

# Solution 2
sed -e 's/thy/your/ig'
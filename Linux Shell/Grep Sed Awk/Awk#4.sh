#!/bin/bash
# You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively. 
# Output Format: Concatenate every 2 lines of inout with a semi-colon
# Only solutions using awk will be considered valid for this task

# Solution 
awk 'ORS=NR%2?";":"\n"' 
# ORS is the Output Record Separator, NR is the number of records (lines) read so far, and %2 is the modulus operator (returns the remainder of a division operation). So, if the line number is odd, the ORS is set to a semi-colon, otherwise it is set to a new line.

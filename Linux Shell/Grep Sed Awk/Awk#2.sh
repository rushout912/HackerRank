#!/bin/bash
# You are given a file with four space separated columns containing the scores of students in three subjects. The first column contains a single character (), the student identifier. The next three columns have three numbers each. The numbers are between and, both inclusive. These numbers denote the scores of the students in English, Mathematics, and Science, respectively.
# Your task is to identify whether each of the students has passed or failed. A student is considered to have passed if (s)he has a score or more in each of the three subjects.

# Solution 1
awk '{
    if ($2 >= 50 && $3 >= 50 && $4 >= 50)
        print $1, ": Pass";
    else
        print $1, ": Fail";
}'

# Solution 2
awk '{
    if ($2 < 50 || $3 < 50 || $4 < 50)
        print $1, ": Fail";
    else
        print $1, ": Pass";
}'

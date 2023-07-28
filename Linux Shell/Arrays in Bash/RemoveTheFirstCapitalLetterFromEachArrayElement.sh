#!/bin/bash
# You are given a list of countries, each on a new line. Your task is to read them into an array and then transform them in the following way:
# The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). Then, display the entire array with a space between each country's names.

# Solution 1
countries=($(cat))
echo ${countries[@]/[A-Z]/.}

# Solution 2
i=0
while read line
do
    countries[$i]=$line
    ((i+=1))
done
echo ${countries[@]/[A-Z]/.}

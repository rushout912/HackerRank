#!/bin/bash
# Given a list of countries, each on a new line, your task is to read them into an array and then display the element indexed at 3. Note that indexing starts from 0.

# Solution 1
countries=($(cat))
echo ${countries[3]}

# Solution 2
i=0
while read line
do
    countries[$i]=$line
    ((i+=1))
done
echo ${countries[3]}
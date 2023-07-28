#!/bin/bash
# Your task is to read them into an array. Then, concatenate the array with itself (twice) - so that you have a total of three repetitions of the original array - and then display the entire concatenated array, with a space between each of the countries' names.
# Input Format: A list of country names. The only characters present in the country names will be upper or lower case characters and hyphens.
# Output Format: Display the entire concatenated array, with a space between each of them.

# Solution
countries=($(cat))
countries=("${countries[@]}" "${countries[@]}" "${countries[@]}")
echo ${countries[@]}

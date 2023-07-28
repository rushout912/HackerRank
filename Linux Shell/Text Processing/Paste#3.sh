#!/bin/bash
# Given a CSV file where each row contains the name of a city and its state seperated by a comma, your task is to replace the newlines in the file with tabs as demonstrated in the sample.
# Input Format: You are given a CSV file where each row contains the name of a city and its state seperated by a comma.
# Output Format: Replace the newlines in the input with tabs as demonstrated in the sample.
# Sample Input: Albany, N.Y.
# Sample Output: Albany, N.Y.
# Explanation: The delimiter between consecutive rows of data has been transformed from the newline to a tab.

# Solution
paste '\t' -s
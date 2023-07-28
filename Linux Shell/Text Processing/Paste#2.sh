#!/bin/bash
# Input Format: You are given a CSV file where each row contains the name of a city and its state seperated by a comma.
# Output Format: Restructure the file so that three consecutive rows are folded into one line and are seperated by semicolons.

# Solution
paste -d ';' - - -
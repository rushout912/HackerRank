#!/bin/bash
# Given a CSV file where each row contains the name of a city and its state seperated by a comma, your task is to restructure the file in such a way, that three consecutive rows are folded into one, and seperated by tab.
# Input Format: You are given a CSV file where each row contains the name of a city and its state seperated by a comma.
# Output Format: Restructure the file in such a way, that every group of three consecutive rows are folded into one, and seperated by tab.

# Solution
paste -d '\t' - - -
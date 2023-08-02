#!/bin/bash
# You are given a text file that will be piped into your command through STDIN. Use grep to display all those lines that contain the word "the" in them. The search should NOT be sensitive to case.

# Solution
grep -iw "the"

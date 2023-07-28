#!/bin/bash
# In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line wjen a text file is piped through it.
# Given a text file, count the number of time each line repeats itself. Only consider consecutive repetitions. Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. Please note that the uniq -c command by itself will generate the output in a different format than the one expected here.

# HackerRank solution (Bash)
uniq -c | cut -c7-

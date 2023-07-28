#!/bin/bash
# Given a text file, display only those lines which are not followed or preceded by identical replications.
# Explanation: The comparison is case sensitive, so for example, "A" does not equal "a".

# Solution
uniq -u
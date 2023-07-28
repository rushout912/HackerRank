#!/bin/bash
# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, delete all the lowercase characters a-z.
# Input Format: A block of ASCII text.
# Output Format: Delete all the lowercase characters in the given block of text.
# Sample Input: Hello
# Sample Output: H

# Explanation: The 'tr' command with the '-d' option is used to delete characters specified in the character set.
# '[:lower:]' represents a class which contains all the lowercase characters, and the complement of this set is represented by its negation '[:lower:]'.


echo "Hello" | tr -d '[:lower:]'
echo "World" | tr -d '[:lower:]'
echo "how are you" | tr -d '[:lower:]'
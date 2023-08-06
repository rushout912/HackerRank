#!/bin/python3
import math
import os
import random
import re
import sys
def capitalize(string):
    if 0 < len(string) < 1000: # Constraint: 0 < len(string) < 1000
        
        for s in string.split(" "):
            string = string.replace(s, s.capitalize())
        
        return string
    else:
        raise ValueError("The length of the string must be between 1 and 1000.")


if __name__ == '__main__':
    string = input()
    capitalized_string = capitalize(string)
    print(capitalized_string)

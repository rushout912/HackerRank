#!/bin/python3
import math
import os
import random
import re
import sys

'''from datetime import datetime as dt

class Main:
    def __init__(self):
        self.t = int(input())
        
    def time_delta(self):
        return int(abs(self.t1 - self.t2).total_seconds())
    
    def output(self):
        fmt = '%a %d %b %Y %H:%M:%S %z'
        for i in range(self.t):
            self.t1 = dt.strptime(input(), fmt)
            self.t2 = dt.strptime(input(), fmt)
            print(self.time_delta())


if __name__ == "__main__":
    obj = Main()
    obj.output()'''

# Complete the time_delta function below. (Default code with completed time_delta function)
def time_delta(t1, t2):
    from datetime import datetime as dt
    fmt = '%a %d %b %Y %H:%M:%S %z'
    t1 = dt.strptime(t1, fmt)
    t2 = dt.strptime(t2, fmt)
    return str(int(abs(t1 - t2).total_seconds()))

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input())

    for t_itr in range(t):
        t1 = input()
        t2 = input()

        delta = time_delta(t1, t2)

        fptr.write(delta + '\n')

    fptr.close()        


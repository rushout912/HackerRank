#!/bin/python3

import math
import os
import random
import re
import sys

class Main():
    def __init__(self):
        self.n, self.m = map(int, input().split())
        if 1 <= self.n <= 1000: # 1 <=N,M <=1000
            pass
        else:
            print("Number of athletes must be between 1 and 1000.")

        if 1 <= self.m <= 1000: # 1 <=N,M <=1000
            pass
        else:
            print("Number of attributes must be between 1 and 1000.") 

        
        self.data = []
        for i in range(self.n):
            self.data.append(list(map(int, input().split())))
            
        self.k = int(input())
        if 0 <= self.k < self.m: # 0 <= K < M
            pass
        else:
            print("Number of attributes must be bigger than Kth attribute. K must be bigger than or equal to 0.")

        
    def output(self):
        self.data.sort(key = lambda x : x[self.k])
        for li in self.data:
            print(*li, sep=' ')


if __name__ == '__main__':
    obj = Main()
    obj.output()

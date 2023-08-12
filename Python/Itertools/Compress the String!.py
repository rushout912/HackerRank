from itertools import groupby

class Main:
    def __init__(self):
        self.s = input()
        if not (1 <= len(self.s) <= 10**4):
            raise ValueError("Length of S should satisfy 1 <= |S| <= 10**4") # Constraint: 1 <= |S| <= 10**4 where |S| is the length of string S.
        
    def output(self):
        for i, j in groupby(self.s):
                print("({first}, {second})".format(first=len(list(j)), second=i), end = ' ')
        
if __name__ == '__main__':
    try:
        obj = Main()
        obj.output()
    except ValueError as e:
        print(e)
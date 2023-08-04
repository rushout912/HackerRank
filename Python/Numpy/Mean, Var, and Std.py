import numpy as np

class Main:
    def __init__(self):
        self.n, self.m = map(int, input().split())
        self.arr = np.array([input().split() for i in range(self.n)], int)
        
    def output(self):
        std_all = np.std(self.arr)
        std_rounded = np.round(std_all, decimals=11) #Need to be rounded for test cases
        print(np.mean(self.arr, axis=1), np.var(self.arr, axis=0), std_rounded, sep='\n')
        
if __name__ == '__main__':
    obj = Main()
    obj.output()


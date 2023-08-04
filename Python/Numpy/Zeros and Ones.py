import numpy as np

class Main:
    def __init__(self):
        self.nums = tuple(map(int, input().split()))
        
    def returnZero(self):
        print(np.zeros(self.nums, dtype = int))
    
    def returnOne(self):
        print(np.ones(self.nums, dtype = int))
        
    def output(self):
        self.returnZero()
        self.returnOne()
        
        
if __name__ == '__main__':
    obj = Main()
    obj.output()


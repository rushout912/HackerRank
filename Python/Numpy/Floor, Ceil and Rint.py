import numpy as np
np.set_printoptions(legacy='1.13') #Note: In order to get the correct output format, add the line np.set_printoptions(legacy='1.13') below the numpy import.

class Main:
    def __init__(self):
        self.arr = np.array(list(map(float, input().split())))
        
    def output(self):
        print(np.floor(self.arr), np.ceil(self.arr), np.rint(self.arr), sep='\n')
        
if __name__ == '__main__':
    obj = Main()
    obj.output()


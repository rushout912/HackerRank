import numpy as np
#Note: Round the answer to 2 places after the decimal.
class Main:
    def __init__(self):
        self.n = int(input())
        self.arr = np.array([input().split() for i in range(self.n)], float)
        
    def output(self):
        det = np.linalg.det(self.arr)
        rounded_det = round(det, 2)
        print(rounded_det)
        
if __name__ == '__main__':
    obj = Main()
    obj.output()

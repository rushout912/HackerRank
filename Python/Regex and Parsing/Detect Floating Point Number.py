import re

class Main():
    def __init__(self):
        self.n = int(input())
        
        for i in range(self.n):
            if 0 < self.n < 10: # The number of test cases must be between 0 and 10.
                self.s = input()
                print(bool(re.match(r'^[-+]?[0-9]*\.[0-9]+$', self.s)))
            else:
                raise ValueError("The number of test cases must be between 0 and 10.")
           
if __name__ == '__main__':
    obj = Main()
import re

class Main():
    def __init__(self):
        self.n = int(input())
        if self.n >= 1 and self.n <= 10:
            pass
        else:
            print('The number of inputs must be between 1 and 10.')
        
        for i in range(self.n):
            self.s = input()
            print('YES' if re.match(r'[789]\d{9}$', self.s) else 'NO')
            
            
if __name__ == '__main__':
    obj = Main()

import re

class Main:
    def __init__(self):
        self.n = int(input())
        if 0 < self.n < 100:
            pass
        else:
            raise ValueError('Number of lines must be between 1 and 100.')
        
        for _ in range(self.n):
            self.s = input()
            print(re.sub(r'(?<= )(&&|\|\|)(?= )', lambda x: 'and' if x.group() == '&&' else 'or', self.s))
            
            
if __name__ == '__main__':
    obj = Main()

import re

class Main:
    def __init__(self):
        self.n = int(input())
        if 0 < self.n < 50:
            pass
        else:
            print('The number of code lines must be between 1 and 50.')
        
        for _ in range(self.n):
            self.s = input()
            self.matchs = re.findall(':?.(#[0-9a-fA-F]{6}|#[0-9a-fA-F]{3})', self.s)
            if self.matchs:
                print(*self.matchs, sep='\n')
            
if __name__ == '__main__':
    obj = Main()

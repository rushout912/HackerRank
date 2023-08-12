from itertools import combinations_with_replacement

class Main:
    def __init__(self):
        self.a, self.n = input().split()
        self.n = int(self.n)
        
    def output(self):
        for i in combinations_with_replacement(sorted(self.a), int(self.n)):
            if self.n <= 0 or self.n > len(self.a): # Constraint
                raise ValueError("Value of n should satisfy 0 < n < len(s)")
            else:
                print(''.join(i))
        
        
if __name__ == '__main__':
    try:
        obj = Main()
        obj.output()
    except ValueError as e:
        print(e)    

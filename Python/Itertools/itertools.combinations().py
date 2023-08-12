from itertools import combinations

class Main:
    def __init__(self):
        self.s, self.n = input().split()
        self.n = int(self.n)
        
    def output(self):
        for j in range(1, int(self.n) + 1):
            for i in combinations(sorted(self.s.upper()), j):
                if self.n <= 0 or self.n > len(self.s): # Constraint
                    raise ValueError("Value of n should satisfy 0 < n < len(s)")
                else:
                    print(''.join(i))
        
if __name__ == '__main__':
    try:
        obj = Main()
        obj.output()
    except ValueError as e:
        print(e)    

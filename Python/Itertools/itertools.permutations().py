from itertools import permutations

class Main:
    def __init__(self):
        self.s, self.k = input().split()
        self.k = int(self.k)
        if self.k <= 0 or self.k > len(self.s): # Constraint
            raise ValueError("Value of k should satisfy 0 < k < len(s)")
        
    def Permutation(self):
        for i in permutations(sorted(self.s), int(self.k)):
            print(''.join(i))
        
    def output(self):
        self.Permutation()
        
        
if __name__ == '__main__':
    try:
        obj = Main()
        obj.output()
    except ValueError as e:
        print(e)    

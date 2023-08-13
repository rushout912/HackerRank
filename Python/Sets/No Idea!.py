class Main:
    def __init__(self):
        self.n, self.m = map(int, input().split())
        self.a = list(map(int, input().split()))
        self.b = set(map(int, input().split()))
        self.c = set(map(int, input().split()))
        
    def output(self):
        if 1 <= self.n <= 10**5 and 1 <= self.m <= 10**5: # Constraints
            if all(-10**9 <= i <= 10**9 for i in self.a) and all(-10**9 <= i <= 10**9 for i in self.b) and all(-10**9 <= i <= 10**9 for i in self.c):
                print(sum([(i in self.b) - (i in self.c) for i in self.a]))
            else:
                raise ValueError('Constraints are not satisfied')    
        
if __name__ == '__main__':
    obj = Main()
    obj.output()

class Main():
    def __init__(self):
        self.n, self.m = map(int, input().split())
        if 0 < self.n <= 100: # 0 < N <= 100
            pass
        else:
            raise ValueError("Total number of subjects must be between 1 and 100.")
        
        self.marks = []
        for i in range(self.m):
            self.marks.append(map(float, input().split()))
        
    def calculation(self):
        self.results = []
        
        for i in zip(*self.marks):
            self.results.append(sum(i) / self.m)
            
    def output(self):
        self.calculation()
        for i in self.results:
            print("%0.1f" % i)
            
if __name__ == '__main__':
    obj = Main()
    obj.output()

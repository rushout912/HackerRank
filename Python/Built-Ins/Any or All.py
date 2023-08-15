class Main():
    def __init__(self):
        self.n = int(input())
        if 0 < self.n < 100: # 0 < N < 100
            pass
        else:
            raise ValueError("The total number of the integers in the list must be between 0 and 100.")
        self.li = list(map(int, input().split()))
        
    def output(self):
        print(all(i > 0 for i in self.li) and any(str(i) == str(i)[::-1] for i in self.li))
        
if __name__ == '__main__':
    obj = Main()
    obj.output()

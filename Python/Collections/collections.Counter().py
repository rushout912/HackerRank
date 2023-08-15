from collections import Counter

class Main:
    def __init__(self):
        self.n = int(input())
        self.li = Counter(map(int, input().split()))
        self.t = int(input())
        self.ans = 0
        
        if not (0 < self.n < 10**3): # Check if the number of shoes is valid
            print("Invalid number of shoes")
            return
            
        if not (0 < self.t <= 10**3): # Check if the number of customers is valid
            print("Invalid number of customers")
            return
        
        for i in range(self.t):
            self.k, self.v = map(int, input().split())
            
            if self.li[self.k] > 0:  # Check if the desired size is available
                self.ans += self.v
                self.li[self.k] -= 1
        
    def output(self):
        print(self.ans)
        
if __name__ == '__main__':
    obj = Main()
    obj.output()
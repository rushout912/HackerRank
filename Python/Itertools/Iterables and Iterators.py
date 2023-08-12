from itertools import combinations

class Main:
    def __init__(self):
        self.n = int(input())
        self.s = list(input().split())
        self.k = int(input())
        
        self.com = list(combinations(self.s, self.k))
        self.fil = filter(lambda x: 'a' in x, self.com)
        if not (1 <= self.n <= 10 and 1 <= self.k <= self.n):
            raise ValueError("Constraints not met")
    def output(self):
        print("%0.3f" % (len(list(self.fil)) / len(self.com)))
        
if __name__ == '__main__':
    try:
        obj = Main()
        obj.output()
    except ValueError as e:
        print(e)
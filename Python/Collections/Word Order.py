from collections import Counter, OrderedDict
class OrderedCounter(Counter, OrderedDict):
    pass

class Main:
    def __init__(self):
        self.n = int(input())
        if 1 <= self.n <= 10**5: # The sum of the lengths of all words do not exceed 10**6.
            pass
        else:
            raise ValueError("The sum of the lengths of all words can not exceed 10**6.")
        
        self.li = OrderedCounter(input() for _ in range(self.n))
                
    def output(self):
        print(len(self.li))
        print(*self.li.values())
        
if __name__ == '__main__':
    obj = Main()
    obj.output()

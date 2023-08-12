from itertools import product

class Main:
    def __init__(self):
        self.a = list(map(int, input().split()))
        self.b = list(map(int, input().split()))
        
    def multiplication(self):
        if all(0 <= x < 30 for x in self.a) and all(0 <= x < 30 for x in self.b): # Constraints
            result = product(self.a, self.b)
            for item in result:
                print(f"({item[0]}, {item[1]})", end=" ") #The product() function returns tuples, and when you use the * operator with print(), it unpacks the tuples incorrectly.
    
    def output(self):
        self.multiplication()
        
if __name__ == '__main__':
    obj = Main()
    obj.output()
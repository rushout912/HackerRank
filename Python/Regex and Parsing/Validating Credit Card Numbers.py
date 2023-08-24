import re

class Main:
    def __init__(self):
        self.test = re.compile(r'^(?!.*(\d)(-?\1){3})[456]\d{3}(?:-?\d{4}){3}$')
        for _ in range(int(input())):
            self.s = input()
            if 0 < len(self.s) < 100:
                print("Valid" if self.test.search(self.s) else "Invalid")
            else:
                print('The number of credit cards must be between 0 and 100.')
                break    
            
if __name__ == '__main__':
    obj = Main()

import re

class Main():
    def __init__(self):
        self.s = input()
        self.k = input()
        if 0 < len(self.s) < 100:
            pass
        else:
            raise ValueError('Length of string is not in range')
        if 0 < len(self.k) < len(self.s):
            pass
        else:
            raise ValueError('Length of substring is not in range')
        self.index = 0
        
    def output(self):
        if re.search(self.k, self.s):
            while self.index + len(self.k) < len(self.s):
                self.temp = re.search(self.k, self.s[self.index:])
                if self.temp: # if self.temp is not None
                    print('({0}, {1})'.format(self.index + self.temp.start(), self.index + self.temp.end() - 1))
                    self.index += self.temp.start() + 1
                else:
                    break    
        else:
            print('(-1, -1)')

if __name__ == '__main__':
    obj = Main()
    obj.output()

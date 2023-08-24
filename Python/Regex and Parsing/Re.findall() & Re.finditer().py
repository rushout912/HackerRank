import re

class Main():
    def __init__(self):
        self.s = input()
        if 0 < len(self.s) < 100:
            pass
        else:
            raise ValueError('Length of string is not in range')
        self.c = 'qwrtypsdfghjklzxcvbnm'
        
    def output(self):
        self.ss = re.findall(r'(?<=[' + self.c + '])([aeiou]{2,})(?=[' + self.c +'])', self.s, flags = re.I)
        print('\n'.join(self.ss or ['-1']))
        
if __name__ == '__main__':
    obj = Main()
    obj.output()

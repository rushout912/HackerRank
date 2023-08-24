import email.utils as em
import re

class Main():
    def __init__(self):
        self.n = int(input())
        if 0 < self.n <= 100:
            pass
        else:
            print('The number of email addresses must be between 1 and 100.')
        
        for i in range(self.n):
            self.s = em.parseaddr(input())
            
            if re.match(r'^[a-zA-Z](\w|-|\.|_)+@[a-zA-Z]+\.[a-zA-Z]{0,3}$', self.s[1]):
                print(em.formataddr(self.s))
        
if __name__ == '__main__':
    obj = Main()

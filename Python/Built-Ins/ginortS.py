class Main():
    def __init__(self):
        self.s = input()
        if 0 < len(self.s) < 1000:
            pass
        else:
            print("Length of the string(S) must be between 0 and 1000.")
        
    def Sort(self):
        self.s = sorted(self.s, key = lambda x : (x.isdigit() and int(x) % 2 == 0, x.isdigit(), x.isupper(), x.islower(), x))
        print(''.join(self.s))
        
if __name__ == '__main__':
    obj = Main()
    obj.Sort()

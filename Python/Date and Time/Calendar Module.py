import calendar

class Main:
    def __init__(self):
        self.m, self.d, self.y = map(int, input().split())
     
    def output(self):
        if 2000 < self.y < 3000:
            print(calendar.day_name[calendar.weekday(self.y,self.m, self.d)].upper())
          
if __name__ == '__main__':
    obj = Main()
    obj.output() 
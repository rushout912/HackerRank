from collections import namedtuple

class Main:
    def __init__(self):
        self.n = int(input())
        if 0 < self.n <= 100: # 0 < N <= 100
            pass
        else:
            raise ValueError("Total number of students should be between 0 and 100.")
        self.s = input()
        self.total = 0.0
        self.Student = namedtuple('Student', self.s)
        
        for i in range(self.n):
            self.students = self.Student(*input().split())
            self.total += int(self.students.MARKS)
            
    def output(self):
        print("%0.2f" % (self.total / self.n))
        
if __name__ == '__main__':
    obj = Main()
    obj.output()


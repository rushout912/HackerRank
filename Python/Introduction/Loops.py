import sys
if __name__ == '__main__':
    n = int(input())
    while 0 <= n <= 20:
        for i in range(n):
            print(i**2)
            sys.stdout.flush() # This is needed to flush the output buffer
        break    


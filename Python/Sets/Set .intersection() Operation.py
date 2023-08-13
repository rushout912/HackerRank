if __name__ == '__main__':
    n = int(input())
    a = set(map(int, input().split(" ")))
    
    m = int(input())
    b = set(map(int, input().split(" ")))
    
    a = a.intersection(b)
    if not 0 < n < 1000:
        ValueError("Total number of students in college must be between 0 and 1000.")
    else:
        print(len(a))
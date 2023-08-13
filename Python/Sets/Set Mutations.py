if __name__ == '__main__':
    n = int(input())
    s = set(map(int, input().split(" ")))
    if not 0 < len(s) < 1000: # Constraint
        raise ValueError("length of set(A) is out of range")
    else:
        pass
    
    q = int(input())
    if not 0 < q < 100: # Constraint
        raise ValueError("Number of other sets (N) is out of range")
    else:
        pass
    
    for i in range (q):
        a, b = input().split(" ")
        c = set(map(int, input().split(" ")))
        if not 0 < len(c) < 1000: # Constraint
            raise ValueError("length of other set is out of range")
        else:
            pass
        eval('s.' + a + '(c)')
        
    print(sum(s))
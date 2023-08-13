if __name__ == '__main__':
    n = int(input())
    
    s = set()
    for i in range (n):
        s.add(input())
    if 0 < len(s) < 1000:    
        print((len(s)))
    else:
        raise ValueError("The total number of country stamps is not in the range of 0 to 1000.")    

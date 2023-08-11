if __name__ == '__main__':
    a = int(input())
    b = int(input())
    m = int(input())
    if 1 <= a <= 10 and 1 <= b <= 10 and 2 <= m <= 1000: # Constraints
        
        print(pow(a, b))
        print(pow(a, b, m))
    else:
        raise ValueError('a and b must be between 1 and 10 and m must be between 2 and 1000')    

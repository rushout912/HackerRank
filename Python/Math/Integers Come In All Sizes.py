if __name__ == '__main__':
    a = int(input())
    b = int(input())
    
    c = int(input())
    d = int(input())

    if 1<=a<=1000 and 1<=b<=1000 and 1<=c<=1000 and 1<=d<=1000: # Constraints
    
        print(a ** b + c ** d)
    
    else:
        raise ValueError("Constraints not met")    

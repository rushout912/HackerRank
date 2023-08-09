if __name__ == '__main__':
    n = int(input())
    arr = list(set(map(int, input().split())))
    if 2<=n<=10 and -100<=len(arr)<=100: # Constraints
        arr.sort()
        print(arr[-2])
    else:
        raise ValueError("Constraints not met")
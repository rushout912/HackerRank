if __name__ == '__main__':
    n = int(input())
    if not 0 < n < 1000: # Constraint
        raise ValueError("n is out of range")
    else:
        pass
    l = list(map(int, input().split()))
    a = set(l)

    m = int(input())
    l = list(map(int, input().split()))
    b = set(l)

    c = a.symmetric_difference(b)
    c = sorted(c)
    print(len(c))
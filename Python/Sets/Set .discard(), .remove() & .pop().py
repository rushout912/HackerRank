if __name__ == '__main__':
    n = int(input())
    if not (0 < n < 20):
        raise ValueError("Constraints not met for n")
        
    s = set(map(int, input().split()))

    q = int(input())
    if not (0 < q < 20):
        raise ValueError("Constraints not met for N")
    
    for _ in range(q):
        query = input().split()

        if query[0] == "pop":
            s.pop()
        elif query[0] == "remove":
            s.remove(int(query[1]))
        elif query[0] == "discard":
            s.discard(int(query[1]))
    print(sum(s))

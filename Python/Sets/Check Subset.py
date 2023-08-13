if __name__ == '__main__':
    for i in range(int(input())):
        a = int(input())
        A = set(input().split()) 
        b = int(input())
        B = set(input().split())

        if 0 < a < 1001 and 0 < b < 1001:
            print(A.issubset(B))    #A <= B
        else:
            raise ValueError("Number of elements in each set should be between 1 and 1000")
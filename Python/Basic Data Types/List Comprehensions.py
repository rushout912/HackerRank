if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
    arr = []
    p = 0
    
    for i in range (x + 1):
        for j in range (y + 1):
            for k in range (z + 1):
                if i + j + k != n and 0<=i<=x and 0<=j<=y and 0<=k<=z: #Constraints
                        arr.append([])
                        arr[p] = [i, j, k]
                        p += 1
                        print(arr)
                else:
                     raise Exception("Constraints not met")        

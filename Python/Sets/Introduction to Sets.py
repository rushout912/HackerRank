def average(array):
    if 0 < len(array) <= 100:
        return sum(set(array)) / len(set(array))
    else:
        raise ValueError('Array length is out of range')

if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    result = average(arr)
    print(result)

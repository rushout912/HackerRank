def merge_the_tools(s, k):
    if 1 <= len(s) <= 10 ** 4 and 1 <= k <= len(s): # Constraints
        for data in zip(*[iter(s)] * k):
            d = dict()
            print(''.join([ d.setdefault(c, c) for c in data if c not in d]))
    else:
        raise ValueError('Invalid Input')        


if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)
#Constraint: 0 < len(s) <= 1000
def swap_case(s):
    if 0 < len(s) <= 1000:
        return s.swapcase()
    else:
        raise ValueError('Input length should be between 1 and 1000 characters')
    

if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)

import string

def print_rangoli(size):
    if 0 < size < 27: # Constraint: 0 < size < 27
        alpha = string.ascii_lowercase
        li = []
        for i in range(size):
            s = '-'.join(alpha[i:size])
            li.append((s[::-1] + s[1:]).center(4*n - 3, '-'))
        print('\n'.join(li[:0:-1] + li))
    else:
        raise ValueError("The size of the rangoli must be between 1 and 26.")
                    

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)
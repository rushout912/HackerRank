def minion_game(s):
    v = 'AEIOU'
    n = len(s)
    
    if 0 < n < 10**6: # Constraint: 0 < len(string) < 10**6
        kevin = sum(q for c, q in zip(s, range(n, 0, -1)) if c in v)
        stuart = n * (n + 1) // 2 - kevin
        
        if stuart > kevin:
            print('Stuart %d' % stuart)
        elif kevin > stuart:
            print('Kevin %d' % kevin)
        else:
            print('Draw')
    else:
        raise ValueError("The length of the string must be between 1 and 10**6.")        

if __name__ == '__main__':
    s = input()
    minion_game(s)

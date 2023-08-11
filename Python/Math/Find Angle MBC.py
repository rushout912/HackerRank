import math

if __name__ == '__main__':
    a = int(input())
    b = int(input())
    if 0 < a <= 100 and 0 < b <= 100: # Constraints
        print(str(int(round(math.degrees(math.atan2(a, b))))) + chr(176)) # chr(176) is used because hackerrank does not accept non-ascii characters
    else:
        raise ValueError('Length of sides must be between 0 and 100')    

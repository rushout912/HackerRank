import textwrap
# Constraints
# 0 < len(string) < 1000
# 0 < max_width < len(string)
def wrap(string, max_width):
    # Check if string length is within the range (0 < len(string) < 1000)
    if not 0 < len(string) < 1000:
        raise ValueError("Input string length must be between 1 and 999 characters.")

    # Check if max_width is within the range (0 < max_width < len(string))
    if not 0 < max_width < len(string):
        raise ValueError("max_width must be between 1 and the length of the input string.")

    return textwrap.fill(string, max_width)

if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)

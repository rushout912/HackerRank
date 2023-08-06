def print_full_name(a, b):
    if len(a) <= 10 and len(b) <= 10: #Constraint: The length of the first and last names are each ≤ 10.
        print("Hello %s %s! You just delved into Python." % (a, b))
    else:
        raise ValueError("Both first name and last name should be 10 characters or less.")

if __name__ == '__main__':
    first_name = input()
    last_name = input()
    print_full_name(first_name, last_name)

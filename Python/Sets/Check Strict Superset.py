if __name__ == '__main__':
    A = set(input().split(" "))
    if len(A) <= 0 or len(A) >= 501: # 0 < len(A) < 501
        print("Invalid input for set A length")
        exit()

    num_other_sets = int(input())
    if num_other_sets <= 0 or num_other_sets >= 101: # 0 < len(other_sets) < 101
        print("Invalid input for number of other sets")
        exit()

    b = set()
    for _ in range(num_other_sets):
        other_set = set(input().split(" "))
        b.update(other_set)

    print(b.issubset(A))

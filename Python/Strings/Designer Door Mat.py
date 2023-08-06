# Constraints:
# 5 < N < 101
# 15 < M < 303
if __name__ == '__main__':
    try:
        N, M = map(int, input().split())

        # Check if N and M are within the specified range (5 < N < 101 and 15 < M < 303)
        if not (5 < N < 101) or not (15 < M < 303):
            raise ValueError("N must be between 6 and 100, and M must be between 16 and 302.")

        for i in range(1, N, 2):
            print((i * ".|.").center(M, "-"))

        print("welcome".upper().center(M, "-"))

        for i in range(N - 2, -1, -2):
            print((i * ".|.").center(M, "-"))
    except ValueError as e:
        print("Error:", e)
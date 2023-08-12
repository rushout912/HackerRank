from itertools import product

if __name__ == '__main__':
    k, m = map(int, input().split())

    if not (1 <= k <= 7 and 1 <= m <= 1000): # 1 <= K <= 7 and 1 <= M <= 1000
        raise ValueError("Constraints not met")

    N = []
    for _ in range(k):
        n_i, *elements = map(int, input().split())
        if not (1 <= n_i <= 7 and all(1 <= abs(x) <= 10**9 for x in elements)): # 1 <= N(i) <= 7 and 1 <= elements <= 10**9
            raise ValueError("Constraints not met")
        N.append(elements)

    results = map(lambda x: sum(i**2 for i in x) % m, product(*N))
    print(max(results))


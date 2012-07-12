def all_factors(n):
    divs = set()
    for i in range(1, int(n ** 0.5 + 1)):
        if n % i == 0:
            divs.add(i)
            divs.add(n/i)
    return divs

def is_abundant(n):
    if n not in abundant_cache:
        factors = all_factors(n)
        if sum(factors) > 2 * n:
            abundant_cache[n] = True
        else:
            abundant_cache[n] = False
    return abundant_cache[n]


abundant_numbers = []
abundant_cache = {}

for i in range(1, 28123):
    if is_abundant(i):
        abundant_numbers.append(i)

if __name__ == "__main__":
    result = []
    for i in range(1, 28123):
        is_sum = False
        for j in abundant_numbers:
            if j > i / 2 + 1:
                break
            if is_abundant(i - j):
                is_sum = True
                break
        if not is_sum:
            result.append(i)
    print(sum(result))



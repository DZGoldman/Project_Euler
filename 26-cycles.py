# https://projecteuler.net/problem=26
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
cycles_found = {}
for d in range(2,1001):
    divisions = set()
    n = 10**len(str(d))

    cycle = 0
    if (n,d) in divisions:
        cycles_found[(n,d)] = cycle

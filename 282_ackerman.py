from IPython import embed
memo = {}
limit = 14**8
def A(m, n):
    tup = str((m, n))
    if m == 0:
        return n+1
    elif n == 0:
        if tup in memo:
            return memo[tup]
        else:
            result = A(m-1, 1) % limit
            memo[tup] = result
            return result
    else:
        if tup in memo:
            return memo[tup]
        else:
            result = A(m-1, A(m, n-1)) % limit
            memo[tup] = result
            return result
print(len(memo))
embed()

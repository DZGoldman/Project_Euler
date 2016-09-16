from IPython import embed
memo = {}
limit = 14**8
import time
def A(m, n, memo):
    tup = str((m, n))
    print(tup)
    # time.sleep(0.01)
    if m == 0:
        print(str(n)+'!')
        # time.sleep(0.5)
        return n+1
    elif n == 0:
        if tup in memo:
            # print(tup)
            return memo[tup]
        else:
            # print('else')
            result = A(m-1, 1, memo) % limit
            memo[tup] = result
            return result
    else:
        if tup in memo:
            # print(tup)
            return memo[tup]
        else:
            result = A(m-1, A(m, n-1, memo), memo) % limit
            memo[tup] = result
            return result

# A(3,6, memo)
A(4,1, memo)
print(len(memo))
# A(4,4)
# embed()

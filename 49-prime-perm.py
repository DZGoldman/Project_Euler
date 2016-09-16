from math import sqrt, floor
skips = [0 for i in range(10000)]

def is_prime(num):
    if num==1:
        return False
    for n in range(2,floor(sqrt(num))+1):
        if num % n == 0:
            return False
    return True

def get_perms(num):
    s_num = ''.join(sorted(list(str(num))))
    perms = []

    for i in range(len(s_num)):
        perm = s_num[i]
        tri_num = s_num[:i]+s_num[i+1:]
        for j in range(len(tri_num)):
            c_perm =perm+ tri_num[j]
            bi_num = tri_num[:j] + tri_num[j+1:]
            perms.append(c_perm+bi_num)
            perms.append(c_perm + (bi_num[::-1]))
    return [int(s) for s in perms]

for num in range(1001,10000,2):
    if not is_prime(num) or skips[num]:
        continue
    perms = get_perms(num)
    for perm in perms:
        skips[perm]=1
    primes = [n for n in perms if is_prime(n)]
    if len(primes)<3:
        continue
    print(primes)

    differences = []
    for index in range(len(primes)-1):
        differences.append(primes[index+1]-primes[index])





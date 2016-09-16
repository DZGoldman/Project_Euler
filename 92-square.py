
def square_dig(num):
    import time
    t0 = time.time()
    count = 0
    founds = [0 for _ in range(num)]

    nums = list(range(1,num))
    nums.reverse()

    while nums:
        i = nums.pop()
        current_list = []
        while not i in [89, 1]:
            if founds[i] == 89:
                i = 89
                break
            if founds[i] == 1:
                i = 1
                break
            current_list.append(i)
            i = sum( [int(n)**2 for n in list(str(i))] )

        print(len(current_list)) if len(current_list) > 1 else 'hi'
        if i == 89:
            count += 1+len(current_list)


    print('Time', time.time() - t0)
    return count

print(
    square_dig(10000000)
)


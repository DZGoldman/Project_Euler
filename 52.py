def permult():
    x = 0
    found = False
    while not found:
        x += 1
        found = True
        for mult in  range(1,7):
            if sorted(list(str(mult*x))) != sorted(list(str(x))):
                found = False
                break
    return x

print(permult())
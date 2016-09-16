import math
squares = [x**2 for x in range(1001)]

max_count = 0
solution = 0
for i, square in enumerate(squares):
    count = 0
    for j in range(i):
        print(i,j)
        b = square - squares[j]
        print(b)
        if math.sqrt(b) == int(math.sqrt(b)):
            count += 1
    if count > max_count:
        max_count = count
        solution=math.sqrt(square)
print(solution)

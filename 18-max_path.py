def triangle():
    f = open('18-pyramind.py')
    tri = []
    x = f.read().split('\n')
    x.pop()
    for line in (x):
        tri.insert(0,[int(string) for string in line.split(' ') ])
    for line_i in range(len(tri)-1):
        line = tri[line_i]
        for i in range(len(line)-1):
            tri[line_i+1][i] += max(line[i], line[i+1])
    return tri[-1][0]

print(triangle())

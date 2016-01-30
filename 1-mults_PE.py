collection=[]
for i in range(1,1000):
    if i%3==0:
        collection.append(i)
        print(i)
    elif i%5==0:
        collection.append(i)
        print(i)
sum=0
for number in collection:
    sum+=number
print(sum)

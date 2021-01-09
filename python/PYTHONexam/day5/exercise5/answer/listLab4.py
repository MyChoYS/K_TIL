import random
listnum = []
for x in range(10):
    listnum.append(random.randint(1,50))

print(listnum)

for x in range(10):
    if listnum[x] < 10:
        listnum[x] = 100

print(listnum)

print(listnum[0])
print(listnum[-1]) # listnum[len(listnum)-1]
print(listnum[1:6])
print(listnum[::-1])
print(listnum[:])
del listnum[4]
print(listnum[:])
listnum[1:3] = []
print(listnum[:])
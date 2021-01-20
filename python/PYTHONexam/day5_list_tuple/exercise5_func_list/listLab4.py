import random
listnum = []
num = 0
for i in range(10):
    a = random.randint(1, 50) #한번만 쓸거면 굳이 변수에 안담아도됨
    listnum.append(a)
print(listnum)

for i in listnum:
    if i < 10:
        listnum[num] = 100 #num대신 listnum[listnum.index(i)]사용
    num += 1

''' for x in range(10):
        if listnum[x] < 10:
            listnum[x] = 100 '''

print(listnum)

print(listnum[0])
print(listnum[9])
print(listnum[1:5])

listnum[0:] = listnum[9],listnum[8],listnum[7],listnum[6],listnum[5],listnum[4],listnum[3],listnum[2],listnum[1],listnum[0]
print(listnum[0:])#10번 역순
print(listnum[::-1]) #역순 국룰


print(listnum[0:])
del(listnum[4])
print(listnum[0:])
listnum[1:3] = []
print(listnum[0:])
listnum = [10,5,7,21,4,8,18]
result = listnum[0]
for x in range(1,len(listnum)):
    samp = listnum[x]
    if result < samp:
        result = samp

print("최댓값:",result)
listnum = [10,5,7,21,4,8,18]
result_b = listnum[0]
result_s = listnum[0]
for x in range(1,len(listnum)):
    samp = listnum[x]
    if result_b < samp:
        result_b = samp
    elif result_s > samp:
        result_s = samp

print("최솟값:",result_s,"최댓값:",result_b)
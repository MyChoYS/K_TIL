listnum = [10,5,7,21,4,8,18]
num1 = listnum[0]
num2 = listnum[0]
for i in listnum:
    if num2 <= i:
        num2 = i
    elif num1 >= i:
        num1 = i

print("최솟값 : ",num1," 최댓값 : ",num2)


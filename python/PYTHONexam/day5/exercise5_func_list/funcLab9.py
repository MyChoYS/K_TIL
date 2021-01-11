def sumeven1(*p):
    sum = 0
    count = 0

    for i in p:
        if i >= 1 and i % 2 == 0 :
            sum += i
            count += 1

    if bool(p) == False: # if len(p) == 0 도 가능
        return -1
    if count == 0:
        return 0
    return sum


print(sumeven1(5,6,7,8))
print(sumeven1())
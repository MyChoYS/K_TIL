def sumAll(*p):
    sum = 0
    count = 0
    for i in p:
        if type(i) != int:
            continue
        elif type(i) == int:
            sum += i
            count += i

    if bool(p) == False or count == 0:
        return "none"
    return sum

print(sumAll(2,3,4))
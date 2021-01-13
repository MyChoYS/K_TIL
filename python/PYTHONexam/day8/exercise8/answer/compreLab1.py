def createList(*p, type=1):
    if p :
        if type == 2:
            result = [i for i in p if i % 2 ==0]
        elif type == 3:
            result = [i for i in p if not i % 2 ==0]
        elif type == 4:
            result = [i for i in p if i > 10]
        elif type == 1:
            result = [i for i in p]
    else:
        result = [i for i in range(1, 31)]

    return result

print(createList(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,type=1))
print(createList(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,type=2))
print(createList(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,type=3))
print(createList(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,type=4))
print(createList( ))
'''def createList(*p,type=1):
    list = []
    if type == 2:
        if p % 2 == 0 :
            list = [*p]
    elif type == 3 :
        if p % 2 == 1:
            list = [*p]
    elif type == 4:
        if p > 10 :
            list = [*p]
    elif type == 1:
        list = [*p]
    return list'''

def createList(*p,type=1):
    if len(p) == 0:
        if type == 1:
            list = [i for i in range(1,31) ]
        if type == 2:
            list = [i for i in range(1,31) if i % 2 == 0]
        if type == 3:
            list = [i for i in range(1,31) if i % 2 == 1  ]
        if type == 4:
            list = [i for i in range(1,31) if i > 10  ]
    else:
        list = [i for i in p if type == 1]
        if type == 2:
            list = [i  for i in p if i % 2 == 0 ]
        if type == 3:
            list = [i  for i in p if i % 2 == 1 ]
        if type == 4:
            list = [i for i in p if i > 10 ]
    return list

print(createList(type=2))

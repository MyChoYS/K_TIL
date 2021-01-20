def myprint(*p,**key):
    deco = '**'
    sept = ','
    if len(p) != 0:
        if 'deco' in key.keys():
            deco = key['deco']

        if 'sep' in key.keys():
            sept = key['sep']

        print(deco, end='')
        print(*p, sep=sept, end='')
        print(deco,end='')
        return '\t'
    else:
        print('Hello Python',end='')
        return '\t'

print(myprint(10,20,30,deco="@"))
print(myprint())
print(myprint())




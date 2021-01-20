def mydict(**p):
    dic = {}
    print(p)

print(mydict(a=5,b=6,c=7,d="s"))

##답
def mydic(**kwargs):
    mdic = {}
    if bool(kwargs) == False:
        print(mdic)
    else:
        for k,v in kwargs.items():
            mdic['my'+k] = v

    return mdic

print(mydic(a=5,b=5,c=7,s='7'))
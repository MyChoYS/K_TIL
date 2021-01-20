def mydict (**kwargs):
    dic = {'my'+ kw : args for kw, args in kwargs.items()}
    return dic

print(mydict(Korean=50, Math=100, Science=30))
print(mydict())
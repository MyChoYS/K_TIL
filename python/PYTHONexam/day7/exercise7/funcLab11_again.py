'''def mydict(**key):
    dict = {}
    i = 0
    if len(key) == 0:
        return dict
    else:
        for k,v in key.items():
            update = {k:v}
            dict.update(update)
    return dict'''

def mydict(**key):
    dict = {}
    i = 0
    if len(key) == 0:
        return dict
    else:
        for k,v in key.items():
            dict['my'+k] = v
            ###dic,딕셔너리는 키를 []안에 넣으면 값이 나온다. 리스트[]에는 순서, ex.0,1,2를 넣으면 리스트 값이 나온다.

    return dict


print(mydict(a=5,b=6,c=6,d=4))
print(mydict())
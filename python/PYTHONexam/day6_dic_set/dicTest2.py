dic = { 'boy':'소년', 'school':'학교', 'book':'책' }
print(dic.keys())
print(dic.values())
print(dic.items())

keylist = dic.keys()
for i in keylist:
    print(i)

valuelist = dic.values()
for value in valuelist:
    print(value)

itemlist = dic.items()
for item in itemlist:
    print(item)

itemlist = dic.items()
for value,key in itemlist:
    print(value, key, sep="-")

for key,value in itemlist:
    print(key, value, sep="-")
import random
rlist = []
for i in range(10):
    randomlist = random.randint(0,100)
    rlist.append(randomlist)

##랜덤리스트도 컴프레션으로만들어보자! rlist = [random.randint(0,100) for i in range(10)]

rdic = {k+1: 'pass' if rlist[k] >= 60 else 'nopass' for k in range(len(rlist))}

print(rlist)
print(rdic)

import random

set1 = set()

while True :
    set1.add(random.randint(1, 45))
    if len(set1) == 6 :
        break

print( "행운의 로또번호 :",", ".join( repr(e) for e in set1) )
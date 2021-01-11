import random
a = set()
b = set()
anum = 0
bnum = 0
while len(a) < 10 or len(b) <10:
    if len(a) < 10:
        anum = random.randint(1, 20)
        a.add(anum)
    if len(b) < 10:
        bnum = random.randint(1, 20)
        b.add(bnum)

print("집합1 :",a)
print("집합2 :",b)
print("두 집합에 모두 있는 데이터 :",a & b)
print("집합1 또는 집합2에 있는 데이터", a | b)
print("집합1에는 있고 집합2에는 없는 데이터",a - b)
print("집합2에는 있고 집합1에는 없는 데이터",b - a)
print("집합1과 집합2가 각자 가지고 있는 데이터",a ^ b)
set_1 = set()
set_2 = set()

import random
for x in range(10):
    i = random.randint(1,20)
    set_1.add(i)
for y in range(10):
    j = random.randint(1,20)
    set_2.add(j)


print("집합 1 :", set_1)
print("집합 2 :", set_2)
print("두 집합에 모두 있는 데이터 :", set_1 & set_2)
print("집합1 또는 집합2 에 있는 데이터 :", set_1 | set_2)
print("집합1에는 있고 집합2에는 없는 데이터 :", set_1 - set_2)
print("집합2에는 있고 집합1에는 없는 데이터 :", set_2 - set_1)
print("집합1과 집합 2가 각자 가지고 있는 데이터 :", set_1 ^ set_2)
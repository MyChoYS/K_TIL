import random

list = []
while True:
    x = random.randint(1,45)
    if len(list) == 6:
        break
    if x in list:
        continue
    else:
        list.append(x)

print('행운의 로또번호 :', list[0], list[1], list[2], list[3], list[4], list[5])
import random
num = set()
count=0
for i in range(946):
    num = set()
    while len(num) < 6:
        lotto = random.randint(1, 45)
        num.add(lotto)
        # num.add(random.randint(1,45)하나로 퉁칠수도있다.
    count +=1
    print(count,num)

#print("행운의 로또번호 :",num)


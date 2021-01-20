import random
lotto_list = []
while True :
    num = random.randint(1,45)
    if num not in lotto_list:
        lotto_list.append(num)
    if len(lotto_list) == 6 :
        break
print("행운의 로또번호 : ", lotto_list)
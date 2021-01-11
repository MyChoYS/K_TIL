import random
lotto = []  #list이용, setlab2에선 set을 이용하여 로또번호 추출
i = 0

while i < 6 :
    num = random.randint(1, 45)
    if num in lotto:
        continue
    else:
        lotto.append(num) #리스트는 append, set은 add, dic은 dic['새로운키값'] = 밸류 이렇게 치면 추가됨
        i += 1



print("행운의 로또번호 :",lotto)


# 난수 추출 함수를 사용하여 0부터 100까지의 값 10개로 구성되는 리스트의 생성
rotto = []

import random
for i in range(0,11):
    rand1 = random.randint(1,100)
    rotto.append(rand1)

# 리스트를 이용하여 딕셔너리를 생성 (60 이상이면 pass, 미만이면 nopass)
dic1 = {i:'pass' if i>=60 else 'nopass' for i in rotto}
print(dic1)
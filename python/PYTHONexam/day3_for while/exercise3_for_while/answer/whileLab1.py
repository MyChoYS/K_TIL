# 1부터 추출된 숫자값까지의 각 숫자들의 제곱값을 행단위로 출력한다.
import random
num = 1
finish_num = random.randint(5, 10)

while num <= finish_num:
    print(num, " -> ", num ** 2)
    num += 1

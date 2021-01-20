import random


def differtwovalue(num1,num2):
    if num1 > num2:
        result = num1 - num2
    elif num1 < num2:
        result = num2 - num1
    elif num1 == num2:
        result = 0
    return result

for i in range(5):
    x = random.randint(1, 30)
    y = random.randint(1, 30)
    print("x와 y의 차는",differtwovalue(x,y),"입니다.")



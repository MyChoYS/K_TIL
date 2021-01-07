import random
pairnum1 = random.randint(1,6)
pairnum2 = random.randint(1,6)

while int(pairnum1) != int(pairnum2):
    pairnum1 = random.randint(1, 6)
    pairnum2 = random.randint(1, 6)

    if pairnum1 > pairnum2:
        print("pairnum1이 pairnum2 보다 크다.")

    elif pairnum1 < pairnum2:
        print("pairnum1이  pairnum2 보다 작다.")

print("게임 끝")



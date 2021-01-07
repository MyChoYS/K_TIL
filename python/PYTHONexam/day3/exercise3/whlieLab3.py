import random
count=0

while True:
    ran = random.randint(1, 30)
    if ran == 0 or ran >= 27:
        print("수행횟수는 ",count,"번입니다.")
        break
    count += 1
    print(chr(ran+64),"(",ran,")")

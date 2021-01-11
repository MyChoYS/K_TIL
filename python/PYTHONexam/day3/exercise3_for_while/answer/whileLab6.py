while True:
    num = int(input("숫자를 입력하세요 : "))
    if num == 0 :
        print("종료")
        break
    elif num < -10 or num > 10  :
        continue
    elif num > 0 :
        print("입력값 : ", num)
    else:
        num *= -1
        print("입력값(부호변경) : ", num)
    '''nnum = 1
    mult = 1
    while nnum <= num:
        mult *= nnum
        nnum += 1'''
    mult = 1
    for data in range(1, num+1) :
        mult *= data
    print(mult)
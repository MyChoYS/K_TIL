while True:
    a = int(input("입력값 : "))
    count = 1
    b= 0
    if a == 0:
        print("종료")
        break
    elif a < -10 or a > 10:
        continue
    elif a >= 0 and a <= 10:
        for i in range(a):
            b += 1
            count = count * b
        print("입력값 : ",a,count)
    elif a < 0 :
        a = a * -1
        for i in range(a):
            b += 1
            count = count * b

        print("입력값(부호변경) : ",a,count)


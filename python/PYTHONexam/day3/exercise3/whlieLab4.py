while True:
    a = int(input("월 입력 :"))
    if a >= 1 and a <= 12:
        if a == 12 or a== 1 or a== 2:
            print(a,"월은 겨울")
        if a == 3 or a == 4 or a == 5:
            print(a,"월은 봄")
        if a == 6 or a == 7 or a == 8:
            print(a,"월은 여름")
        if a == 9 or a == 10 or a== 11:
            print(a,"월은 가을")
    else:
        print("1~12사이의 값을 입력하세요!")
        break

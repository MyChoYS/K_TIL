import calendar

while True:
    str1 = input("년도를 입력하세요 : ")
    str2 = input("월을 입력하세요 : ")
    try:
        year = int(str1)
        month = int(str2)
        if month not in range(1,13):
            raise ValueError("월은 1~12 사이 입력요!!")
        if year < 0 :
            raise ValueError("년도는 양의 값으로 입력해요!!")
        break
    except ValueError as v:
        print("입력값이 잘못되었습니다.(" + str(v) +")")

print(calendar.month(year, month))
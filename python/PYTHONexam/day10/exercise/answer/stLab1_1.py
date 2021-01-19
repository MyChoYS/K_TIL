import calendar

while True:
    str_year = input('년도를 입력하세요 : ')
    str_month = input('월 입력하세요 : ')
    try:
        int_year = int(str_year)
        int_month = int(str_month)
        print(calendar.month(int_year, int_month))
        break
    except ValueError:
        print("년,월 형식이 잘못되었습니다.")
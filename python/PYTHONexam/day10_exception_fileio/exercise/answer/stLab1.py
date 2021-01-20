import calendar

while True:
    try:
        year = int(input("년도를 입력하시오 :"))
        mon = int(input("월을 입력하시오 :"))
        print(calendar.month(year, mon))
        break
    except ValueError:
        print("숫자를 입력하시오.")


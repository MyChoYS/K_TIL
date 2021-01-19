import calendar

while True:
    try:
        year = int(input("년도를 입력하시오."))
        mon = int(input("월을 입력하시오."))
        print(calendar.month(year, mon))
        break

    except ValueError as v:
        print(str(v),"숫자를 입력하시오.")
    except IndexError:
        print("제대로 된 숫자를 입력하시오.")


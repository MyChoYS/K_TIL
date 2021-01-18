str = "89점"
try:
    score = int(str)
    print(score)
    a = str[5]
except (ValueError, IndexError)  as e:
    print(e)


print("작업완료")
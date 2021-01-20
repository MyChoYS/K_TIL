try:
    f = open("live.txt", "rt", encoding="UTF-8")
    print(f, type(f))
    text = f.read()
    print(text)
except FileNotFoundError:
    print("파일이 없습니다.")
finally:
    f.close()

print("*"*20)
f = None
try:
    f = open("live.txt", "rt", encoding="utf8")
    text = f.read()
    print(text)
except FileNotFoundError:
    print("파일이 없습니다.")
finally:
    if f : ##f가 처음에 none이었는데 참(true)로 변환되었다면 프로그램 실행이 된것이므로 클로즈 해준다.
        f.close()
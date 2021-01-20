import os
f = None ##필수임. yesterday 제목이 틀리거나 파일이 없을 경우에는 오류가 발생하기 때문. 그러니 none을 주고 close안되도록 유도
try:
    f = open("yesterday.txt", "rt", encoding="UTF-8")
    text = f.read()
    max = text.lower()
    c = max.count("yesterday")


except FileNotFoundError:
    print("파일을 읽을 수 없어요.")
    f.close()

else:
    print("Number of a word 'yesterday'", c)

finally:
    print("수행완료!!")
    if f:
        f.close() ##종료구문 필수~!


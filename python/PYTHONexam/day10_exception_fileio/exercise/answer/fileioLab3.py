import os
f = None
try:
    f = open("yesterday.txt", "rt", encoding="UTF-8")
    text = f.read()
    max = text.lower()
    c = max.count("yesterday")
except FileNotFoundError:
    print("파일을 읽을 수 없어요.")
else:
    print("Number of a word 'yesterday'", c)
finally:
    print("수행완료!!")
    if f :
        f.close()


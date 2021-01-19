cnt = 0
try:
    f = open("yesterday.txt", "rt", encoding="UTF-8")
except FileNotFoundError :
    print("파일을 읽을 수 없어요")
else:
    for tmp in f:
        tmp = tmp.lower()
        cnt += tmp.count('yesterday')
    print(f"Number of a Word 'Yesterday' {cnt}")
finally:
    print("수행완료!!")

f = None
try :
    f = open("yesterday1.txt", "rt", encoding="UTF-8")
    text = f.read()
    yesterday_count=text.count("yesterday")+text.count("Yesterday")
    print(yesterday_count)
except FileNotFoundError:
    print("파일을 읽을 수 없어요")
else :
    print("Number of a Word 'Yesterday'", yesterday_count)
finally :
    print("수행완료!")
    if f :
        f.close()
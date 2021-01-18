import os
import datetime
try:
    f = open("sample.txt", "rt", encoding="UTF-8")
    text = f.read()
    t = open("sample_yyyy_mm_dd.txt", "at", encoding="UTF-8")
    t.write(text)
    print("저장이 완료되었습니다.")
    f.close()
    t.close()
except FileNotFoundError:
    print(FileNotFoundError)
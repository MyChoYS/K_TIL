import os
import time
now = time.localtime()
try:
    f = open("sample.txt", "rt", encoding="UTF-8")
    text = f.read()
    t = open(f"""sample_{now.tm_year}_{now.tm_mon:02d}_{now.tm_mday:02d}.txt""", "at", encoding="UTF-8")
    t.write(text)
    print("저장이 완료되었습니다.")
    f.close()
    t.close()
except FileNotFoundError:
    print(FileNotFoundError)
##at = append모드, rt = read, wt= write

#날짜수정완료,,
import os
import time
import calendar

now = time.localtime()
week = ['월', '화', '수', '목', '금', '토', '일']

if not os.path.isdir("c:\\iotest"):
    os.mkdir("c:\\iotest")

f = open("c:\\iotest\\today.txt", "wt", encoding="UTF-8" )

f.write(f'''오늘은 {now.tm_year}년 {now.tm_mon:02d}월 {now.tm_mday:02d}일입니다.
오늘은 {week[calendar.weekday(now.tm_year, now.tm_mon, now.tm_mday)]}요일입니다.
나는 {week[calendar.weekday(1997,10,17)]}요일에 태어났습니다.''')

f.close()

print("저장이 완료되었습니다.")

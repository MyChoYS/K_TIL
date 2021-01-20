import calendar
import time
import os

now = time.localtime()
week = ['월','화','수','목','금','토','일']

if os.path.exists("c:/iotest") :
   print("파일이 존재합니다.")
   f = open("c:/iotest/today.txt", "wt", encoding="UTF-8")
   f.write(f"""오늘은 {now.tm_year}년 {now.tm_mon}월 {now.tm_mday}일입니다.\n오늘은 {week[calendar.weekday(now.tm_year,now.tm_mon,now.tm_mday)]}입니다.\n나는 {week[calendar.weekday(1995,7,15)]}요일에 태어났습니다.""")
   print("저장이 완료되었습니다.")
   f.close()
else :
   os.mkdir("c:/iotest")
   f = open("today.txt", "wt", encoding="UTF-8")
   f.write(f"""오늘은 {now.tm_year}년 {now.tm_mon}월 {now.tm_mday}일입니다.\n오늘은 {week[calendar.weekday(now.tm_year,now.tm_mon,now.tm_mday)]}입니다.\n나는 {week[calendar.weekday(1995,7,15)]}요일에 태어났습니다.""")
   print("저장이 완료되었습니다.")
   f.close()

##날짜를 import time으로 불러와서 작성하자!
##ex. now = time.localtime()
##now.tm_year :년 , now.tm_mon :월 등 다른 소스리뷰하면서 다시 작성해 볼 것.
##week = ['월',화,소,목,금,토,일]
##ex.week[calendar.weekday(1995,07,15)요일에 태어났습니다.
##수정완료.
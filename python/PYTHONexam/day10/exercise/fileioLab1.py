import os

if os.path.exists("c:/iotest") :
   print("파일이 존재합니다.")
   f = open("c:/iotest/today.txt", "wt", encoding="UTF-8")
   f.write("오늘은 2021년 01월 18일입니다.\n오늘은 월요일입니다.\n나는 토요일에 태어났습니다.")
   print("저장이 완료되었습니다.")
   f.close()
else :
   os.mkdir("c:/iotest")
   f = open("today.txt", "wt", encoding="UTF-8")
   f.write("오늘은 2021년 01월 18일입니다.\n오늘은 월요일입니다.\n나는 토요일에 태어났습니다.")
   print("저장이 완료되었습니다.")
   f.close()
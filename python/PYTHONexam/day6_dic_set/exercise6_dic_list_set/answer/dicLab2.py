dic = { '월':(-13,-3),'화':(-6,2),'수': (-8,8),'목':(-4,6),'금':(-7,7),'토':(-14,-3),'일':(-7,-2)}


Day_of_the_week = input("요일명을 한글로 입력하세요(한글자):")

if Day_of_the_week in dic :
    print(Day_of_the_week,"요일의 최저온도는", dic[Day_of_the_week][0],"이고 최고 온도는" ,dic[Day_of_the_week][1],"입니다", sep="")

else:
    print(Day_of_the_week,"요일의 정보를 찾을 수 없습니다", sep="")

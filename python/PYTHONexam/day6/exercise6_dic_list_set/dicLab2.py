dic1 = {'월':(-8,-3),"화":(-1,3),"수":(-6,7),"목":(-1,4),"금":(-6,7),"토":(-10,-2),"일":(-4,-2)}


day = str(input("요일명을 한글로 입력하세요"))

if day in dic1 :
    print(day,"요일의 최저온도는",min(dic1[day]),"이고 최고온도는 ",max(dic1[day]),"입니다.")
else:
    print(day,"요일의 정보를 찾을 수 없습니다.")
#dic1[day][0]으로 했어도 됐음
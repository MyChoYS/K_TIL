l <- list(1,2,3)
v <- c(1,2,3)

sum(v);sum(unlist(l[1:2]))



#read file data
nums <- scan("data/sample_num.txt")
# encoding = 코드셋명 을 생략하고 읽으면 os의 고유 코드셋 정보를 반영해서 읽는다.
word_ansi <- scan("data/sample_ansi.txt",what="") #데이터를 벡터로 불러올때
words_utf8 <- scan("data/sample_utf8.txt", what="",encoding="UTF-8")
words_utf8_new <- scan("data/sample_utf8.txt", what="")#what= 은 chr형태로 불러옴
lines_ansi <- readLines("data/sample_ansi.txt")
lines_utf8 <- readLines("data/sample_utf8.txt",encoding="UTF-8")

df2 <- read.table("data/product_click.log", stringsAsFactors = T) #read.csv
str(df2) #데이터 구분을 ,로 했을 경우에는 csv 나머지는 table로 불러온다.
head(df2)
summary(df2$V2)

# 함수 정의와 활용

func1 <- function() {
  xx <- 10   # 지역변수 <-> 전역변수(global)
  yy <- 20
  return(xx*yy)
}
func1()
#yy
result <- func1()
result
xx  # 오류발생(함수 내의 지역변수 이므로)
func1(10) #func1은 인자를 받는 함수가 아니므로 


func2 <- function(x,y) {
  xx <- x
  yy <- y
  return(sum(xx, yy))
}

func2()
func2(5,6) # 식 : 연산식, 호출식, 변수, 리터럴

func3 <- function(x,y) {
  #x3 <- x+1
  #y3 <- y+1
  x4 <- func2(x+1, y+1)  # 값(식) : 변수, 리터럴, 연산식, 호출식
  return(x4)
}

func3(9, 19)  # 30

func4 <- function(x=100, y=200, z) {
  return(x+y+z)
}
func4() #에러
func4(10,20,30)
func4(x=1,y=2,z=3)
func4(y=11,z=22,x=33)
func4(z=1000)  

# 쉬트에 있는 함수 코드(구문보충에 있는 함수코드)
f1 <- function() print("TEST")
f1()
r <- f1()
r
f2 <- function(num) {print("TEST"); print(num) }
f2(100)
f2()
f3<- function (p="R") print(p)
f3()
f3(p="PYTHON")
f3("java")
f4<- function (p1="ㅋㅋㅋ",p2) for(i in 1:p2) print(p1)
f4(p1="abc", p2=3)
f4("abc", 3) 
f4(5) 
f4(p2=5) 
f5<- function(...) { print("TEST"); data <- c(...); print(length(data))}
f5(10, 20, 30)
f5("abc", T, 10, 20)
f6<- function(...) {
  print("수행시작")
  data <- c(...)
  for(item in data) {
    print(item)
  }
  return(length(data))
}
f6()
f6(10)
f6(10,20)
f6(10,20,30)
f6(10,'abc', T, F)

f7<- function(...) {
  data <- c(...)
  sum <- 0;
  for(item in data) {
    if(is.numeric(item))
      sum <- sum + item
    else
      print(item)
  }
  return(sum)
}
f7(10,20,30)
f7(10,20,'test', 30,40) #???? 
#아 밑의 호기심 함수처럼 아규먼트에 하나라도 문자열이 들어가 있으면,
#전부 chr로 인식해버림 그래서 모든 숫자가 따로 print되어서 나오는 것!!!!!

f8<- function(...) {
  data <- list(...) ## point f7과의 차이점점
  sum <- 0;
  for(item in data) {
    if(is.numeric(item))
      sum <- sum + item
    else
      print(item)
  }
  return(sum)
}

f8(10,20,30)
f8(10,20,"test", 30,40)
##################################
hogisim <- function(...){
  daa <- c(...)
  return(str(daa))
}
hogisim(1,"a",3,4,5)
hogisim(1,3,4,5)
##################################




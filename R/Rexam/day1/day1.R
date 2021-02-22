v1 <- 1:10
v2 = 10:1
print(v1)
v2
v3 <- 100
v3
v1 <-c(4, 1, 8, 6, 10) #c() 함수에는 아규먼트를 원하는 만큼 전달가능
v2 <- c(100, 200, TRUE, FALSE); print(v2)
v3 <- c("100", 200, T, F); print(v3) #문자열이 표현하는 범위가 가장 큼.(자동형변환)
v1[5];v1[3];v1[1];v1[0]
length(v3)

rep(1, 100)
rep(1:3, 5)
rep(1:3, times=5) # 키워드 파라미터
rep(1:3, each=5)
?rep  #help()

LETTERS
letters
month.name
month.abb
pi

LETTERS;letters;month.name;month.abb;pi

LETTERS[1]; LETTERS[c(3,4,5)];LETTERS[c(3,5,7,9)]
LETTERS[3:5]; LETTERS[5:3]
LETTERS[-1]; LETTERS[c(-2,-4)]#음의값 인덱스 : '제외하고' 를 의미한다.

length(LETTERS)
length(month.name)
length(pi)


x <- c(10,2,7,4,15)
x
print(x)
class(x)
rev(x) #역순
range(x)
sort(x)
sort(x, decreasing = TRUE)
sort(x, decreasing = T)
#x <- sort(x)
order(x) #인덱스의 값을 정렬해서 보여주는 것. 10이 맨 먼저이므로 인덱스[1] ㅇㅋ?



x[3] <- 20
x
x + 1 # x(2,4,20,10,15) + c(1,1,1,1,1)
x <- x + 1; x
max(x);min(x);mean(x);sum(x)
summary(x)

x[c(2,4)] # x[2], x[4]
x[c(F,T,F,T,F)] # x[c(T,F)] --> x[c(T,F,T,F,T)] ##TRUE원소만 뽑아 보여줌
x > 5
x[x > 5] 
x[x > 5 & x < 15];  #x[x > 5 && x < 15]
#x[x > 5 | x < 15]

names(x)
names(x) <- LETTERS[1:5]
names(x) <- NULL
x[2];x["B"]; #x[B()]


# &, &&
c(T, T, F, F) & c(T, F, T, F)
c(T, T, F, F) | c(T, F, T, F)
c(T, T, F, F) && c(T, F, T, F) #맨 앞의 요소만 비교
c(T, T, F, F) || c(T, F, T, F)


ls()
rm(x) #remove
x
class(x)

rainfall <- c(21.6, 23.6, 45.8, 77.0, 
              102.2, 133.3,327.9, 348.0, 
              137.6, 49.3, 53.0, 24.9)
rainfall > 100
rainfall[rainfall > 100]
which(rainfall > 100)
month.name[which(rainfall > 100)]
month.abb[which(rainfall > 100)]
month.korname <- c("1월","2월","3월",
                   "4월","5월","6월",
                   "7월","8월","9월",
                   "10월","11월","12월")
month.korname[which(rainfall > 100)]
which.max(rainfall)
which.min(rainfall)
month.korname[which.max(rainfall)]
month.korname[which.min(rainfall)]


sample(1:20, 3)
sample(1:45, 6)
sample(1:10, 7)
sample(1:10, 7, replace=T)

paste("I'm","Duli","!!")
paste("I'm","Duli","!!", sep="")
paste0("I'm","Duli","!!")

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("Pie","Juice", "Cake")
paste(fruit, food)

paste(fruit, food, sep="")
paste(fruit, food, sep=":::")
paste(fruit, food, sep="", collapse="-")
paste(fruit, food, sep="", collapse="")
paste(fruit, food, collapse=", ")
 



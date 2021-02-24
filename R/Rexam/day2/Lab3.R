#문제1
iris
str(iris) #150개의 관측치와, 5개의 변수를 가지고 있음

#문제2
df1 <- data.frame(x=c(1:5),y=c(seq(2,10,2)))
df1

#문제3
df2 <- data.frame(col1=c(1:5),col2=c(letters[1:5]),col3=c(6:10))
df2 #위의 화살표 연산자는 함수 밖에서만 사용 가능

#문제4
제품명 <- c("사과","딸기","수박")
가격 <- c(1800, 1500, 3000)
판매량 <- c(24,38,13)
df3 <- data.frame(제품명,가격,판매량)
df3 ; class(df3$제품명) 

#문제5
mean(df3$가격)
mean(df3$판매량)

#문제6
name <- c("Potter","Elsa","Gates","Wendy","Ben")
gender <- factor(c("M","F","M","F","M"))
math <- c(85,76,99,88,40)
(df4 <- data.frame(name,gender,math))
#a
stat <- c(76,73,95,82,35)
df4$stat <- stat
#b
df4$score <- df4$math + df4$stat
#c
df4$grade <- ifelse(df4$score >=150,"A",
                    ifelse(df4$score >= 100,"B",
                             ifelse(df4$score>=70,"C","D")))
df4

#문제7
myemp <- read.csv("C:/git_hub/K_TIL/R/Rexam/data/emp.csv")
str(myemp);summary(myemp) #불러올떄 stringAsfactors로 하면 factor로 불러올수있음

#문제8
myemp[c(3,4,5),]

#문제9
myemp[,-1] #사번 != 4번, ㅋㅋㅋㅋ

#문제10
myemp["ename"]; myemp[2]

#문제11
myemp[c("ename","sal")] #myemp[,c("ename","sal")]

#문제12
myemp[myemp$job=="SALESMAN",c("ename","sal","job")]

#문제13
myemp[myemp$sal>=1000 & myemp$sal <=3000,c("ename","sal","deptno")]

#문제14
myemp[myemp$job != "ANALYST",c("ename","job")]

#문제15 #subset을 이용할 시에 데이터$를 안쓰고 열이름만 써도 조건 가능하다.
subset(myemp,job=="SALESMAN" | myemp$job=="ANALYST",select = c("ename","job"))

#문제16
myemp[is.na(emp$comm),]

#문제17
myemp[order(myemp$sal),]
order(myemp$sal) #order에서 나오는 값을 기준으로 행의 인덱스로 전달 

#문제18
str(myemp)
dim(myemp)#행과 열 갯수만을 보려면 dim을 쓰자.

#문제19
myemp$deptno <- as.factor(myemp$deptno)
summary(myemp$deptno)
sum(summary(myemp$deptno))

#문제20
myemp$job <- as.factor(myemp$job)
summary(myemp$job)
sum(summary(myemp$job))

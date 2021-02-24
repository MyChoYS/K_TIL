#문제1
str(iris)


#문제2
df1 <- data.frame(
  x=c(1:5),
  y=seq(2,10,by=2))
df1

#문제3
df2 <- data.frame(
  col1=c(1:5),
  col2=letters[1:5],
  col3=c(6:10))
df2

#문제4
제품명 = c("사과","딸기","수박")
가격 = c(1800,1500,3000)
판매량 = c(24,38,13)
df3 = data.frame(제품명, 가격, 판매량)
df3
summary(df3)
class(df3$제품명)

#문제5
mean(df3$가격)
mean(df3$판매량)

#문제6
name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)
df4 = data.frame(name, gender, math)
df4
str(df4)
#(a)
stat <- c(76, 73, 95, 82, 35)
df4$stat = stat
df4
#(b)
df4$score = df4$math + df4$stat
df4
#(c)
df4$grade = ifelse(df4$score>=150,"A",
                   ifelse(df4$score>=100,"B",
                          ifelse(df4$score>=70,"C","D")))
df4

#문제7
myemp <- read.csv(file.choose()) # read.csv("data/emp.csv")
str(myemp)

#문제8
myemp[3:5,]

#문제9
myemp[,-1]  # -1?

#문제10
myemp[,"ename"]
myemp$ename
myemp[,2]
myemp[2]
myemp["ename"]

#문제11
myemp[,c("ename","sal")]

#문제12
myemp$job == "SALESMAN"
myemp[myemp$job == "SALESMAN",c("ename","sal","job")]

#문제13
subset(myemp, sal>=1000 & sal<=3000, c("ename","sal","deptno"))

#문제14
subset(myemp, myemp$job != "ANALYST" 
       , select = c("ename", "job", "sal"))

#문제15
subset(myemp, myemp$job=="SALESMAN" | myemp$job=="ANALYST"
       , select = c("ename", "job"))

#문제16
myemp[is.na(myemp$comm),]
myemp[!is.na(myemp$comm),]
subset(myemp,is.na(myemp$comm),c("ename","sal")) # 반대로 함...ㅎㅎ
myemp[is.na(myemp$comm),c("ename","sal")]
#문제17
sort(myemp$sal) # sort(myemp)
order(myemp$sal)
#myemp[c(order(myemp$sal)),]
myemp[order(myemp$sal),]

#문제18
dim(myemp)

#문제19
myemp$deptno = as.factor(myemp$deptno) # factor(myemp$deptno)
str(myemp)
summary(myemp)
summary(myemp$deptno)

#문제20
myemp$job = as.factor(myemp$job)
summary(myemp$job)
















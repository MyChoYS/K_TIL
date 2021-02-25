#문제1
L1 <- list(name="scott",sal=3000)
L1
result1 = L1[[2]]*2

#문제2
L2 <- list("scott",c(100,200,300))
L2

#문제3
L3 <- list(c(3,5,7),c("A","B","C")) 
L3[[2]][1] <- "Alpha"

#문제4
L4 <- list(alpha=0:4,beta=sqrt(1:5),gamma=log(1:5))
L4[[1]] +10 ; L4[['alpha']] + 10 ; L4$alpha + 10

#문제5
L5 <- list(data1=LETTERS[],
           data2=data.frame(read.csv("C:/git_hub/K_TIL/R/Rexam/data/emp.csv")[1:3,]),
           data3=L4)
L5[[1]][1];L5[[2]][[2]];L5[[3]][[3]]
#read.csv("data/emp.csv")

#문제6
L6 <-list(math=list(95,90),writinh=list(90,85),reading=list(85,80))
mean(unlist(L6)) #또는 names(L6) <-NULL; mean(unlist(L6))

#문제7
grade <- sample(1:6,1)
if (grade == 1 | grade == 2 | grade == 3){
  cat(grade,"학년은 저학년입니다.")
}else{
  cat(grade,"학년은 고학년입니다.")
}

switch(EXPR=grade,
       cat(grade,"학년은 저학년입니다."),
       cat(grade,"학년은 저학년입니다."),
       cat(grade,"학년은 저학년입니다."),
       cat(grade,"학년은 고학년입니다."),
       cat(grade,"학년은 고학년입니다."),
       cat(grade,"학년은 고학년입니다."),) #grade를 as.character로 바꿔서 스위치해도 됨

#문제8
choice <- sample(1:5,1)
if(choice == 1){
   300 + 50
}else if(choice == 2){
   300 - 50
}else if(choice == 3){
   cat("결과값 :",300 * 50)
}else if(choice == 4){
   300 / 50
}else{
   300 %% 50 
}

#문제9
count <- sample(3:10,1)
deco <- sample(1:3,1)

if (deco == 1){
  for (i in 1:count)
    cat("*") #cat은 자동개행처리 되지 않는다.
}else if(deco == 2){
  for (i in 1:count)
    cat("$")
}else{
  for (i in 1:count)
    cat("#")
}
#rep,반복 활용용
if (deco == 1){
   rep("*",count)
}else if(deco == 2){
  rep("$",count)
}else{
  rep("#",count)
}

#문제10 (switch)
score <- sample(0:100,1)
if (score >=90 ){
  score1 = 1
}else if(score >=80) {
  score1 = 2
}else if(score >=70) {
  score1 = 3
}else if(score >=60) {
  score1 = 4
}else{
  score1 = 5
}
level <- switch(EXPR=score1, "A","B","C","D","F")
cat(score,"점은 ",level,"등급입니다",sep="")

score <- sample(0:100,1)
score1 <- score %/% 10
level <- switch (EXPR=as.character(score1),
                "10"=,"9"="A등급",
                "8"="b등급",
                "7"="c등급",
                "6"="d등급",
                "F등급") #나머지 전부 f등급
cat(score,"점은 ",level,"입니다\n",sep="")


#문제11
alpha <- list(LETTERS,letters)
paste(unlist(alpha[1]),unlist(alpha[2]))

alpha <- paste(LETTERS,letters,sep="") #paste0 는 처음부터 공백 제거된 상태로 붙음
alpha

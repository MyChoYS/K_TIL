# 문제1
L1<-list(
  name = "scott",
  sal = 3000
)
L1
L1$result1 <- L1[["sal"]] * 2
L1

L1$sal * 2 -> result1
result1

# 문제2
L2<-list(
  "scott",
   seq(100,300, by=100)
)
L2

# 문제3

L3 <- list(c(3,5,7), c('A', 'B', 'C'))
L3
L3[[2]][[1]] <- "Alpha"
L3

# 문제4
L4 <- list(alpha=0:4, beta=sqrt(1:5), gamma=log(1:5))
L4[[1]] + 10
L4[['alpha']] + 10
L4$alpha +10



# 문제5
L5 <- list(data1 = LETTERS, data2 = emp[1:3,], data3=L4)
L5
L5[[1]][1]
L5[[2]]$ename; L5$data2$ename
L5[[3]][[3]]

# 문제6
L6 <- list(math=list(95, 90), writing=list(90, 85), reading=list(85, 80))
L6
mean(unlist(L6))
#또는
names(L6) <- NULL
mean(unlist(L6))

L6 <- list(math=list(95, 90), writing=list(90, 85), reading=list(85, 80))
mean(unlist(L6))

avg <- 0
for (i in 1:3) {
  avg <- 0
  for (j in 1:2) {
    print(unlist(L6[[i]])[j])
    avg <- avg + unlist(L6[[i]])[j]
  }
  print(avg)
}

(unlist(L6$math)[1] + unlist(L6$writing)[1] + unlist(L6$reading)[1])/3
(unlist(L6$math)[2] + unlist(L6$writing)[2] + unlist(L6$reading)[2])/3


# 문제7
grade <- sample(1:6,1)
if(grade==1 | grade==2 | grade==3){
  cat(grade,"학년은 저학년입니다.","\n")
}else{
  cat(grade,"학년은 고학년입니다.","\n")
}
if(grade==1 || grade==2 || grade==3){
  cat(grade,"학년은 저학년입니다.","\n")
}else{
  cat(grade,"학년은 고학년입니다.","\n")
}


grade <- sample(1:6, 1)
switch (EXPR = grade,
        cat(grade, "학년은 저학년입니다."),
        cat(grade, "학년은 저학년입니다."),
        cat(grade, "학년은 저학년입니다."),
        cat(grade, "학년은 고학년입니다."),
        cat(grade, "학년은 고학년입니다."),
        cat(grade, "학년은 고학년입니다.")
)

grade <- as.character(sample(1:6, 1))
switch (EXPR = grade,
        "1"=, "2"=, "3"=cat(grade, "학년은 저학년입니다."),
        "4"=, "5"=, "6"=cat(grade, "학년은 고학년입니다."),
)

# 문제8
choice <- sample(1:5,1)
if(choice==1){
  msg = (300 + 50)
}else if (choice==2){
  msg = (300 - 50)
}else if (choice==3){
  msg = (300 * 50)
}else if (choice==4){
  msg = (300 / 50)
}else {
  msg = (300 %% 50)
}
cat("결과값 :" , msg)

(choice = sample(1:5, 1))

if (choice == 1){
  cat("결과값",":",300+50)
}else if (choice == 2){
  cat("결과값",":",300-50)
}else if (choice == 3){
  cat("결과값",":",300*50)
}else if (choice == 4){
  cat("결과값",":",300/50)
}else {
  cat("결과값",":",300%%50)
}

choice <- sample(1:5, 1)
switch(EXPR = choice,
       cat(choice, "\n", "결과값 :", 300 + 50, sep = ""),
       cat(choice, "\n", "결과값 :", 300 - 50, sep = ""),
       cat(choice, "\n", "결과값 :", 300 * 50, sep = ""),
       cat(choice, "\n", "결과값 :", 300 / 50, sep = ""),
       cat(choice, "\n", "결과값 : ", 300 %% 50, sep = ""),
)

# 문제9
count <- sample(3:10,1)
deco <- sample(1:3,1)
if(deco==1){
  cat(rep("*",count),"\n")
}else if (deco==2){
  cat(rep("$",count),"\n")
}else {
  cat(rep("#",count),"\n")
}

if (deco==1){
  for(i in 1:count)
    cat("*")
}else if (deco==2) {
  for(i in 1:count)
    cat("$")
}else{
  for(i in 1:count)
    cat("#")
}

(count = sample(3:10,1))
(deco = sample(1:3,1))

if(deco == 1){
  rep("*",count)
}else if(deco == 2){
  rep("$",count)
}else {
  rep("#",count)
} 

if(deco == 1){
  r = rep("*",count)
}else if(deco == 2){
  r = rep("$",count)
}else {
  r = rep("#",count)
}
print(r)

if(deco == 1){
  10+20
}else if(deco == 2){
  10*20
}else {
  10-20
}

count <- sample(3:10, 1)
deco <- sample(1:3, 1)
idx = 1
while (idx <= count) {
  switch(EXPR = deco,
         cat("*"),
         cat("$"),
         cat("#")
  )
  idx <- idx + 1
}



# 문제10
score <- sample(0:100,1)
if(score>=90){
  level = "A 등급"
}else if (score>=80){
  level = "B 등급"
}else if (score>=70){
  level = "C 등급"
}else if (score>=60){
  level = "D 등급"
}else {
  level = "F 등급"
}
cat(score, " 점은 " , level, "입니다.", sep="")


score <- sample(0:100,1)
score 
if(score%/%10 >= 9){
  score1 <- paste(score%/%10,"점",sep="") # python, javascript의 + 연산자 역할
}else if(score%/%10 == 8){
  score1 <- paste(score%/%10,"점",sep="")
}else if(score%/%10 == 7){
  score1 <- paste(score%/%10,"점",sep="")
}else if(score%/%10 == 6){
  score1 <- paste(score%/%10,"점",sep="")
}else {
  score1 <- paste(score%/%10,"점",sep="")
}
score1
level <- switch(EXPR = score1,"10점"=,"9점"="A","8점"="B","7점"="C","6점"="D","F")
cat(score," 점은 ",level,"등급입니다",sep="")


(score <- sample(0:100,1))
(score <- paste(score,"점",sep=""))
level <- switch(EXPR=score, 
                "90점"=,"91점"=,"92점"=,"93점"=,"94점"=,"95점"=,"96점"=,"97점"=,"98점"=,"99점"=,"100점"="A등급",
                "80점"=,"81점"=,"82점"=,"83점"=,"84점"=,"85점"=,"86점"=,"87점"=,"88점"=,"89점"="B등급",
                "70점"=,"71점"=,"72점"=,"73점"=,"74점"=,"75점"=,"76점"=,"77점"=,"78점"=,"79점"="C등급",
                "60점"=,"61점"=,"62점"=,"63점"=,"64점"=,"65점"=,"66점"=,"67점"=,"68점"=,"69점"="D등급",
                "F등급")
cat(score,"은 ",level,"입니다\n",sep="")

score <- as.character(sample(0:100, 1))
level <- switch (EXPR = score,
                 "90" =, "91" =, "92" =, "93" =, "94" =, "95" =,
                 "96" =, "97" =, "98" =, "99" = , "100" = "A 등급",
                 "80" =, "81" =, "82" =, "83" =, "84" =, "85" =,
                 "86" =, "87" =, "88" =, "89" = "B 등급",
                 "70" =, "71" =, "72" =, "73" =, "74" =, "75" =,
                 "76" =, "77" =, "78" =, "79" = "C 등급",
                 "60" =, "61" =, "62" =, "63" =, "64" =, "65" =,
                 "66" =, "67" =, "68" =, "69" = "D 등급",
                 "F 등급"
)
cat(score, " 점은 ", level, "입니다.", sep = "")



score <- sample(0:100,1)
score 
score <- score %/% 10
level <- switch(EXPR=as.character(score), 
                "10"=, "9"="A등급",
                "8"="B등급",
                "7"="C등급",
                "6"="D등급",
                "F등급")
cat(score,"은 ",level,"입니다\n",sep="")

# 문제11
alpha <- paste0(LETTERS, letters)
alpha


Alpha <- LETTERS
alpha <- letters

paste(Alpha,alpha,sep="")


print(paste(LETTERS, letters, sep = ""))


alpha <- for(i in 1:24){cat(LETTERS[i],letters[i], sep = "", "\t")}


(a1 = LETTERS)
(a2 = letters)
paste(a1,a2,sep = "")


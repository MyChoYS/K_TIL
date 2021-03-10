# CASE 1
# tm 패키지에서 제공되는 DocumentTermMatrix() 와 proxy 패키지를 dist() 등을 이용하여 
# 사과 포도 망고 자몽 귤 오렌지 바나나 복숭아 자두

library(tm)
library(proxy)

duke <- c("사과 포도 망고")
dooly <- c("포도 자몽 자두")
ddochi <- c("복숭아 사과 포도")
douner <- c("오렌지 바나나 복숭아")
gildong <- c("포도 바나나 망고")
heedong <- c("포도 귤 오렌지")

fruit <- c(duke,dooly,ddochi,douner,gildong,heedong)


# (1) 좋아하는 과일이 가장 유사한 친구
cps <- VCorpus(VectorSource(fruit))
dtm <- DocumentTermMatrix(cps, control=list(wordLengths = c(1, Inf)))

(m <- as.matrix(dtm))
rownames(m) <- c("듀크", "둘리", "또치", "도우너", "길동", "희동")
com <- m %*% t(m)
com

## 코사인
r <- dist(com, method = "cosine", diag=T, upper=T)
r <- dist(com, method = "cosine")
s <- as.matrix(r)

## 유클리드
dist(com, method = "Euclidean")

print("duke와 ddochi/ duke와 gildong학생이 가장 유사하다")


# (2) 학생들에게 가장 많이 선택된 과일
cps <- VCorpus(VectorSource(fruit))
tdm <- TermDocumentMatrix(cps,control=list(wordLengths = c(1, Inf)))

tdm
summary <- as.matrix(tdm)
(most <- sort(rowSums(summary), decreasing=T))

names(which.max(most))
# order(rowSums(summary))

# (3) 학생들에게 가장 적게 선택된 과일
names(which.min(most))   # 자두와 자몽은 왜 안나오는지
names(which(most==1))

?which.min

# CASE 2

library(tm)
library(proxy)

fruits <- NULL
듀크 <- c("사과 포도 망고")
둘리 <- c("포도 자몽 자두")
또치 <- c("복숭아 사과 포도")
도우너 <- c("오렌지 바나나 복숭아")
길동 <- c("포도 바나나 망고")
희동 <- c("포도 귤 오렌지")
fruits <- c(듀크, 둘리, 또치, 도우너, 길동, 희동)

cps <- VCorpus(VectorSource(fruits))
dtm <- DocumentTermMatrix(cps, control=list(wordLengths = c(1, Inf)))
as.matrix(dtm)
inspect(dtm)
m <- as.matrix(dtm)


# (1) 좋아하는 과일이 가장 유사한 친구들을 찾아본다.
com <- m %*% t(m)
dist(com, method = "cosine")
# 듀크와 또치, 듀크와 길동이 동등하게 유사하다.



# (2) 학생들에게 가장 많이 선택된 과일을 찾아본다.
sort(colSums(m), decreasing=T)
# 포도가 5회로 가장 많이 선택되었다.



# (3) 학생들에게 가장 적게 선택된 과일을 찾아본다.
sort(colSums(m))
# 귤, 자두, 자몽이 각각 1회로 가장 적게 선택되었다.

# CASE 3

duke <- c("사과 포도 망고")
dl <- c("포도 자몽 자두")
ddc <- c("복숭아 사과 포도")
don <- c("오렌지 바나나 복숭아")
gd <- c("포도 바나나 망고")
hd <- c("포도 귤 오렌지")

fruit <- c(duke, dl, ddc, don, gd, hd )

cps <- VCorpus(VectorSource(fruit))
dtm <- TermDocumentMatrix(cps,control=list(wordLengths = c(1, Inf)))
as.matrix(dtm)
inspect(dtm)
m <- as.matrix(dtm)
com <- m %*% t(m) 
com


# 좋아하는 과일이 가장 유사한 친구들을 찾아본다.
dist(com, method = "cosine") 

# CASE 4

fruit <- NULL

듀크 <- c('사과 포도 망고')
둘리 <- c('포도 자몽 자두')
또치 <- c('복숭아 사과 포도')
도우너 <- c('오렌지 바나나 복숭아')
길동 <- c('포도 바나나 망고')
희동 <- c('포도 귤 오렌지')
fruit <- c(듀크, 둘리, 또치, 도우너, 길동, 희동)

cps <- VCorpus(VectorSource(fruit))
dtm <- DocumentTermMatrix(cps,
                          control=list(wordLengths = c(1, Inf)))

m <- as.matrix(dtm)
m
com <- m %*% t(m)
com

dist(com, method = 'cosine')

#좋아하는 과일이 가장 유사한 친구 : 듀크랑 또치, 듀크랑 길동
#가장 많이 선택된 과일 : 포도
#가장 적게 선택된 과일 : 귤, 자두, 자몽  
colSums(m)






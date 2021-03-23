library(tm)
library(proxy)
getSources()

menu <- c("사과","포도","망고","자몽","귤","오렌지","바나나","복숭아","자두")

stu <- c(듀크="사과 포도 망고",둘리="포도 자몽 자두",또치="복숭아 사과 포도",도우너="오렌지 바나나 복숭아",
           길동="포도 바나나 망고",희동="포도 귤 오렌지")

vcps <- VCorpus(VectorSource(stu))
tdm <- TermDocumentMatrix(vcps, control = list(wordLengths = c(1,Inf)))
m <- as.matrix(tdm)
t(m)

#좋아하는 과일이 가장 유사한 친구들 (또치 & 듀크, 길동 & 듀크)
cps <- VCorpus(VectorSource(stu)) 
dtm <- DocumentTermMatrix(cps, control = list(wordLengths = c(1,Inf))) #TermDtm <> 일반Dtm 열과 행이 달라짐 
m2 <- as.matrix(dtm)
m2 #과일 이름 오류  VCorpus로 해야 한글 처리 가능
t(m2)

com <- m2 %*% t(m2)
com

com

 dist(com,method = "cosine") #코사인 거리 = 1-코사인 유사도(코사인유사도가 1에 가까울수록 유사도가 높음) 
which.min(dist(com,method = "cosine"))
dist(com,method = "Euclidean") #유클리드 거리 (제일 작을 수록) 
com[2]
#가장 많이 선택된 과일 = 포도 -> 5
most <- sort(rowSums(m), decreasing = T)
most <-names(many[1])
most
#가장 적게 선택된 과일 = 자두, 자몽, 귤 -> 1
least<- sort(rowSums(m))
lesat <-names(least[1])
lesat

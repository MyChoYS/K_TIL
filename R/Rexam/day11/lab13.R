#yes24 댓글 추출 
library(KoNLP)
yes24 <- scan("output/yes24.txt", what="",encoding="UTF-8")
yes24 <- unlist(extractNoun(yes24)) #명사추출

yesword <- gsub("[^가-힣]", "", yes24) #한글만  ## 명사추출 후에 한글만 남겨야 한다 or [^가-힣[:space:]] 사용
yesword <-  Filter(function(x) {nchar(x) >= 2 & nchar(x) <=4 }, yesword)

count <- table(yesword)
count <- sort(count,decreasing = T)

df <- data.frame(count)

#워드클라우드
result <- wordcloud2(df, fontFamily = "THE개이득")
htmltools::save_html(result,"output/yes24.html")

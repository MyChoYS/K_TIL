#문제1
v1 <- c("Happy","Birthday","to","you")
length(v1)+sum(nchar(v1))
str_count()

#문제2
v2 <- paste(v1[1],v1[2],v1[3],v1[4])
length(v2) + nchar(v2)

#문제3
paste(LETTERS,1:10)
paste(LETTERS,1:10,sep = "")

#문제4
v4 <- "Good Morning"
v4 <- list(strsplit(v4," ")[[1]][1],strsplit(v4," ")[[1]][2])

library (stringr) ###
str_sub(v4,1,4)


#문제5
v5 <- c("Yesterday is histroy, tommrrow is a mystery, today is a gift!",
        "That's why we call it the present - from kung fu panda")
v5 <- gsub("[[:punct:]]","",v5)
v5 <- unlist(strsplit(v5," "))
v5

#문제6
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."

r1 <- gsub("[가-힣]", "", s1)
r2 <- gsub("[[:punct:]]","",s1)
r3 <- gsub("[[:punct:]가-힣]","",s1)
r4 <- gsub("100","백",s1)

#문제7*****
library(KoNLP)
hotel1 <- scan("output/hotel.txt", what="")
#Filter(function(x) {nchar(x) >= 2}, hotel2) 단어 두글자 이상으로 제한 
hotel2<- Filter(function(x) {nchar(x) >= 2}, gsub("[[:cntrl:][:punct:]]","",unlist(extractNoun(hotel1))))
wcount <- sort(table(hotel2),decreasing = T)[1:10]
df <- data.frame(wcount )
colnames(df) <- c("wname","wcount")
View(df)
write.csv(df,file = "output/hotel_top_word.csv")







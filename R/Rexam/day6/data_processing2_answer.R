#문제2
#1
memo <- readLines("data/memo.txt",encoding="UTF-8") #행 단위 불러오기
memo[1] <- gsub("[[:punct:]]", "", memo[1]) #특수문자 제거
memo[1]

#2
memo[2] <- gsub("e","E",memo[2]) #문자 교체
memo[2]

#3
memo[3] <- gsub("[[:digit:]]","",memo[3]) #숫자제거
memo[3]

#4
memo[4] <- gsub("[a-z]","",memo[4]) #알파벳 제거
memo[4] <- gsub("[A-Z]","",memo[4])
memo[4]

memo[4] <- gsub("[a-zA-Z]","",memo[4])

#5
memo[5] <- gsub("[[:punct:][:digit:]]", "", memo[5]) #특수문자, 숫자 제거
memo[5]

#6
memo[6] <- gsub("[[:space:]]","",memo[6]) #공백 제거
memo[6]

#7
memo[7] <- gsub("[A-Z]","[a-z]",memo[7]) # 안됨!!
memo[7]
memo

memo[7] <-gsub("YOU", "you", memo[7])
memo[7] <-gsub("OK", "ok", memo[7])

write(memo,file="memo_new.txt")

#문제2
memo <- readLines("data/memo.txt",encoding="UTF-8")
memo[1]
gsub("[&$!#@%]", "", memo[1]) -> L1

memo[2]
gsub("e", "E", memo[2]) -> L2

memo[3]
gsub("[[:digit:]]", "", memo[3]) -> L3

memo[4]
gsub("[A-z]", "", memo[4]) -> L4

memo[5]
gsub("[0-9!<>]", "", memo[5]) -> L5

memo[6]
gsub("[[:space:]]", "", memo[6]) -> L6

memo[7]
gsub(".  ", ". ", memo[7]) -> L7

memo_new = c(L1, L2, L3, L4, L5, L6, L7)


write(memo_new,file="output/memo_new.txt")

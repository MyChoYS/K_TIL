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
memo[4] <- gsub("[a-z]","",memo[4]) #알파벳 제거 #[A-z] 하면 한방에 된다 
memo[4] <- gsub("[A-Z]","",memo[4]) #[[a-zA-Z]]로해도됨
memo[4]

#5
memo[5] <- gsub("[[:punct:][:digit:]]", "", memo[5]) #특수문자, 숫자 제거
memo[5]

#6
memo[6] <- gsub("[[:space:]]","",memo[5]) #공백 제거
memo[6]

#7
memo[7] <- tolower(memo[7]) #소문자 대문자로 교체 
memo[7] 
memo

write(memo,file="memo_new.txt") #.txt파일로 저장,내보내기 

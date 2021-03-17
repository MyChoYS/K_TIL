library(psych)
library(dplyr)

pur <- read.csv("data/purifier.csv",header = T)
#purifier - 전월 정수기 총 대여수 
#old-purifier - 전월 10년 이상 노후 정수기 총 대여수 
#as_time - 당월 as 소요 시간
#기사 한명 = 20*8 = 160시간 처리 

pur %>% mutate(new_purifier = purifier - old_purifier, wor=as_time/160 ) -> pur 
cor(pur)

pur.lm <- lm(as_time ~ new_purifier + old_purifier, data = pur)
summary(pur.lm) 
sum(pur.lm$residuals)

cat(predict(pur.lm,newdata=data.frame(new_purifier=170936, old_purifier=45439))/160,"명 필요")
#ceiling 으로 반올림 ! 
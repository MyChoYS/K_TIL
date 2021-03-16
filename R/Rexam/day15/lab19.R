library(fmsb)
library(dplyr)
#2017년 유희관 선수의 성적 방사형 차트 
pit <- read.csv("data/picher_stats_2017.csv", header = T,encoding = "UTF-8")
pit %>% filter(이닝 >= 100) -> pit #100이닝 이상 뛴 투수들만 포함 
pit %>% filter(선수명 == "유희관") -> player
pit$삼진.9

stat <- c(player$삼진.9, player$볼넷.9,player$홈런.9,player$WAR) #select를 사용했어도 좋았다 
max.score <- c(max(pit$삼진.9),max(pit$볼넷.9),max(pit$홈런.9) ,max(pit$WAR))          
min.score <-  c(min(pit$삼진.9),min(pit$볼넷.9),min(pit$홈런.9) ,min(pit$WAR))   

ds <- rbind(max.score,min.score, stat)
ds <- data.frame(ds)             # 매트릭스를 데이터프레임으로 변환  
colnames(ds) <- c('삼진','볼넷','홈런','WAR')
ds

#방사형차트
radarchart(ds,
           pfcol=rgb(0.2,0.5,0.5,0.5),   # 다각형 내부 색
           plwd=3,                       # 다각형 선의 두께
           cglcol='grey',                # 거미줄의 색
           cglty=1,                      # 거미줄의 타입
           cglwd=0.8,                    # 거미줄의 두께
           axistype=1,                   # 축의 레이블 타입
           seg=4,                        # 축의 눈금 분할                         
           axislabcol='grey',            # 축의 레이블 색
           caxislabels=seq(0,100,25),    # 축의 레이블 값 
           title = "유희관 선수의 성적",
           )
?radarchart

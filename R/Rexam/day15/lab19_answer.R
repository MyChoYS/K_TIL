library(dplyr)
library(fmsb)

picher <- read.csv(file = "data/picher_stats_2017.csv", encoding = "UTF-8")
str(picher)
head(picher)
picher <- picher %>%
  select("선수명", "삼진" = "삼진.9", "볼넷" = "볼넷.9", "홈런" = "홈런.9")
head(picher)

summary(picher)
max.picher <- c(25, 20, 10)
min.picher <- c(0, 0, 0)

picher_차우찬 <- picher[4,-1]
row.names(picher_차우찬) <- "차우찬"
picher_차우찬

ds <- rbind(max.picher, min.picher, picher_차우찬)
ds
str(ds)

png(filename = "output/lab19.png")
radarchart(ds,                           # 데이터프레임
           pcol='dark blue',             # 다각형 선의 색 
           pfcol=rgb(0.5, 0.5, 1, 0.5),  # 다각형 내부 색
           plwd=3,                       # 다각형 선의 두께
           cglcol='grey',                # 거미줄의 색
           cglty=1,                      # 거미줄의 타입
           cglwd=0.8,                    # 거미줄의 두께
           axistype=1,                   # 축의 레이블 타입
           seg=4,                        # 축의 눈금 분할                         
           axislabcol='grey',            # 축의 레이블 색
           caxislabels=seq(0,100,25),     # 축의 레이블 값
           title = paste(row.names(ds[3,]), "선수의 성적")
)
dev.off()


ps <- read.csv("data/picher_stats_2017.csv", encoding="UTF-8")
View(ps)

max.삼진 <- max(ps$삼진.9)
max.볼넷 <- max(ps$볼넷.9)
max.홈런 <- max(ps$홈런.9)
(max.score <- c(max.삼진, max.볼넷, max.홈런))
(min.score <- c(0, 0, 0))


data <- ps[ps$선수명=="켈리", c("삼진.9", "볼넷.9", "홈런.9")]
names(data) <- c("삼진", "볼넷", "홈런")
df <- rbind(max.score, min.score, data)
(df <- data.frame(df))
radarchart(df)
radarchart(df,                         
           pcol='red',           
           pfcol=rgb(0.5,0.2,0.2,0.3),   
           plwd=3,                       
           cglcol='grey',                
           cglty=1,                      
           cglwd=0.8,                    
           axistype=1,                  
           seg=4,                                                 
           axislabcol='grey',           
           caxislabels=seq(0,100,25),    
           title="캘리 선수의 성적"
)

dev.copy(png, "output/lab19.png")
dev.off()

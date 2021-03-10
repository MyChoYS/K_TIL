#1
library(showtext)
showtext_auto()
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")

products <- read.table("data/product_click.log",header = FALSE)
products[[2]]

plevel <- factor(products[[2]])
plevel
plot(plevel, col = terrain.colors(10),family = "maple")
title(main="세로바 그래프 실습", col.main="red", family = "maple")
title(xlab="상품ID", col.lab="black",font.main=2, family = "maple")
title(ylab="클릭수", col.lab="black",font.main=2, family = "maple")

dev.copy(png,"output/clicklog1.png")
dev.off()

#2
library(stringr)
c = "dog"
c<-strsplit(c,"")
c[[1]][3]
times <- products[[1]]
times <- as.character(times)
times <-substr(times,9,10)
ptime <- table(factor(times)) ##table 
pie(ptime,family = "maple", col = rainbow(17),labels=paste(names(ptime), "~", as.numeric(names(ptime))+1))
title(main="파이그래프 실습", col.main="blue", family = "maple")

dev.copy(png,"output/clicklog2.png")
dev.off()

#3
성적 <- read.table("data/성적.txt", header=TRUE)
성적$성명 <- c("길동","둘리","또치","도우너","희동","듀크","택시","토토로","올라프","우디")

성적<-성적[,3:5]
boxplot(성적,col=rainbow(3),ylim=c(2,10),family = "maple")
title(main="과목별 성적 분포", col.main="orange", family = "maple", )

dev.copy(png,"output/clicklog3.png")
dev.off()

#4
성적 <- read.table("data/성적.txt", header=TRUE)
성적$성명 <- c("길동","둘리","또치","도우너","희동","듀크","택시","토토로","올라프","우디")
성적1<- 성적[3:5]
xname <- 성적$성명
barplot(t(성적1),col=c('orange','blue','pink'),beside=FALSE,
        names.arg=xname)
title(main="학생별 점수", col.main="pink", family = "maple", )
legend(10.5,25, names(성적1), cex=0.9, fill=c('orange','blue','pink')); #범례
box()

dev.copy(png,"output/clicklog4.png")
dev.off()

#5 전체사진 
par(mfrow=c(2,2))
dev.copy(png,"output/clicklog5.png")
dev.off()

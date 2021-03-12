library(dplyr)
library(ggplot2)
#문제1
mpg
ggplot(mpg,aes(cty, hwy)) + geom_point(color = "blue")
dev.copy(png,"output/result1.png")
dev.off()

#문제2
ggplot(mpg,aes(class,fill=drv)) + geom_bar()
dev.copy(png,"output/result2.png")
dev.off()

#문제3
products <- read.table("data/product_click.log")
products
ggplot(products,aes(V2,fill=V2)) + geom_bar()

dev.copy(png,"output/result3.png")
dev.off()

#문제4
products
products %>% mutate(weekday = weekdays(as.POSIXlt(as.Date(as.character(V1),"%Y%m%d")))) ->products
ggplot(products,aes(weekday,fill=weekday)) + geom_bar() + labs(x="요일", y="클릭수") +theme_linedraw()

dev.copy(png,"output/result4.png")
dev.off()

#문제5
library(showtext)
showtext_auto() #폰트등록 
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")
data(GNI2014)
View(GNI2014)
treemap(GNI2014, vSize="population", index=c("continent","iso3"), 
        title="전세계 인구 정보", fontfamily.title="maple", fontfamily.labels="maple", fontsize.title = 20,border.col="green")

dev.copy(png,"output/result5.png")
dev.off()





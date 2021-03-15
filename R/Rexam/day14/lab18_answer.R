library(ggplot2)
library(dplyr)

mpg
# 문제 1
ggplot(mpg, aes(x = cty, y = hwy)) + geom_point(colour = "blue")
ggsave("output/result1.png")


# 문제 2
ggplot(mpg, aes(x = class)) + geom_bar(aes(fill=drv))
ggsave("output/result2.png")


# 문제 3
g1 <- read.table("data/product_click.log")
head(g1)
ggplot(g1, aes(x = V2)) + geom_bar(aes(fill=V2))
ggsave("output/result3.png")

log <- read.table("data/product_click.log")
log %>% rename(count=V1)
head(log)
ggplot(data=log, aes(x=V2, y=count)) + geom_col(aes(fill=V2)) 
ggsave("output/result3.png") 


# 문제 4
str(g1$V1)
g1$V1 <- substr(g1$V1, 1, 8)
g1$V1 <- as.Date(g1$V1, format = "%Y%m%d")
str(g1$V1)
head(g1)
g1 <- g1 %>% mutate(day = paste0(format(V1, "%a"),"요일"))
ggplot(g1, aes(x = day)) + geom_bar(aes(fill=day)) + labs(x = "요일", y = "클릭수") + theme_light()
ggsave("output/result4.png")


g1$V1 <- substr(g1$V1, 1, 8)
g1$V1 <- as.Date(g1$V1, format = "%Y%m%d")
g1 <- g1 %>% mutate(day = format(V1, "%A"))
head(g1)
ggplot(g1, aes(x = day)) + geom_bar(aes(fill=day)) + labs(x = "요일", y = "클릭수") + theme_light()


new_log <- log
new_log$V1 <- substring(new_log$V1,1,8)
new_log$V1 <- as.Date(new_log$V1, format = '%Y%m%d')
new_log <- new_log %>% mutate(day = weekdays(V1))
summary <- new_log %>% group_by(day) %>% summarise(count=n()) %>% rename(요일=day,클릭수=count)
head(summary)
ggplot(summary, aes(x=요일, y= 클릭수)) + geom_col(aes(fill=요일)) + theme_light()



pcl <- read.table("data/product_click.log")
pcl_new <- pcl %>% 
        mutate(day=weekdays(strptime(pcl$V1,format='%Y%m%d%H%M')))
head(pcl_new)
ggplot(pcl_new, aes(x=day)) + 
        geom_bar(aes(fill=day)) +
        labs(x="요일", y="클릭수") +
        coord_cartesian(ylim=c(0, 200))
ggsave("output/result4.png", width=3, height=3)


# 문제 5
library(showtext)
showtext_auto()
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")

library(treemap)
data(GNI2014)
head(GNI2014)
?treemap
png(filename = "output/result5.png", height = 400, width = 600)
treemap(GNI2014, vSize="population",
        index=c("continent", "country"),
        title="전세계 인구 정보",
        fontfamily.title="maple",
        fontsize.title = 20,
        fontfamily.labels="maple",
        border.col = "green")


dev.off()

treemap(GNI2014, vSize="population",
        index=c("continent", "iso3"),
        title="전세계 인구 정보",
        fontfamily.title="maple",
        fontsize.title = 20,
        fontfamily.labels="maple",
        border.col = "green")



# 이전 시각화 실습 복습

pdata <- read.table("data/product_click.log")
names(pdata) <- c("clicktime", "pid")
str(pdata)

data3 <- pdata$clicktime
data3_hour <- substr(data3, 9, 10)
table_data3 <- table(data3_hour)
length(table_data3)
names(table_data3)

piename <- paste(as.integer(names(table_data3)), "~",as.integer(names(table_data3)) +1, sep='')
names(table_data3) <- piename
pie(table_data3, main="파이그래프 실습", col=rainbow(17), family="maple", cex.main=2.0, col.main="blue")

clicktime <- as.POSIXlt(as.character(pdata$clicktime),format="%Y%m%d%H%M")
clickhour <- format(clicktime, "%H")
table_data3 <- table(clickhour)
names(table_data3)
piename <- paste(as.integer(names(table_data3)), "~",as.integer(names(table_data3)) +1, sep='')
names(table_data3) <- piename
pie(table_data3, main="파이그래프 실습",  col=rainbow(17), family="maple", cex.main=2.0, col.main="green")


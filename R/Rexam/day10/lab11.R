#동적 데이터 수집 - 2
library(RSelenium)
library(httr)
remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()
remDr$navigate("http://gs25.gsretail.com/gscvs/ko/products/event-goods")

oldlist <- data.frame(품명=1,가격=1)
list_two <- NULL
#2+1행사  클릭
twoone <- remDr$findElement(using = "css selector","#TWO_TO_ONE")
twoone$clickElement()

repeat{
Sys.sleep(2)
#품명 
names <- remDr$findElements(using = "css selector","#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.tit")
names <- unlist(sapply(names,function(x) x$getElementText()))
Sys.sleep(2)
#가격
prices <- remDr$findElements(using = "css selector","#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.price > span")
prices <- unlist(sapply(prices,function(x) x$getElementText()))
Sys.sleep(2)
#데이터프레임화
list <- data.frame(품명=names,가격=prices)

#수집된 데이터가 그 전의 데이터와 같은지 비교 후에 데이터프레임 추가 
fal<-oldlist$품명 == list$품명
if (fal[1]){
  cat("수집종료")
  break;
}
oldlist <- list
Sys.sleep(1)
list_two <- rbind(list_two,list)
Sys.sleep(2)

#next 클릭  발생
gonext <- remDr$findElement(using = "css selector","#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > div > a.next")
gonext$clickElement()
Sys.sleep(1)
}
View(list_two)
write.csv(list_two,file = "output/gs25_twotoone.csv")

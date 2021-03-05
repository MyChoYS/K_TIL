# 네이버 호텔 신라스테이 역삼 모든 댓글 추출 
library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()
remDr$navigate("https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2")
reple <- NULL
pagenum <- NULL
oldpagenum <- 1
stoppagenum <- 1

repeat{
 #1개만 찾을거면 굳이 Elements말고 Element 쓰는게 간-단, Element 사용했으면 sapply가 필요 없다. 
doms <- remDr$findElements(using = "css selector", "body > div > div > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > ul > li > div.review_desc > p")
reple_v <- sapply(doms, function (x) {x$getElementText()}) #현페이지 댓글 받아오기 
Sys.sleep(1)
reple <- append(reple, unlist(reple_v))
Sys.sleep(1)
pageLink <- remDr$findElements(using='css selector',"body > div > div > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > a.direction.next ")
remDr$executeScript("arguments[0].click();",pageLink) #다음페이지 누르기
Sys.sleep(1)

#페이지 넘어가고 페이지가 끝인지 비교하여 진행 or 중단 
oldpagenum <- oldpagenum + 1
stoppagenum <- remDr$findElements(using = "css selector","body > div > div > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > span:nth-child(6) > a")
stoppagenum <- unlist(sapply(stoppagenum, function (x) {x$getElementText()}))

if (stoppagenum == ""){ #맨마지막 일 때는 css선택자가 a에서 strong 변함 그래서 stoppagenum이 ""가 되어버림 
  stoppagenum <- remDr$findElements(using = "css selector","body > div > div > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > span:nth-child(6) > strong")
  stoppagenum <- unlist(sapply(stoppagenum, function (x) {x$getElementText()}))
}

if (oldpagenum > as.numeric(stoppagenum)){
  cat("종료")
  break;
}
}
reple
write(reple,file = "output/naverhotel.txt")

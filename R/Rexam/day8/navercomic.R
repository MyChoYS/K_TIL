#정적크롤링 수행평가 - 조용상
library(rvest)
library(XML)
library(httr)
web.review <- NULL
for (i in 1:20){
  html <- read_html(paste0("https://comic.naver.com/genre/bestChallenge.nhn?&page=",i))
  comicName <- html_text(html_nodes(html, "h6.challengeTitle"),trim = T)
  comicSummary <- html_text(html_nodes(html, "div.summary"))
  comicGrade <- html_text(html_nodes(html, "div.rating_type > strong"))
  
  page <- data.frame(comicName, comicSummary, comicGrade) #한 페이지의 내용 데이터프레임화 
  web.review <- rbind(web.review,page) #데이터프레임 추가 
  
}
View(web.review)

write.csv(web.review,file = "output/navercomic.csv")

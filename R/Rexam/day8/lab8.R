library(rvest)
library(XML)
library(httr)

html <- read_html("https://news.daum.net/ranking/popular")
nodes <- html_nodes(html,"#mArticle > div.rank_news > ul.list_news2 > li > div.cont_thumb > strong > a")
title <- html_text(nodes) #뉴스제목 

news <- html_text(html_nodes(html,"#mArticle > div.rank_news > ul.list_news2 > li > div.cont_thumb > strong > span"))
     #신문사 이름

news_csv <- data.frame(newstitle=title,newspapername=news) 
View(news_csv)

write.csv(news_csv,file="output/daumnews.csv")
#write.table 이 아닌, write.csv로 저장해야함 


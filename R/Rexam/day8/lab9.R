#실습1 - 네이버 블로그 맛집 검색
library(httr)
library(rvest)
library(XML)
searchUrl<- "https://openapi.naver.com/v1/search/blog.xml" #블로그 
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"

query <- URLencode(iconv("맛집","euc-kr","UTF-8"))
url <- paste0(searchUrl, "?query=", query, "&display=100") #100개 받아오기 
doc <- GET(url, add_headers("Content_Type" = "application/xml", #XML형식 요청 
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))

#OPEN API는  고유의 ID로 신청해오기 때문에 이를 위해서는 GET함수로 주고 받아야 한다. 
doc2 <- htmlParse(doc, encoding="UTF-8")
text<- xpathSApply(doc2, "//item/description", xmlValue)
text
text <- gsub("</?b>", "", text) 
text <- gsub("&.+t;", "", text) 
text[81]
text

write(text,file = "output/naverblog.txt")

#실습2 - 트위터 코로나 트윗 추출
library(rtweet) 
appname <- "edu_data_collection"
api_key <- "RvnZeIl8ra88reu8fm23m0bST"
api_secret <- "wTRylK94GK2KmhZUnqXonDaIszwAsS6VPvpSsIo6EX5GQLtzQo"
access_token <- "959614462004117506-dkWyZaO8Bz3ZXh73rspWfc1sQz0EnDU"
access_token_secret <- "rxDWfg7uz1yXMTDwijz0x90yWhDAnmOM15R6IgC8kmtTe"
twitter_token <- create_token(
  app = appname,
  consumer_key = api_key,
  consumer_secret = api_secret,
  access_token = access_token,
  access_secret = access_token_secret)

key <- "코로나"
key <- enc2utf8(key)
result <- search_tweets(key, n=100, token = twitter_token)
str(result)
result$retweet_text
content <- result$retweet_text
content <- gsub("[[:lower:][:upper:][:cntrl:]]", "", content)   
content
content <- na.omit(content)  ## content <- content[!is.na(content)] 이렇게 하면 더 편함 
content
View(content)
write(content,file = "output/twitter.txt")

#실습3 - 공공DB 360번 버스 정보 추출
library(XML)
API_key  <- "%2BjzsSyNtwmcqxUsGnflvs3rW2oceFvhHR8AFkM3ao%2Fw50hwHXgGyPVutXw04uAXvrkoWgkoScvvhlH7jgD4%2FRQ%3D%3D"
bus_No <- "360"
url <- paste("http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?ServiceKey=", API_key, "&strSrch=", bus_No, sep="")
doc <- xmlParse(url, encoding="UTF-8")
top <- xmlRoot(doc)
top
df <- xmlToDataFrame(getNodeSet(doc, "//itemList"))
df
str(df)
View(df)

i_bus <- df[df$busRouteNm == 360, c("busRouteId","length","stStationNm","edStationNm","term")]
names(i_bus) <- c("노선ID","노선길이","기점", "종점", "배차간격")
i_bus

#실습4 - 네이버 뉴스 '빅데이터' 검색 
library(jsonlite)
searchUrl<- "https://openapi.naver.com/v1/search/news.xml"
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"
query <- URLencode(iconv("빅데이터","euc-kr","UTF-8"))
url <- paste0(searchUrl, "?query=", query, "&display=100") #쿼리 등을 사용하기 위해서는 GET으로 받아야함 
doc <- GET(url, add_headers("Content_Type" = "application/JSON", #JSON 형식 요청
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))

doc2 <- htmlParse(doc, encoding="UTF-8")
text<- xpathSApply(doc2, "//item/description", xmlValue); 
text
text <- gsub("</?b>", "", text)
text <- gsub("&.+t;", "", text)
text

write(text,file = "output/navernews.txt")









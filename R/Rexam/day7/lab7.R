library(rvest)
library(XML)
library(httr)

#1
url <-  "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url) 
nodes <- html_nodes(text,"h1")
title <- html_text(nodes)

#2
atag <- html_nodes(text,"a")
aval <- gsub("href","",html_attrs(atag))
aval

#3
img <- html_nodes(text,"img")
imgval <- html_attr(img,"src") #속성값 추출
imgval

#4
nodes2 <-html_text( html_nodes(text,"h2:nth-of-type(1)"))

#5
style <- html_nodes(text,"ul") #ul 안의 3번째 li의 컨텐츠 추출
sval <- html_text(html_nodes(style,"li:nth-of-type(3)"))
li <- html_nodes(text, "ul>li[style$='green']") #이런식으로

#6
nodes3 <-html_text( html_nodes(text,"h2:nth-of-type(2)"))

#7
olc <- strsplit(html_text(html_nodes(text,"ol")),"\r\n")

#8
table <- c(html_text(html_nodes(text,"tr")),html_text(html_nodes(text,"th")),
           html_text(html_nodes(text,"td"))
           )
table <- html_text(html_nodes(text,"table *")) #이런식으루

#9
name <- html_nodes(text,"tr") #class나 id같은 고유한 값엔 attr 속성에 열 이름이 있음
names(name) <- html_attr(name,"class") #이를 이용하여 names함수로 식별하여 구해봄
html_text(name["name"])

# tr.name으로 했으면 쉬웠음_nodes(text,"tr.name") 이렇게 (class 속성)

#10
target <- html_nodes(text,"td")
names(target) <- html_attr(target,"id")
html_text(target["target"])

# td#target (id속성)

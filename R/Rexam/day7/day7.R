library() # 설치된 패키지 리스트
installed.packages()
search()

install.packages("rvest") 
install.packages("XML")
install.packages("httr")

library(rvest)
library(XML)
library(httr)

# [ 예제1 ]
library(rvest)

url <- "http://unico2013.dothome.co.kr/crawling/tagstyle.html"
text <- read_html(url)
text

nodes <- html_nodes(text, "div") # 태그 선택자
nodes
title <- html_text(nodes)
title

node1 <- html_nodes(text, "div:nth-of-type(1)") #n번째 div태그
node1
html_text(node1)
html_attr(node1, "style")

node2 <- html_nodes(text, "div:nth-of-type(2)")
node2
html_text(node2)
html_attr(node2, "style")

node3 <- html_nodes(text, "div:nth-of-type(3)")
node3
html_text(node3)

# [ 예제2 ]
# 웹문서 읽기
url <- "https://www.data.go.kr/tcs/dss/selectDataSetList.do"
html <- read_html(url)
html

# 목록 아이템 추출
title <- html_text(html_nodes(html, "#apiDataList .title"),trim = T)
title # #id 추출할땐 #, class는 . 사용

# 목록 아이템 설명 추출
desc <- html_text(html_nodes(html, "#apiDataList .ellipsis"))
desc

# 데이터 정제: 제어문자를 공백으로 대체
title <- gsub("[[:cntrl:]]", "", title) #/n /t 제거 but 처음부터 trim=T 하면 이거 안해도 됨
title                                   #하지만 trim은 앞 뒤만 삭제해줌 중간은 이거로

desc <- gsub("[[:cntrl:](</br>)∙]", "", desc)
desc #중간의 <br>과 점 같은 문자를 삭제 

# 데이터 출력
api <- data.frame(title, desc) #∙를 삭제하지 않고 데이터프레임화 하면, 특수문자 고유값으로 전환됨
api

# [ 예제3 ]
# 단일 페이지(rvest 패키지 사용)
library(rvest)
# 영화 제목과 평점 읽기
text<- NULL; title<-NULL; point<-NULL; review<-NULL; page=NULL
url<- "http://movie.naver.com/movie/point/af/list.nhn?"
text <- read_html(url,  encoding="CP949") #네이버영화페이지 -> head > meta에 charset=euc-kr
text                                      #그래서 인코딩을 cp949로 해줘야 한다.
#save(text, file="imsi.rda")
# 영화제목
nodes <- html_nodes(text, ".movie")
title <- html_text(nodes)
title
# 영화평점
nodes <- html_nodes(text, ".title em")
point <- html_text(nodes)
point
page <- data.frame(title, point)
print(page)


# 영화 제목, 평점, 리뷰글 읽기
text<- NULL; title<-NULL; point<-NULL; review<-NULL; page=NULL
url<- "http://movie.naver.com/movie/point/af/list.nhn?"
text <- read_html(url,  encoding="CP949") #네이버영화페이지 -> head > meta에 charset=euc-kr
text                                      #그래서 인코딩을 cp949로 해줘야 한다.
#save(text, file="imsi.rda")
# 영화제목
nodes <- html_nodes(text, ".movie")
title <- html_text(nodes)
title
# 영화평점
nodes <- html_nodes(text, ".title em")
point <- html_text(nodes)
point
page <- data.frame(title, point)
print(page)

#영화리뷰
review <- html_nodes(text,xpath="//*[@id='old_content']/table/tbody/tr/td[2]/text()") 
#태그로 묶여 있지 않아, css선택자로 접근 불가
      #따라서 xpath를 사용해야 한다. xpath=를 꼭붙여줘야 css로 인식되지 않는다.
review <- html_text(review, trim=T)
review <- review[nchar(review) > 0 ] #공백은 리스트에서 제거했지만, 리뷰글은 생략될 수 있어서 어디서 댓글이 없는지 모르기 때문에 9개 댓글을 어디다 매칭 시켜야할까...
page <- data.frame(title, point, review)
print(page) #따라서 이런 경우에는 데이터프레임을 만들려고 하면 에러가 난다. 따라서 tr/td[2]부분에서 각각의 tr[]을 for 문을 이용하여 개별로 저장해나가야 할 것.



# [ 예제4 ]
# 영화 제목, 평점, 리뷰글 읽기
text<- NULL; vtitle<-NULL; vpoint<-NULL; vreview<-NULL; page=NULL
url<- "http://movie.naver.com/movie/point/af/list.nhn?page=4"
text <- read_html(url,  encoding="CP949")
text

for (index in 1:10) {
  # 영화제목   #개발자도구에서 copy > selector로 css선택자를 편하게 알아올 수 있다. 
  node <- html_node(text, paste0("#old_content > table > tbody > tr:nth-child(", index, ") > td.title > a.movie.color_b"))
  title <- html_text(node)
  vtitle[index] <- title
  # 영화평점
  node <- html_node(text, paste0("#old_content > table > tbody > tr:nth-child(", index,") > td.title > div > em"))
  point <- html_text(node)
  vpoint <- c(vpoint, point)
  # 영화리뷰 
  node <- html_nodes(text, xpath=paste0('//*[@id="old_content"]/table/tbody/tr[', index,"]/td[2]/text()"))
  node <- html_text(node, trim=TRUE) #for 문을 이용하여 리뷰글이 없는 것에는 NULL이 들어가게끔 코딩 
  print(node)
  review = node[4] 
  vreview <- append(vreview, review)
}
page <- data.frame(vtitle, vpoint, vreview)
View(page)
write.csv(page, "output/movie_reviews1.csv")

# [ 예제5 ]
# 여러 페이지1
site<- "http://movie.naver.com/movie/point/af/list.nhn?page="
text <- NULL
movie.review <- NULL
for(i in 1: 100) {
  url <- paste(site, i, sep="")
  text <- read_html(url,  encoding="CP949")
  nodes <- html_nodes(text, ".movie")
  title <- html_text(nodes)
  nodes <- html_nodes(text, ".title em")
  point <- html_text(nodes)
  nodes <- html_nodes(text, xpath="//*[@id='old_content']/table/tbody/tr/td[2]/text()")
  imsi <- html_text(nodes, trim=TRUE)
  review <- imsi[nchar(imsi) > 0] 
  if(length(review) == 10) {
    page <- data.frame(title, point, review)
    movie.review <- rbind(movie.review, page)
  } else {
    cat(paste(i," 페이지에는 리뷰글이 생략된 데이터가 있어서 수집하지 않습니다.ㅜㅜ\n"))
  }
}
write.csv(movie.review, "output/movie_reviews2.csv")

# [ 예제6 ]
# 여러 페이지2 + 리뷰
site<- "http://movie.naver.com/movie/point/af/list.nhn?page="
text <- NULL
movie.allreview <- NULL
for(i in 1: 100) {
  url <- paste(site, i, sep="")
  text <- read_html(url,  encoding="CP949")
  for (index in 1:10) {
    # 영화제목
    node <- html_node(text, paste0("#old_content > table > tbody > tr:nth-child(", index, ") > td.title > a.movie.color_b"))
    title <- html_text(node)
    vtitle[index] <- title
    # 영화평점
    node <- html_node(text, paste0("#old_content > table > tbody > tr:nth-child(", index,") > td.title > div > em"))
    point <- html_text(node)
    vpoint <- c(vpoint, point)
    # 영화리뷰 
    node <- html_nodes(text, xpath=paste0('//*[@id="old_content"]/table/tbody/tr[', index,"]/td[2]/text()"))
    node <- html_text(node, trim=TRUE)
    print(node) #이거 떄문에 오래 걸린다
    review = node[4] # 질문!!
    vreview <- append(vreview, review)
  }
  page <- data.frame(vtitle, vpoint, vreview)
  movie.review <- rbind(movie.allreview, page)
  
}
write.csv(movie.review, "output/movie_reviews3.csv")


# [ 예제7 ]
# 한겨레 페이지(XML 패키지 사용)(xpath)
library(XML)
library(rvest)
imsi <- read_html("http://www.hani.co.kr/")
t <- htmlParse(imsi)
content<- xpathSApply(t,'//*[@id="main-top01-scroll-in"]/div/div/h4/a', xmlValue); 
content                       #속성명 (css와는 다르다) # 크롬 개발자도구 copy > xpath로 ㄱㄱ


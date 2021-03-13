library(RSelenium)
library(stringr)
library(tm)
remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()
#링커리어 합격 자소서 긁어모으기 
remDr$navigate("https://linkareer.com/cover-letter/24337?page=1&sort=SCRAP_COUNT&tab=all")

webElem <- remDr$findElements(using = "css selector", "#__next > div.jss2266.jss2261 > div.MuiContainer-root.jss2274.jss2263.MuiContainer-disableGutters > div > div > div.MuiContainer-root.jss2577.MuiContainer-maxWidthLg > div.jss2895 > div.MuiBox-root.jss2899.jss2891 > div > div > div.MuiBox-root.jss2908 > p")
spec <- sapply(webElem, function(x) x$getElementText())

spec <- str_split(spec,'/') # "/" 기준으로 나누어서 학교, 학점, 스펙으로 나눈다
spec[[1]][2] <- as.numeric(gsub("[^0-9.]","",spec[[1]][2])) #학점
spec[[1]][3] <- str_split(spec[[1]][3],',') #스펙 
spec[[1]][3] <-length(spec[[1]][[3]]) #스펙 갯수 but, 양은 측정가능하나 질은 측정 불가능하다.

#완성된 첫 스펙
unlist(spec)

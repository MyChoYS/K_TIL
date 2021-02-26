#문제9

a=summary(factor(scan("data/iotest2.txt", what="",encoding="UTF-8")))
cat("가장 많이 등장한 단어는",
    names(a[which.max(a)]),"입니다.")






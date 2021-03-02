#문제8
scan("data/iotest1.txt")
cat("오름차순 : ",sort(scan("data/iotest1.txt")))
cat("내림차순 : ",sort(scan("data/iotest1.txt"),decreasing = T))
cat("합 : ",sum(scan("data/iotest1.txt")))
cat("평균 : ",mean(scan("data/iotest1.txt")))


#문제1
v1 <- 1:10
v2 <- v1*2
max_v <- max(v2)
min_v <- min(v2)
avg_v <- mean(v2)
sum_v <- sum(v2)
v3 <- v2[-5]
v1;v2;max_v;min_v;sum_v;avg_v;v3

#문제2
v4 <- seq(1,10,2)
v5 <- rep(1,5)
v6 <- rep(1:3,3)
v7 <- rep(1:4,each=2)

#문제3
nums = sample(1:100,10)
sort(nums)
sort(nums,decreasing = T)
nums[nums>50]
nums[nums <= 50]
which.max(nums)
which.min(nums)

#문제4
v8 <- seq(1,10,3)
names(v8) <- LETTERS[1:4]

#문제5
score <- sample(1:20,5)
myFriend <- c("둘리","또치","도우너","희동","듀크")
paste(score,myFriend, sep = '-')
myFriend[which.max(score)]
myFriend[which.min(score)]
myFriend[score>10]

#문제6
count <- sample(1:100,7)
week.korname <- c("일요일","월요일","화요일","수요일","목요일","금요일","토요일")
paste(week.korname,count,sep = " : " )
week.korname[which.max(count)]
week.korname[which.min(count)]
week.korname[count > 50]

#문제1
v <- sample(1:26,10)
vran <- function(v){ return(LETTERS[v])}
sapply(v, vran)

# 문제1
v <- sample(1:26, 10)
sapply(v,function(d) LETTERS[d])

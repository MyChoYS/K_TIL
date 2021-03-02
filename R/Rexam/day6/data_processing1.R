#문제1
v <- sample(1:26,10)
vran <- function(v){  return(LETTERS[v])}
sapply(v, vran)

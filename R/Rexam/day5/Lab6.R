#문제1
countEvenOdd <- function(...){
  numlist <- c(...)
  if (is.vector(numlist)){ 
  even <- 0
  odd <- 0
  for (i in numlist){
    if(i%%2 == 0){
      even = even + 1
    }else{
      odd = odd + 1
      }
  }
  return(list(짝수=even,홀수=odd))
  }else{
    return(NULL)
  }
}
countEvenOdd()
countEvenOdd(1,4,6,7,7,8)

#문제2
vmsum <- function(...){
  numlist <- c(...)
  if(is.vector(numlist)){
    if(!is.numeric(numlist)){
      cat("숫자 벡터를 전달하숑!")
      return(0)
    }else{
      return(sum(numlist))
    }
  }else{
    cat("벡터만 전달하숑!")
  }
}
vmsum(1,2,3,4,5)
vmsum()
vmsum("a")

vmsum2 <- function(...){
  numlist <- c(...)
  if(is.vector(numlist)){
    if(!is.numeric(numlist)){
      warning("숫자 벡터를 전달하숑!")
      return(0)
    }else{
      return(sum(numlist))
    }
  }else{
    stop("벡터만 전달하숑!")
  }
}
vmsum2(1,3,6)
vmsum2()
vmsum(list())

#문제4
mysum <- function(...){
  numlist <- c(...)
  count <- 1
  oddsum <-0
  evensum <-0
  if (is.vector(numlist)){
    if(any(is.na(numlist))){
      numlist[which(is.na(numlist))] <- min(numlist[-which(is.na(numlist))])
      warning("NA를 최저값으로 변경하여 처리함")
    }
    for (i in numlist){
      if (count %% 2 == 0 ){
        count = count + 1
        evensum = evensum + i 
      }else{
        count = count + 1
        oddsum = oddsum + i 
      }
    }
    return(list(짝수번째합=evensum,홀수번째합=oddsum))
  }else if (is.null(numlist)){
    return(NULL)
  }else{
    stop("벡터만 처리 가능!!")
  } 
}
mysum(NULL)
mysum(1,2,3,4,5)
mysum()
mysum(1,2,3,4,NA,5)

#문제5
myExpr <- function(f){
  if(is.function(f)){
    lotto <- function(){
      return(c(sample(1:45,6)))
    }
    return(lotto())
  }else{
    stop("함수가 아니면 수행 안할꺼임!")
  }
}
myExpr(min)
myExpr(123)

#문제6
createVector1 <- function(...){
  arg = c(...)
  if(is.null(arg)){
    return(NULL)
  }else if(any(is.na(arg))){
    return(NA)
  }else{
    return((arg))
  }
}
createVector1(1,2,3)
createVector1(1,NA)
createVector1()

#문제7 *****
createVector2 <- function(...){
  arg = list(...)
  if (is.null(arg)){
    return(NULL)
  }else{
    return(arg)
  }
}
createVector2(1,"a",4)



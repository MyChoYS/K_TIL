#문제1
exam1 <- function(){
  alpha <- list(LETTERS,letters)
  return(paste(unlist(alpha[1]),unlist(alpha[2]),sep=''))
}
exam1()

#문제2
exam2 <- function(num){
  return(sum(1:num))
}
exam2(10)

#문제3
exam3 <- function(num1,num2){
  if (num1 >= num2){
    return(num1-num2)
  }else{
    return(num2-num1)
  }
}
exam3(10,20)
exam3(20,5)
exam3(5,30)
exam3(6,3)
exam3(123,123)

#문제4
exam4 <- function(num1,num,num2){
  if (num != "+" & num != "-" & num != "*" & num != "%/%" & num != "%%"){
    return(print("규격의 연산자만 전달하세요"))
}else if (num == "+"){
  return(num1 + num2)
}else if (num == "-"){
  return(num1 - num2)
}else if (num == "*"){
  return(num1 * num2)
}else if (num == "%/%"){
  if (num1 == 0){
    return(print("오류1"))
  }else{
    return(num1 %/% num2)
  }
}else if (num == "%%"){
  if (num2 == 0){
    return(print("오류2"))
  }else{
    return(num1 %% num2)
  }
}
}
exam4(1,"+",4)
exam4(2,"*",4)
exam4(2,3,4)
exam4(0,"%/%",0)

#문제5
exam5 <- function(a,b="#"){
  if (a<0){
    return(NULL)
  }
  if (is.character(b) != T){
    b="#"
  }
  for (i in 1:a){
    cat(b)
  }
}
exam5(1,0)
exam5(-10,"b")
exam5(10,"$")

#문제6
exam6 <- function(...){
  list = c(...)
  for (i in list){
    if(i < 0 | i > 100 | is.numeric(i) != T | i == F | is.na(i) == T){
      print("NA는 처리불가")
    }else{
      if (i >= 85){
        print(paste(i,"점은 상등급입니다"))
      }else if (i >= 70){
        print(paste(i,"점은 중등급입니다"))
      }else{
        print(paste(i,"점은 하등급입니다"))
      }
    }
  }
}
exam6(80,50,70,66,NA,35)
exam6(c(80,50,70,66,NA,35))






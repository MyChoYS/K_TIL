# 문제1
exam1 <- function(){
  return(paste0(LETTERS,letters))
}
exam1()  


# 문제2
exam2 <- function(num){
  return(sum(1:num))
}
exam2(5) # 15
exam2(10) # 55 


# 문제3
exam3 <- function(a,b){
  if(a >= b) {
    result = a - b
  }
  else{
    result = b - a
  }  
  return(result)
}
exam3(10, 20)
exam3(20, 5)
exam3(5, 30)
exam3(6, 3)
exam3(10, 10)


# 문제4
exam4 <- function(a, b, c){
  if(b == '+'){
    result = a+c
  }else if(b == '-'){
    result = a-c
  }else if(b == '*'){
    result = a*c
  }else if(b == '%/%'){
    if(a == 0){
      result = '오류1'
    }else if(c == 0){
      result = '오류2'
    }else{
      result = a%/%c
    }  
  }else if(b == '%%'){
    if(a == 0){
      result = '오류1'
    }else if(c == 0){
      result = '오류2'
    }else{
      result = a%%c
    }
  }else{
    result = "규격의 연산자만 전달하세요"
  }
  return(result)
}
exam4(10, '+', 2)
exam4(5, '-', 3)
exam4(4, '*', 5)
exam4(20, '%/%', 3)
exam4(30, '%%', 4)
exam4(18, '/', 2)
exam4(0, '%/%', 10)
exam4(0, '%%', 5)
exam4(10, '%/%', 0)
exam4(5, '%%', 0)

exam4 <- function(n1, cal, n2) {
  if (cal == "+"){
    rs = n1 + n2
  }else if (cal == "-"){
    rs = n1 - n2
  }else if (cal == "*"){
    rs = n1 * n2
  }else if (cal == "%/%" | cal == "%%"){
    if (n1 == 0){
      rs = "오류1"
    }else if (n2 == 0){
      rs = "오류2"
    }else{
      if (cal == "%/%"){
        rs = n1 %/% n2
      }else{
        rs = n1 %% n2
      }
    }
  } else {
    result = "규격의 연산자만 전달하세요"
  }
  return (rs)
}


# 문제5
exam5 <- function(a, b = '#'){
  if(a <= 0){
    return()
  }else{
    for(i in 1:a){
      cat(b)
    }
  }  
}
exam5(3, '$')  
exam5(5)
exam5(10, '*')
exam5(-1)

exam5 <- function(a, b = '#'){
  if(a > 0){
    for(i in 1:a){
      cat(b)
    }
  }  
}
exam5(3, '$')  
exam5(5)
exam5(10, '*')
exam5(-1)


# 문제6
exam6 <- function(...){
  data <- c(...)
  for(score in data){ 
    if(!is.na(score)){
      if(score >= 85){
        lev = '상'
      }else if(score >= 70){
        lev = '중'
      }else{
        lev = '하'
      }
      print(paste(score,'점은',lev,'등급입니다.'))
    }else{
      print("NA는 처리불가")
    }
  }  
  return()
}

exam6(80, 50, 70, 66, NA, 35)


exam6 <- function(score){
  end <- length(score)
  for (i in 1:end) {
    if(is.na(score[i])) # 제일 위로 올려야 하는 이유는 ?
      cat("NA는 처리 불가\n")
    else if (score[i] >= 85)
      cat(score[i],"점은 상등급입니다\n")
    else if(score[i] >= 70)
      print(paste(score[i],"점은 중등급입니다"))
    else 
      print(paste(score[i],"점은 하등급입니다"))
  }
  return()
}

exam6(c(80,50,70,66,NA,35))


exam6 <- function(score){
  end <- length(score)
  # score. 
  for (i in 1:end) {
    if (score[i] >= 85)
      print(paste(score[i],"점은 상등급입니다"))
    else if(score[i] >= 70)
      print(paste(score[i],"점은 중등급입니다"))
    else if(score[i] >= 0)
      print(paste(score[i],"점은 하등급입니다"))
    else if(is.na(score[i])) 
      print("NA는 처리 불가")
  }
  return ()
}


exam6(c(80,50,70,66,NA,35))


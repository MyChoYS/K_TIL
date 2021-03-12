# 여러 데이터프레임 합치기


# 학생 1~5번 시험 데이터 생성
(group_a <- data.frame(id = c(1, 2, 3, 4, 5),  test = c(60, 80, 70, 90, 85)))
# 학생 6~10번 시험 데이터 생성
(group_b <- data.frame(id = c(6, 7, 8, 9, 10),  test = c(70, 83, 65, 95, 80)))

bind_rows(group_a, group_b)  
bind_cols(group_a, group_b) 

one <- data.frame(c(x = c(1:1000000), y = c(1:1000000))) 
two <- data.frame(c(x = c(1:1000000), y = c(1:1000000)))
system.time(rbind(one, two)) 
system.time(bind_rows(one, two)) 



# 중간고사 데이터 생성
test1 <- data.frame(no = c(1, 2, 3, 4, 5, 6),  
                    midterm = c(60, 80, 70, 90, 85, 100))
# 기말고사 데이터 생성
test2 <- data.frame(no = c(1, 5, 3, 4, 2, 7),  
                    final = c(70, 80, 65, 95, 83, 0))


inner_join(test1, test2, by = "no")  
left_join(test1, test2, by = "no") 
right_join(test1, test2, by = "no") 
full_join(test1, test2, by = "no") 

merge(test1, test2)
merge(test1, test2, all.x = T)
merge(test1, test2, all.y = T)
merge(test1, test2, all = T)

# 다른 데이터 활용해 변수 추가하기
# 반별 담임교사 명단 생성
name <- data.frame(class = c(1, 2, 3, 4, 5), teacher = c("kim", "lee", "park", "choi", "jung"))
# class 기준 합치기
exam_new <- left_join(exam, name, by = "class")



# 데이터 정제 : 결측치(NA)와 이상치 처리

df <- data.frame(sex = c("M", "F", NA, "M", "F"), 
                 score = c(5, 4, 3, 4, NA))
df
# 결측치 확인하기
is.na(df)         # 결측치 확인
table(is.na(df))  # 결측치 빈도 출력
# 변수별로 결측치 확인하기
table(is.na(df$sex))    # sex 결측치 빈도 출력
table(is.na(df$score))  # score 결측치 빈도 출력

# 결측치 포함된 상태로 분석
mean(df$score)  # 평균 산출
sum(df$score)   # 합계 산출
# 결측치 있는 행 제거하기

df %>% filter(is.na(score))   # score가 NA인 데이터만 출력
df %>% filter(!is.na(score))  # score 결측치 제거

# 결측치 제외한 데이터로 분석하기
df_nomiss <- df %>% filter(!is.na(score))  # score 결측치 제거
mean(df_nomiss$score)                      # score 평균 산출
sum(df_nomiss$score)                       # score 합계 산출

# 여러 변수 동시에 결측치 없는 데이터 추출하기
# score, sex 결측치 제외
df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))
df_nomiss  
# 결측치가 하나라도 있으면 제거하기
df_nomiss2 <- na.omit(df)  # 모든 변수에 결측치 없는 데이터 추출
df_nomiss2

#분석에 필요한 데이터까지 손실 될 가능성 유의
# 함수의 결측치 제외 기능 이용하기 - na.rm = T
mean(df$score, na.rm = T)  # 결측치 제외하고 평균 산출
sum(df$score, na.rm = T)   # 결측치 제외하고 합계 산출


#summarise()에서 na.rm = T사용하기
# 결측치 생성
exam <- read.csv("data/csv_exam.csv")            # 데이터 불러오기
table(is.na(exam))
exam[c(3, 8, 15), "math"] <- NA             # 3, 8, 15행의 math에 NA 할당
#평균 구하기
exam %>% summarise(mean_math = mean(math))             # 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T))  # 결측치 제외하고 평균 산출
# 다른 함수들에 적용
exam %>% summarise(mean_math = mean(math, na.rm = T),      # 평균 산출
                   sum_math = sum(math, na.rm = T),        # 합계 산출
                   median_math = median(math, na.rm = T))  # 중앙값 산출


boxplot(exam$math) # boxplot은 NA 값을 제외시키고 처리


mean(exam$math, na.rm = T)  # 결측치 제외하고 math 평균 산출
# 평균으로 대체하기
exam$math <- ifelse(is.na(exam$math), 55, exam$math)  # math가 NA면 55로 대체
table(is.na(exam$math))                               # 결측치 빈도표 생성
mean(exam$math)  # math 평균 산출

# 이상치 포함된 데이터 생성 - gender 3, score 6
outlier <- data.frame(gender = c(1, 2, 1, 3, 2, 1),  score = c(5, 4, 3, 4, 2, 6)) 
# 이상치 확인하기
table(outlier$gender)

table(outlier$score)

# 결측 처리하기 - gender
# sex가 3이면 NA 할당
outlier$gender <- ifelse(outlier$gender == 3, NA, outlier$gender)

#결측 처리하기 - score
# sex가 1~5 아니면 NA 할당
outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)

outlier

# 결측치 제외하고 분석
outlier %>%
  filter(!is.na(sex) & !is.na(score)) %>%
  group_by(gender) %>%
  summarise(mean_score = mean(score))

View(mpg)
boxplot(mpg$hwy)
boxplot(mpg$hwy, notch=T) # , notch=T
boxplot(mpg$hwy, range=0)
summary(mpg$hwy)
#상자그림 통계치 출력
boxplot(mpg$hwy)$stats  # 상자그림 통계치 출력

# 결측 처리하기
# 12~37 벗어나면 NA 할당
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))
# 결측치 제외하고 분석하기
mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy, na.rm = T))




# 난생처음 교재 소스 : 394 페이지
# 11장 : 데이터 전처리 알아보기

z <- c(1,2,3,NA,5,NA,8)      # 결측값이 포함된 벡터 z
sum(z)                       # 정상 계산이 되지 않음
is.na(z)                     # NA 여부 확인
sum(is.na(z))                # NA의 개수 확인
sum(z, na.rm=TRUE)           # NA를 제외하고 합계를 계산

z1 <- c(1,2,3,NA,5,NA,8)      # 결측값이 포함된 벡터 z1
z2 <- c(5,8,1,NA,3,NA,7)      # 결측값이 포함된 벡터 z2
z1[is.na(z1)] <- 0            # NA를 0 로 치환 
z1                            
z3 <- as.vector(na.omit(z2))  # NA를 제거하고 새로운 벡터 생성
z3


# NA를 포함하는 test 데이터 생성
x <- iris
x[1,2]<- NA; x[1,3]<- NA
x[2,3]<- NA; x[3,4]<- NA  
head(x)


# for를 이용한 방법
for (i in 1:ncol(x)) {
  this.na <- is.na(x[,i]) 
  cat(colnames(x)[i], '\t', sum(this.na), '\n')
}

# apply를 이용한 방법
col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <-apply(x, 2, FUN=col_na)
na_count


rowSums(is.na(x))            # 행별 NA 개수  
sum(rowSums(is.na(x))>0)     # NA가 포함된 행의 개수 
sum(is.na(x))                # 데이터셋 전체에서 NA 개수


head(x)
x[!complete.cases(x),]              # NA가 포함된 행들을 나타냄
y <- x[complete.cases(x),]          # NA가 포함된 행들을 제거
head(y)                             # 새로운 데이터셋 y의 내용 확인





agg <- aggregate(iris[,-5], by=list(iris$Species), 
                 FUN=mean)
agg

agg <- aggregate(iris[,-5], by=list(품종=iris$Species), 
                 FUN=sd)
agg

head(mtcars)
agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl,
                                 vs=mtcars$vs),FUN=max)
agg

agg <- aggregate(mtcars, by=list(vs=mtcars$vs,cyl=mtcars$cyl),FUN=max)
agg
# 데이터 전처리 - dplyr 패키지를 학습하자....
# dplyr : 데이터프레임(티블)을 다루는 유용한 기능의 함수들 제공

install.packages("dplyr") 
library(dplyr)
#install.packages("ggplot2")
rm(mpg)
library(ggplot2)
head(mpg)
str(mpg) #-> tibble이라고 나옴 이것은 dataframe에서 조금 업그레이드 된 것이라 이해하면 된다. 

exam <- read.csv("data/csv_exam.csv")
str(exam)
dim(exam)
head(exam);tail(exam)
View(exam)
# exam에서 class가 1인 경우만 추출하여 출력
exam %>% filter(class == 1) # [참고] 단축키 [Ctrl+Shit+M]으로 %>% 기호 입력 파이프기호로 filter가 데이터프레임을 받는다.
# 2반인 경우만 추출
exam %>% filter(class == 2)
# 1반이 아닌 경우
exam %>% filter(class != 1)
# 3반이 아닌 경우
exam %>% filter(class != 3)
# 수학 점수가 50점을 초과한 경우
exam %>% filter(math > 50)
# 수학 점수가 50점 미만인 경우
exam %>% filter(math < 50)
# 영어점수가 80점 이상인 경우
exam %>% filter(english >= 80)
# 영어점수가 80점 이하인 경우
exam %>% filter(english <= 80)
# 1반 이면서 수학 점수가 50점 이상인 경우
exam %>% filter(class == 1 & math >= 50)
# 2반 이면서 영어점수가 80점 이상인 경우
exam %>% filter(class == 2 & english >= 80)
# 수학 점수가 90점 이상이거나 영어점수가 90점 이상인 경우
exam %>% filter(math >= 90 | english >= 90)
# 영어점수가 90점 미만이거나 과학점수가 50점 미만인 경우
exam %>% filter(english < 90 | science < 50)
# 목록에 해당되는 행 추출하기
exam %>% filter(class == 1 | class == 3 | class == 5)  # 1, 3, 5 반에 해당되면 추출
# %in% 연산자 이용하기
exam %>% filter(class %in% c(1,3,5))  # 1, 3, 5 반에 해당하면 추출
# 추출한 행으로 데이터 만들기
class1 <- exam %>% filter(class == 1)  # class가 1인 행 추출, class1에 할당
class2 <- exam %>% filter(class == 2)  # class가 2인 행 추출, class2에 할당
exam %>% filter(class == 2) -> class2
mean(class1$math)                      # 1반 수학 점수 평균 구하기
mean(class2$math)                      # 2반 수학 점수 평균 구하기



exam %>% select(math)  # math 추출
exam %>% select(english)  # english 추출
# 여러 변수 추출하기
exam %>% select(class, math, english)  # class, math, english 변수 추출
# 변수 제외하기
exam %>% select(-math)  # math 제외
exam %>% select(-math, -english)  # math, english 제외



# dplyr 함수 조합하기
# class가 1인 행만 추출한 다음 english 추출
exam %>% filter(class == 1) %>% select(english) #파이프를 통해 몇개의 함수가 필요하든 이어서 처리 가능
# 가독성 있게 줄 바꾸기
exam %>% 
  filter(class == 1) %>%  # class가 1인 행 추출
  select(english)         # english 추출
# 일부만 출력하기
exam %>%
  select(id, math) %>%  # id, math 추출
  head                  # 앞부분 6행까지 추출
# 일부만 출력하기
exam %>%
  select(id, math) %>%  # id, math 추출
  head(10)              # 앞부분 10행까지 추출

data(iris) # 아규먼트에 지정된 이름의 객체(데이터셋)를 로드하는 기능
str(iris)
iris %>% pull(Species) #pull -> 받아오기 push -> 집어넣기 github ! 
iris %>% select(Species)
str(iris %>% pull(Species))
str(iris %>% select(Species))
iris %>% select_if(is.numeric) %>% head(3)
iris %>% select(-Sepal.Length, -Petal.Length) %>% head(3)

# Select column whose name starts with "Petal"
iris %>% select(starts_with("Petal")) #petal로 시작하는 것들을 뽑아내기 
iris %>% select(starts_with("petal")) 
iris %>% select(starts_with("petal", ignore.case=F)) #대소문자 반영 ->F면 대소문자 반영

# Select column whose name ends with "Width"
iris %>% select(ends_with("Width")) %>% head(3) #width로 끝나는 열 뽑아내기 

# Select columns whose names contains "etal"
iris %>% select(contains("etal")) %>% head

# Select columns whose name maches a regular expression
iris %>% select(matches(".t.")) %>% head #.t.에서 .을 없애도 같음  #contais랑 matches의 차이? 실행결과는 같음

iris %>% select(one_of("aa", "Petal.Length", "Petal.Width", "bb")) %>% head




# 오름차순으로 정렬하기
exam %>% arrange(math)  # math 오름차순 정렬
# 내림차순으로 정렬하기
exam %>% arrange(desc(math))  # math 내림차순 정렬 #desc() 활용
# 정렬 기준 변수 여러개 지정
exam %>% arrange(desc(class), desc(math))  # class 및 math 내림차순 정렬
exam %>% arrange(desc(math)) %>% head(1)



exam %>%
  mutate(total = math + english + science) %>%  # 총합 변수 추가 ** 저장은 따로 다시 해야 반영된다. 
  head                                          # 일부 추출
#여러 파생변수 한 번에 추가하기
exam %>%
  mutate(total = math + english + science,          # 총합 변수 추가
         mean = (math + english + science)/3) %>%   # 총평균 변수 추가
  head     
exam %>%
  mutate(total = math + english + science,          # 총합 변수 추가
         mean = total/3) %>%   # 총평균 변수 추가
  head 

# 일부 추출
# mutate()에 ifelse() 적용하기
exam %>%
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>%
  head
#추가한 변수를 dplyr 코드에 바로 활용하기
exam %>%
  mutate(total = math + english + science) %>%  # 총합 변수 추가
  arrange(total) %>%                            # 총합 변수 기준 정렬
  head                                          # 일부 추출


exam2 <- exam %>%
  mutate(total = math + english + science) %>%  
  arrange(total) %>%                            
  head                                          

exam %>%
  mutate(total = math + english + science) %>%  
  arrange(total) %>%                            
  head   -> exam3          #dplyr에서 파이프라인을 따라 변수를 지정하는 것이 가독성이 좋다.                             

exam3 %>% rename(mytotal=total)

exam3 %>% rename(myid = id, myclass = class)

exam4 <- exam3 %>% rename(m = math, e = english, s = science)

exam4



# 전체 요약하기

exam %>% summarise(n = n())
exam %>% tally()

exam %>% summarise(mean_math = mean(math))  # math 평균 산출
mean(exam$math)


str(exam %>% summarise(mean_math = mean(math),
                       mean_english = mean(english),
                       mean_science = mean(science))) # 모든 과목의 평균 산출


# 집단별로 요약하기
exam %>%
  group_by(class) %>% summarise(n = n()) 

exam %>%
  group_by(class) %>% tally()   

exam %>% count(class)         # count() is a short-hand for group_by() + tally()
# add_tally() 와 add_count(..) 도 있음

exam %>%
  group_by(class) %>%                # class별로 분리
  summarise(mean_math = mean(math))  # math 평균 산출

exam %>%
  group_by(class) %>%                   # class별로 분리
  summarise(mean_math = mean(math),     # math 평균
            sum_math = sum(math),       # math 합계
            median_math = median(math), # math 중앙값
            n = n())                    # 학생 수


# 각 집단별로 다시 집단 나누기
mpg %>%
  group_by(manufacturer, drv) %>%      # 회사별, 구방방식별 분리
  summarise(mean_cty = mean(cty)) %>%  # cty 평균 산출
  head(10)                             # 일부 출력

#[ 문제 ] 
#회사별로 "suv" 자동차의 도시 및 고속도로 통합 연비 평균을 구해 내림차순으로 정렬하고, 1~5위까지 출력하기
#절차	기능	dplyr 함수
#1	회사별로 분리	group_by()
#2	suv 추출	filter()
#3	통합 연비 변수 생성	mutate()
#4	통합 연비 평균 산출	summarise()
#5	내림차순 정렬	arrange()
#6	1~5위까지 출력	head()
library(ggplot2)
mpg %>%
  group_by(manufacturer) %>%           # 회사별로 분리
  filter(class == "suv") %>%           # suv 추출
  mutate(tot = (cty+hwy)/2) %>%        # 통합 연비 변수 생성
  summarise(mean_tot = mean(tot)) %>%  # 통합 연비 평균 산출
  arrange(desc(mean_tot)) %>%          # 내림차순 정렬
  head(5)                              # 1~5위까지 출력

mpg %>%
  filter(class == "suv") %>%           
  mutate(tot = (cty+hwy)/2) %>% 
  group_by(manufacturer) %>%           
  summarise(mean_tot = mean(tot)) %>%  
  arrange(desc(mean_tot)) %>%          # 내림차순 정렬
  head(5) 
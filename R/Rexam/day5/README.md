# day5

paste()활용 

함수function() 기능

apply, sapply(vector), lapply (list로 리턴)

전역변수(global), 지역변수

return(), invisible() 함수

sleep() - 시간지연을 통해 오류를 줄일 수 있다

데이터 타입 체크 - is.vector, is.lsit ~~ 등등 (101행 참고)
(list는 원소 1개 짜리 1차원 배열과 같다, dataframe이 list에, list는 vector에 포함 됨)
( but, list는 데이터저장에 제한 x  <->  vector는 같은 종류만 저장o

stop() ->함수실행 정지,에러발생, 오류 메시지 전달

warning() -> 에러메시지 출력, 함수중지 x

try() -> 데이터 수집에 큰 도움 , 오류(에러))가 발생하더라도  영향 x,무시

trycatch() -> 파이썬의 try,except,finally 구문과 비슷하다.

any() -> 함수 정의 할 때, 아규먼트가 하나를 받는 함수라도 any()를 사용하면 각각의 원소에 대해
			 실행 가능하게 한다. <-> all()

NA값(결측값) 제거 (Lab6) --> numlist[-which(is.na(numlist)]

sort -> 내림차순 (dercreasing=T) 설정

factor 변환 후 which.max 활용하여 가장 많이 나온 단어 찾기

---

#### 데이터 저장, 불러오기 

`load(), save()` -> 지금까지 만들어 놓은 list 저장 (ls()로 볼 수 있는 객체들) #구문보충

저장은 `.rda`로 저장

---

### 사분위수

자료를 크기 순으로 배열하고, 누적 백분율을 4 등분한 각 점에 해당하는 값을 말한다. 제1사분위수는 누적 백분율이 25%에 해당하는 점수이고, 제2사분위수는 누적 백분율이 50%, 제3사분위수는 75%, 제4사분위수는 100%에 해당하는 점수이다. 특히 제2사분위수는 누적 백분율이 50%이므로 개념적으로 중앙값과 동일하다.



홀수 갯수의 숫자들에 대한 사분위수 계산은 간단하다.

전체에서 중간값 : 2/4 분위수

2/4 분위수를 기준)으로 양쪽에서 중간값을 구하면 1/4, 3/4 분위수 값이 된다. 이 때 2/4 분위수의 값을 포함해서 처리한다.



짝수 갯수의 숫자들에 대한 사분위수 계산은 다음과 같다.

2/4 분위수(중간값) : 중앙의 2개 값의 평균

1/4 분위수 : 중간값의 왼쪽 데이터들

​      홀수 갯수 : 중간값 + (중간값의 다음값 - 중간값) * 0.25 

​      짝수 갯수 : 중간값 + (큰값 - 작은값) * 0.25

3/4 분위수 : 중간값의 왼쪽 데이터들

​      홀수 갯수 : 중간값 - (중간값 - 중간값 이전값) * 0.25 

​      짝수 갯수 : 중간값 - (큰값 - 작은값) * 0.25





# day4

사분위수 : quantile()
전역변수(global) 지정방법 : <<- 대입연산자 이용 (기존 <- )
함수 function 생성 

 **f8()함수가 f7()과 결과가 다른이유:**
 밑의 호기심 함수처럼 가변적인 아규먼트 목록에 하나라도 문자열이 들어가 있으면,
전부 chr로 인식해버림 그래서 f8()과는 달리 f7()에선 모든 숫자가 따로 print 되어서 나오는 것!!!!!

왜냐하면, 벡터는 데이터의 타입이 같아야 하기 때문!!!!!!!! 
이걸 방지하려면 list로 해야함 list는 각 데이터의 종류와는 상관없이 저장이 가능하기 때문

ex. str(hogisim(1,"a",3,4,5) ) -> chr로 나온다. <->  str(hogisim(1,3,4,5) ) -> num

***str()함수로 타입 체크,,, --> 즉, function(...) 에서  '...'아규먼트는 벡터로 묶이는 듯***

****

## How To Read File Data

,로 데이터를 구분할 경우에는 csv로, 나머지는 table로 데이터를 불러온다. 
(read.csv(), read.table())

하지만 벡터로 불러오고 싶은 경우에는 scan()(numeric 특화)을 사용해서 불러오자.
scan은 처음 불러오면 모든 데이터를 숫자로 인식함.(numeric)
 **즉, 수치데이터 불러올 때 유용**

예:
xxx.csv : read.csv() - data.frame()
xxx.log : read.table() - data.frame()
xxx.txt : scan() - vector => what= 을 이용하여 부르면 chr의 형태로 데이터를 불러온다,*    			   readLines() - vector

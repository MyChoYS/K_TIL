Day2
---
Array, matrix, factor(범주형 자료 정리할 때 사용 ex.월화수목금토일, 남성:여성), level
datasets 함수-> View(), str()-> obs는 관측치를 의미(수), variables는 각 항목, 변수 즉,obs는행을 variables는 열이라고 생각
	         dataframe$열이름 -> 그 열만 사용가능, ifelse구문을 통해 df에 열 추가 가능(파생변수)
	         table() -> 데이터 갯수 세는데 활용가능	
csv파일 열기
특정 값의 행만 데이터 추출 ex.emp[emp$열이름=='이름']
subset() 을 통해 (데이터,조건,select=컬럼명(열이름))

벡터 대소비교

Lab2:
rbind(), cbind() 를 통해 matrix 에 행 또는 열 추가 가능

Lab3: read.csv, order,sort(,derceasig=T) :내림차순 을 통해 데이터 정렬 인덱싱 & subset 


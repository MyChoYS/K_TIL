# DAY13

##### 데이터 전처리 - dplyr ***

dplyr에서 파이프라인을 따라 변수를 지정하는 것이 가독성이 좋다.

dplyr로 데이터 처리를 해야 빠르다. 

filter(), slice(), select(), arrange()

(dplyr패키지를활용한데이터전처리 잠고)

filter()는 안에 데이터 제한을 위해, select는 열 제한(ex.id,length 등 )을 위해 

bind_rows, bind_cols 를 통해 데이터프레임 합치기

group_by를 통해 그룹별 데이터 산출 

summarise() 를 사용해야 마지막 결과를 원하는 통계량에 맞추어 변화시켜 볼 수 있다 .
(ex.바로 %>% mean 쓰면 오류가 나지만, summarise(mean_1 = mean(1) )) 하면 mean이 나옴)
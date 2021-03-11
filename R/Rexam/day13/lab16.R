#dplyr 패키지 활용 %>% 
emp <- read.csv("data/emp.csv")

#문제1
emp %>% filter(job == "MANAGER")

#문제2
emp %>% select(empno,ename,sal)

#문제3
emp %>% select(-empno)

#문제4 
emp %>% select(ename,sal)

#문제5 : 업무별 직원수
emp %>% count(job)

#문제6 : 월급 1000이상, 3000이하인 사원 이름 월급 부서번호
emp %>% filter(sal >= 1000 & sal <= 3000) %>% select(ename,sal,deptno)

#문제7 : 업무가 ANALYST가 아닌 사원 이름 직업 월급
emp %>% filter(job != "ANALYST") %>% select(ename,job,sal)

#문제8 : 업무가 saleman or analyst 사원 이름 직업
emp %>% filter(job == "SALESMAN" | job == "ANALYST") %>% select(ename,job)

#문제9 : 부서별 직원들 월급의 합
emp %>% count(deptno)
emp %>% filter(deptno == 10) %>% select(sal) %>% sum
emp %>% filter(deptno == 20) %>% select(sal) %>% sum
emp %>% filter(deptno == 30) %>% select(sal) %>% sum

emp %>% group_by(deptno) %>%summarise(sum_sal = sum(sal)) # *****

#문제10 : 월급 적은순 
emp %>% arrange(sal)

#문제11 : 월급 제일 많은 직원 
emp %>% arrange(desc(sal)) %>% head(1)

#문제12 : rename
emp %>% rename(salary = sal, commrate = comm) -> empnew

#문제13 : 가장 많은 인원 부서번호 **
emp %>% count(deptno) %>%  max

#문제14 : mutate(변수추가) + 이름 길이가 짧은 순 
emp %>% mutate(enamelength = nchar(ename)) %>% arrange(enamelength)

#문제15 : 커미션 있는 직원 수 
emp %>% filter(is.na(comm) == F) %>% count
#emp %>% filter(comm != "NA") %>% count









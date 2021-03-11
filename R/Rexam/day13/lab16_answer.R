library(dplyr)


emp <- read.csv("data/emp.csv")
head(emp)

#문제1
emp %>% filter(job == "MANAGER")

#문제2
emp %>% select(empno, ename, sal)

#문제3
emp %>% select(-empno)

#문제4
emp %>% select(ename, sal)

#문제5
emp %>% count(job) 

#문제6
emp %>% filter(sal >= 1000 & sal <=3000) %>%  select(ename, job, sal)

#문제7
emp %>% filter(job !="ANALYST") %>% select(ename, job, sal)

#문제8
emp %>% filter(job == "SALESMAN" | job =="ANALYST") %>% select(ename, job)

#문제9

head(emp)
emp %>% count(deptno)
emp %>% filter(deptno == 10) %>% select(sal) -> dep1sal
emp %>% filter(deptno == 20) %>% select(sal) -> dep2sal
emp %>% filter(deptno == 30) %>% select(sal) -> dep3sal
sum(dep1sal)
sum(dep2sal)
sum(dep3sal)

emp %>% group_by(deptno) %>% summarise(sum_sal=sum(sal))

#문제10
emp %>% arrange(sal)

#문제11
emp %>% arrange(desc(sal)) %>% head(1)

#문제12
emp %>% rename(salary=sal, commrate=comm) -> empnew
head(empnew)

#문제13
emp %>% count(deptno) -> max_dep
max(max_dep)

emp %>% count(deptno) %>%  max

#문제14
emp %>% mutate(enamelength=nchar(ename)) %>% arrange(enamelength)

#문제15
emp %>% filter(comm != "NA") %>% count
emp %>% filter(!is.na(comm)) %>% count


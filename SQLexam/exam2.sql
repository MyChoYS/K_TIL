SELECT * 
FROM edu09db.emp;



SELECT *
FROM edu09db.emp
ORDER BY sal;



SELECT *
FROM edu09db.emp
ORDER BY sal DESC;



SELECT * 
FROM edu09db.emp
ORDER BY hiredate;



SELECT * 
FROM edu09db.emp
ORDER BY hiredate DESC;




SELECT * 
FROM edu09db.emp
WHERE deptno = 30;



SELECT ename, sal, deptno 
FROM edu09db.emp
WHERE empno = 7900;




SELECT ename, sal, deptno 
FROM edu09db.emp
WHERE ename = 'JONES';




SELECT ename, sal, deptno 
FROM edu09db.emp
WHERE ename = 'jones';




SELECT ename, sal, deptno 
FROM edu09db.emp
WHERE ename = 'J%';



SELECT ename, sal, deptno 
FROM edu09db.emp
WHERE ename like 'J%'; -- like를 써야 J로 시작하는 ~




SELECT ename, sal, deptno 
FROM edu09db.emp
WHERE ename LIKE '%O%'; -- O의 앞,뒤로 단어가 무엇이 있든




SELECT ename, sal, deptno 
FROM edu09db.emp
WHERE ename LIKE '%O__'; -- O뒤에 딱 두글자 있는 것만





SELECT ename, sal, hiredate 
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981'; -- hirdedate에서 년도만 뽑아서~ 




SELECT ename, sal, date_format(hiredate, '%Y') 
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981';





SELECT ename 직원명, sal 급여, date_format(hiredate, '%Y') "입사 년도" -- select 이름 바꾸기 
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981';




SELECT ename 직원명, job 직무, date_format(hiredate, '%Y') "입사 년도"
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981'


AND job = 'manager';


SELECT ename 직원명, job 직무, date_format(hiredate, '%Y') "입사 년도", deptno "부서 번호"
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981'
AND job = 'manager'
AND deptno = 20;




SELECT *
FROM edu09db.emp
WHERE deptno = 10
OR deptno = 20;




SELECT *
FROM edu09db.emp
WHERE deptno IN (10,20);




SELECT *
FROM edu09db.emp
WHERE sal >= 2000
AND sal <= 3000;



SELECT *
FROM edu09db.emp
WHERE sal BETWEEN 2000 AND 3000;




SELECT deptno, SUM(sal) 
FROM edu09db.emp
GROUP BY deptno;




SELECT deptno, SUM(sal) 
FROM edu09db.emp
GROUP BY deptno
HAVING SUM(sal) > 10000;




SELECT deptno "부서번호", SUM(sal) "부서별 급여합"
FROM edu09db.emp
GROUP BY deptno;




SELECT deptno "부서번호", MAX(sal) "부서별 최대급여"
FROM edu09db.emp
GROUP BY deptno;




SELECT deptno "부서번호", job 직무, MAX(sal) "부서별 직무별 최대  급여"
FROM edu09db.emp
GROUP BY deptno, job;



SELECT job, COUNT(*)
FROM edu09db.emp
WHERE deptno = 30
GROUP BY job;




SELECT job, COUNT(*)
FROM edu09db.emp
WHERE deptno = 30
GROUP BY job
HAVING COUNT(*) > 2;




SELECT ename, sal 
FROM edu09db.emp
ORDER BY sal DESC;

 
 

SELECT ename, concat(sal, '원') 
FROM edu09db.emp
ORDER BY sal DESC;




SELECT ename, concat(format(sal, 0), '원') 
FROM edu09db.emp
ORDER BY sal DESC;



SELECT job
FROM edu09db.emp;



SELECT distinct job -- 중복 제거 결과 
FROM edu09db.emp;



SELECT ename
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981';


SELECT ename
FROM edu09db.emp
WHERE deptno = 10;



SELECT ename
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981'  -- 두 SELECT 결과 모두 있는 것들 (중복)
UNION all
select ename
FROM edu09db.emp
WHERE deptno = 10;



SELECT ename
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981'
UNION						 -- 중복(X)
SELECT ename
FROM edu09db.emp
WHERE deptno = 10;



SELECT ename
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981'
INTERSECT          -- (교집합)
SELECT ename
FROM edu09db.emp
WHERE deptno = 10;



SELECT ename
FROM edu09db.emp
WHERE date_format(hiredate, '%Y') = '1981'
EXCEPT     -- (차집합)
SELECT ename
FROM edu09db.emp
WHERE deptno = 10;



SELECT ename, '근무중'
FROM edu09db.emp;



SELECT ename, '근무중', 100, NOW()
FROM edu09db.emp;




SELECT ename, sal, sal*12
FROM edu09db.emp;



SELECT *
FROM edu09db.emp
ORDER BY sal DESC
LIMIT 1;



SELECT *
FROM edu09db.emp
ORDER BY sal DESC
LIMIT 7;




SELECT *
FROM edu09db.emp
ORDER BY sal DESC
LIMIT 5 OFFSET 0;   -- OFFSET : 몇 번째부터 추출할지 




SELECT *
FROM edu09db.emp
ORDER BY sal DESC
LIMIT 3 OFFSET 3;  -- 4번째부터 3개를 꺼내시오. 라는 뜻 edu09db
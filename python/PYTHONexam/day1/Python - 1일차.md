# Python - 1일차

>  Python 3.8.7 버전 사용

---



### 개념 

앞서 내린 명령 재활용 가능, 다시 수행할 명령으로 이동하여 `enter`누르기 

IDLE Shell 3.8.7 

##### 스크립트 모드

> 텍스트 파일에 일련의 명령어를 작성하여 한꺼번에 순차적으로 실행



기타 등등은 그냥 파이썬 강의교안 1.pdf 참고..

----------

### [파이썬 프로그래밍의 기초 구문]

- 프로그램을 구성하는 요소들

  **(1) 리터럴 : 프로그램에서 다루는 데이터 값**
  					EX: 10, 3.14, 'num', "num", "김", 김 -> 리터럴아님, 변수임 ''가 없음, True, False, 123,
                      '123'(문자열)

  

  **(2) 변수 : 값을 저장하려는 메모리 영역에 부여한 이름(두 번이상 사용할 결과값에 용이)
                   메모리에 이름을 붙이고 값을 저장하는 것.**

  ex.(1+2+3+4+5+6+7+8+9+10) / 10

  ​	(1+2+3+4+5+6+7+8+9+10) * 10

  ​	(1+2+3+4+5+6+7+8+9+10) - 10

     -> result = (1+2+3+4+5+6+7+8+9+10)
          result /10
  		result * 10
  		result - 10 으로 대체 가능함

  

   - 만들어서 사용한다.

   - 변수명 규칙 : 키워드는 변수명이 될 수 없다.
                            숫자로 시작할 수 없다.
                            특수문자는 _(언더스코어)만 사용 가능하다.
                            공백사용 불가능하다.
                            대소문자 구분(NUM,num,Num 다 다른 변수)

   - 변수명 = 식(리터럴, 변수, 연산식, 함수의호출식)

   - L-value = R-value
     (방,메모리공간)    (값)

     v1 = 10

     v2 = 20

     v3 = v1 + v2

     v4 = v1

     v4 = v1 + 100

     v4 = v5 --> 불가능,구문오류발생 R-value를 사용하려면 이미 만들어져 있어야함

     

     **규칙**

     키워드나 내장 함수, 표준 모듈 명은 사용할 수 없음

     > import keyword
     >
     > keyword.kwlist
     >
     > ['False', 'None', 'True', 'and', 'as', 등 자세한 것은 강의교안1 참조]

     

  **(3) 연산자와 연산식(식)**

  ​		연산자 : 값을 가지고 처리하려는 기능을 나타내는 기호
  ​						`(+, -, *, /, ==, !=, >, <, and, or, +=, -=, *=, =)`
  ​        피연산자 : 연산의 대상이 되는 값(변수, 리터럴, 연산식 --> 식 )
  ​        연산식 : 연산자와 피연산으로 구성된 식이 연산식

  

  **(4) 데이터타입(python)**

  > 데이터 값의 종류 : 숫자형, 문자열형, 부울형(대수형)=참,거짓 ,

  

  ##### 데이터타입에 따라 달라지는 계산결과

  123 * 3 -->  369 (숫자)
  '123' * 3 --> '123123123' (문자열)
  "10" + '20' --> "1020"
  '10' + 20 --> 에러
  '10' + str(20) --> '1020'   [str() : 문자열로 바꿔주는 함수]

  > 데이터 종류에 따라 결과값이 달라진다.   

  

  **(5) 주석**
       코드에 대한 설명, 일부 코드를 실행하지 않게 하려는 경우

  ​	단일행 주석 - #xxxxxxx
  ​	다중행 주석 - """ xxxxxxxxxxxxx
  ​                                 xxxxxxxxxxxxxxx"""  --> 좀 이상함

  

  **(6) 함수**

  ​      프로그래밍에서의 함수(서브루틴) 
  ​	  자주 사용되는 명령(코드)들을 담고있는 블럭(주머니) --> 프로그램의 재사용성
  ​	  함수에 의해 처리되는 기능에 따라 데이터를 받을 수도 있고 수행 결과값을 리턴할 수 있다.
  ​      (수행 결과값이 없는 경우에는 None 이라는 리터럴이 리턴된다.)

    - 함수 만드는 방법 : def 함수명() : 
      									코드블럭
    - 함수 사용하는 방법 : 호출
           ex. 함수명()
                 함수명(값1, 값2)

  *** 여러 개 출력 결과를 공백이나 구분자(Separator) 사용하여 구별 *** 

  > print(a,b sep = ',') >> 12,34

  **input 명령 **

  변수 = input('질문 내용')

  괄호 안에 질문 내용 입력

  사용자가 질문에 대해 입력한 값 돌려줌(문자열로 ex.5 라고 쳐도 "5"임)

  ex. age = input('몇 살이세요?' ) >> '몇 살이세요?' 문구가 뜬 후, 답변을 쓸 때까지 대기상태

  > 처음부터 정수를 입력 받으려면  input()호출문을 int()로 감싼다. ex. 변수 = int(input('질문 내용'))

  **int() 함수 ** 

  입력받은 문자열을 정수로 바꿈

  price = input('가격을 입력하세요 : ')

  num = input('개수를 입력하세요 : ')

  sum = int(price) * int(num)

  print ('총액은', sum, '원입니다')

  

  **(7) 기타**

##### 		들여쓰기, 개행

​		기본적으로 4칸 or tab 한번으로 if와 같은 구절에서 소속을 나타냄



###### 		기타 자세한 다른 기본 구조는 강의교안 1 참조







-----------

### 로그 (211004)

```python
Python 3.8.7 (tags/v3.8.7:6503f05, Dec 21 2020, 17:59:51) [MSC v.1928 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> hi
Traceback (most recent call last):
  File "<pyshell#0>", line 1, in <module>
    hi
NameError: name 'hi' is not defined
>>> "hi"
'hi'
>>> exit()
>>> 100*200
20000
>>> 2*2
4
>>> 2*3
6
>>> 2=3
SyntaxError: cannot assign to literal
>>> 2==3
False
>>> 3==3
True
>>> ko
Traceback (most recent call last):
  File "<pyshell#9>", line 1, in <module>
    ko
NameError: name 'ko' is not defined
>>> 2 !=3
True
>>> 2 !==3
SyntaxError: invalid syntax
>>> 200
200
>>> num
Traceback (most recent call last):
  File "<pyshell#13>", line 1, in <module>
    num
NameError: name 'num' is not defined
>>> num + 200
Traceback (most recent call last):
  File "<pyshell#14>", line 1, in <module>
    num + 200
NameError: name 'num' is not defined
>>> num = 100
>>> num
100
>>> num + 200
300
>>> num = 1000
>>> num
1000
>>> num + 200
1200
>>> 
>>> 
>>> num + 200
1200
>>> 
>>> 
>>> 
>>> 
>>> 
>>> for y in range(1,10):
	for x in range(y) :
		print('*', end ='')
	print()

	
*
**
***
****
*****
******
*******
********
*********
>>> 
====================== RESTART: C:/CYS/PYTHONexam/day1/test.py ======================
*
**
***
****
*****
******
*******
********
*********
>>> 
=================================== RESTART: Shell ==================================
>>> 
=================================== RESTART: Shell ==================================
>>> 123 * 2
246
>>> 123 * 2
246
>>> 123 * 3
369
>>> '123' * 3
'123123123'
>>> '@' * 100
'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
>>> '10' + "20"
'1020'
>>> "10" + "20"
'1020'
>>> '10' + 20
Traceback (most recent call last):
  File "<pyshell#42>", line 1, in <module>
    '10' + 20
TypeError: can only concatenate str (not "int") to str
>>> 
>>> #다중행주석
>>> #단일행주석
>>> """다중행주석          ㅁㄴㅇㅁㄴㅇ """
'다중행주석          ㅁㄴㅇㅁㄴㅇ '
>>> '''다중행주석 '''
'다중행주석 '
>>> ```다중행주석 ```
SyntaxError: invalid syntax
    
>>> print(3+4)
7
>>> print(3+4, 10+20)
7 30
>>> print(3+4,10+20, sep="-")
7-30
>>> print(3+4,10+20, sep=":")
7:30
>>> print(10, '가나다', 3.14, True, 123)
10 가나다 3.14 True 123
>>> print(10, '가나다', 3.14, True, 123, sep = "@")
10@가나다@3.14@True@123
>>> a = "강아지"
>>> b = "고양이"
>>> print(a)
강아지
>>> print(b)
고양이

>>> price = input('가격을 입력하세요 : ')

num = input('개수를 입력하세요 : ')

sum = int(price) * int(num)

print ('총액은', sum, '원입니다')


SyntaxError: multiple statements found while compiling a single statement
>>> price = input('가격을 입력하세요 : ')
가격을 입력하세요 : 100
>>> 

num = input('개수를 입력하세요 : ')




개수를 입력하세요 : 5
>>> 


print ('총액은', sum, '원입니다')
총액은 <built-in function sum> 원입니다
>>> 
sum = int(price) * int(num)

print ('총액은', sum, '원입니다')
SyntaxError: multiple statements found while compiling a single statement
>>> 

sum = int(price) * int(num)


>>> 
>>> 

print ('총액은', sum, '원입니다')
총액은 500 원입니다
>>> price + num
'1005'
>>> price * num
Traceback (most recent call last):
  File "<pyshell#74>", line 1, in <module>
    price * num
TypeError: can't multiply sequence by non-int of type 'str' #input은문자열로 반환

>>> price * int(num)
'100100100100100'
>>> int(price) * int(num)
500
>>> 
```


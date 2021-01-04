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
	
s1 = "pythonjavascript"
s2 = "010-7777-9999"
s3 = "PYTHON"
s4 = "Python"
s5 = "https://www.python.org/"
s6 = '891022-2473837'
s7 = '100'
s8 = ' The Zen of Python'

print(len(s1))
a = s2.split('-')
print(''.join(a))
print(s3[::-1])
print(s4.lower())
i = s5.split('/')
print(i[2])

def gender(a):
    if s6[7] == '1' or s6[7] == '3':
        sex='남성'
    elif s6[7]== '2' or s6[7] == '4':
        sex='여성'
    return sex
print(gender(s6))

print(int(s7))
print(float(s7))
print(s8.count('n'))
print(s8.index('Z'))
print((s8.upper()).split(' '))
# 1) s1 = "pythonjavascript" 에서 의 길이를 출력한다.
# (2) s2 = "010-7777-9999" 에서 01077779999 을 출력한다.
# (3) s3 = "PYTHON" 에서 NOHTYP 를 출력한다.
# (4) s4 = "Python" 에서 python 을 출력한다.
# (5) s5 = "https://www.python.org/" 에서 www.python.org 만을 뽑아서 출력한다.
# (6) 주민등록 번호에서 7자리 숫자를 사용해서 남성, 여성을 판별한다. (1,3 : 남성, 2,4 : 여성)
# s6 = '891022-2473837'
# (7) s7 = '100' 에서 s7 값을 정수형 숫자로 그리고 실수형 숫자로 변환하여 출력한다.
# (8) s8 = ' The Zen of Python' 에서 ' n' 문자가 몇 개인지 출력한다.
# (9) s8 에서 ' Z'  의 위치를 출력한다.
# (10) s8 에서 모두 대문자로 변환한 후 공백단위로 분리해서 리스트로 만들어 출력한다.\


evenNum = 0
oddNum = 0

for i in range(1, 101):
    if i%2==0:
        evenNum += i
    else:
        oddNum += i

print('1부터 100까지의 숫자들중에서')
print('짝수의 합은', evenNum, '이고')
print('홀수의 합은', oddNum, '이다.')
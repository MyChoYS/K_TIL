evennum = 0
oddnum = 0
for i in range(1,101):
    if i % 2 ==0:
        evennum += i
    else:
        oddnum += i
print("1부터 100까지의 숫자들 중에서", "짝수의 합은",evennum,"이고","홀수의 합은",oddnum,"이다.")
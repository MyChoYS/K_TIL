for i in range(9,3,-1):
    a = i % 2
    if a == 0:
        a = "짝수"
    else:
        a = "홀수"
    print(i," : ",a)

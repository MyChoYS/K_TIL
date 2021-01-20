def expr(num1,num2,x):
    if x == "+":
        ans = num1 + num2
    elif x == "-":
        ans = num1 - num2
    elif x == '*':
        ans = num1 * num2
    elif x == '/':
        ans = num1 / num2
    else:
        ans = None
    return ans

result = expr(3,5,"+")
if result != None:
    print("연산 결과 :", result)
else:
    print("수행 불가")

result = expr(3,5,"#")
if result == None:
    print("수행 불가")
else:
    print("연산 결과 :", result)
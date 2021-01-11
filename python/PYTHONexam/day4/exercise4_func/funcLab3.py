def expr(num1,num2,plz):
    plz = str(plz)
    if plz == "+":
        result = num1 + num2
    elif plz == "-":
        result = num1 - num2
    elif plz == "*":
        result = num1 * num2
    elif plz == "/":
        result = num1 / num2
    else:
        result = False

    if result == False:
        print("수행 불가")
    else:
        print("연산결과 :", result)
    return result

print(expr(1,4,"/"))

def print_gugudan(num):
    if type(num) != int:
        pass
    elif num >=1 and num <=9:
        for i in range(1,10):
            print(num,"*",i,"=",num * i)
    else:
        pass

print_gugudan(5)



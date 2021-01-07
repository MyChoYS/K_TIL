def print_triangle(num):
    if num >= 1 and num <= 10:
        for i in range(num + 1):
            print("*" * i)
    else:#else구문을 삭제해도 같은 결과이다.
        pass



print_triangle(7)
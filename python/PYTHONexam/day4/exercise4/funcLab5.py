def print_triangle(num):
    if num >= 1 and num <= 10:
        for num in range(num,0,-1):
            print("@" * num)
    else:
        pass



print_triangle(5)
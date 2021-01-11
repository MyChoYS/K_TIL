def print_triangle_withdeco(num,deco="%"):
    if 1 <= num <= 10:
        for i in range(1,num+1):
            print((num-i)*" ",str(deco)*i)

print_triangle_withdeco(2)
print_triangle_withdeco(11,"h")
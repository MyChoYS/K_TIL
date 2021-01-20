import random

i = random.randint(0,100)
list_num = [random.randint(0,100) for i in range(10)]

dic_num = {i : 'pass' if i > 60 else 'nopass' for i in list_num}

print(list_num)
print(dic_num)
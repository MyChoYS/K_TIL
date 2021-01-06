import random
oper_num = random.randint(1,10)

if oper_num == 1 or oper_num == 6:
    cal = 300 + 50
elif oper_num ==1 or oper_num == 7:
    cal = 300 - 50
elif oper_num == 3 or oper_num == 8:
    cal = 300 * 50
elif oper_num == 4 or oper_num == 9:
    cal = 300 / 50
else:
    cal = 300 % 50
print("결과값:", cal)
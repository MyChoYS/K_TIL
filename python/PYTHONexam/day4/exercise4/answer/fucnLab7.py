
def differtwovalue(x1,x2):
    if x1 >= x2:
        ans = x1 - x2
    else:
        ans = x2 - x1
    return ans

import random
for i in range(1,6):
    a = random.randint(1,30)
    b = random.randint(1,30)
    print(a,"와",b,"의 차는",differtwovalue(a,b),"입니다.")

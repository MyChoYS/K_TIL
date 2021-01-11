import random
x = random.randint(1,10)
y = random.randint(30,40)
a = 0
for i in range(x,y+1):
    if i%2 ==0:
        a += i

print(x,y)
print("x 부터 y까지의 짝수의 합", a)
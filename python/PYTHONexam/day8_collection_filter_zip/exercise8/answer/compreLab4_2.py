import random
n = []
for i in range(10):
    n.append(random.randint(0, 100))
print(n)
d = {i + 1: 'pass' if n[i] >= 60 else 'nopass' for i in range(10)}
print(d)
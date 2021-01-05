for x in range(1, 51):
    if (x % 10 == 0):
        print('+', end= '')
    else:
        print('-', end = '')

for x in range(1, 5):
    print('-' * 9, end = '')
    print('+', end = '')

x = 1
while x <= 50:
    if (x % 10):
        print('-', end= '')
    else:
        print('+', end = '')
    x += 1

for x in range(1, 51):
    if (x % 5 == 0):
        print('+', end= '')
    else:
        print('-', end = '')

for x in range(1, 51):
    if (x % 10 == 5):
        print('+', end= '')
    else:
        print('-', end = '')
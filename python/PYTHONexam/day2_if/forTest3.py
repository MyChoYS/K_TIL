for x in range(1, 51):
    if (x % 10 == 0):
        print('+', end= '')
    else:
        print('-', end = '')
print()
for x in range(1, 5):
    print('-' * 9, end = '')
    print('+', end = '')
print()
for x in range(1, 51):
    if (x % 5 == 0):
        print('+', end= '')
    else:
        print('-', end = '')
print()
for x in range(1, 51):
    if (x % 10 == 5):
        print('+', end= '')
    else:
        print('-', end = '')
import random
grade = random.randint(1,6)

if grade != 4 and grade !=5 and grade !=6:
    print(grade,"학년은 저학년입니다.")
elif grade != 1 and grade != 2 and grade!=3:
    print(grade,"학년은 고학년입니다.")

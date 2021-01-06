import random
score = random.randint(0,100)

if 90 <= score <= 100:
    grade = 'A'
elif 80 <= score <=89:
    grade = 'B'
elif 70 <= score <= 79:
    grade = 'C'
elif 60 <= score <= 69:
    grade = 'D'
else :
    grade = 'F'
print(score,"점은", grade,"등급입니다.")
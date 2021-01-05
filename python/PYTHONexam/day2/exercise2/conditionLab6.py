import random
score = random.randint(0,100)

if score >=90 and score <=100:
    myscore = "A"
elif score >=80 and score <90:
    myscore = "B"
elif score >= 70 and score <80:
    myscore = "C"
elif score >= 60 and score <70:
    myscore = "D"
elif score >= 0 and score <60:
    myscore = "F"
print(score,"점은",myscore,"등급입니다.")

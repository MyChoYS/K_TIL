mammal = { '코끼리', '고릴라', '사자', '고래', '사람', '원숭이', '개' }
primate = { '사람', '원숭이', '고릴라' }

if '사자' in mammal:
    print("사자는 포유류이다")
else:
    print("사자는 포유류가 아니다.")


#집합 간의 비교는 대소비교가 아니라 포함관계를 체크,,p.238,파이썬 정복
print(primate <= mammal)
print(primate < mammal)
print(primate <= primate)
print(primate < primate)


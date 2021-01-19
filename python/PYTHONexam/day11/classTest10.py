class Student:
    count = 0 # 클래스 변수 초기화 맨 밑에서 +=1 때문에 count=1로 변화, 다른 데이터 대입될때마다 바뀌는 인스턴스변수와 달리 지속

    def __init__(self, name, korean, math, english, science):
        # 인스턴스 변수 초기화
        self.name = name
        self.korean = korean
        self.math = math
        self.english = english
        self.science = science

        # 클래스 변수에 값 설정
        Student.count += 1
        print("{}번째 학생이 생성되었습니다.".format(Student.count))


# 학생 리스트를 선언합니다.
students = [
    Student("윤인성", 87, 98, 88, 95),
    Student("연하진", 92, 98, 96, 98),
    Student("구지연", 76, 96, 94, 90),
    Student("나선주", 98, 92, 96, 92),
    Student("윤아린", 95, 98, 98, 98),
    Student("윤명월", 64, 88, 92, 92)
]
t= Student("윤인성", 87, 98, 88, 95)
# 출력합니다.
print(t.korean)
print("현재 생성된 총 학생 수는 {}명입니다.".format(Student.count))


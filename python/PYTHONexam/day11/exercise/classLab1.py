class Member:
    def __init__(self):
        self.name = None #걍 name = None 해도 된다. 이것도 되고 저것도 된다
        self.account = None
        self.password = None
        self.birthyear = None

mem1 = Member()
mem2 = Member()
mem3 = Member()

mem1.name = "kim"
mem1.account = "abc"
mem1.password = 12456
mem1.birthyear = 1999

mem2.name = "cho"
mem2.account = "abac"
mem2.password = 124356
mem2.birthyear = 19991

mem3.name = "park"
mem3.account = "abdc"
mem3.password = 124
mem3.birthyear = 1985

print(f"""회원1 : {mem1.name} ({mem1.account}, {mem1.password}, {mem1.birthyear})""")
print(f"""회원2 : {mem2.name} ({mem2.account}, {mem2.password}, {mem2.birthyear})""")
print(f"""회원3 : {mem3.name} ({mem3.account}, {mem3.password}, {mem3.birthyear})""")
##init 단계의 변수를 밖에서도 지정해 줄 수 있다
###mem1 = Member()했을때, mem1은 Member()클래스에 들어와 있는것 으로 이해, 그렇기 때문에 안의 변수를 수정가능
from django.db import models
##클래스설정을 먼저 하고 마이그레이션을 해야한다. 클래스안에 테이블이 없으면 데이터베이스 등록을 할필요가 없기 때문에 오류가 뜨게 된다.
class DBTest(models.Model) :
    name = models.CharField(max_length=10) #max_length 속성은 필수,,
    age = models.IntegerField(null=True) #null=true >> age는 선택적

    def __str__(self):
        return self.name + ":" + str(self.age)

class Emp(models.Model) :
    empno = models.IntegerField(primary_key=True)
    ename = models.CharField(max_length=10)
    job = models.CharField(max_length=15)
    mgr = models.IntegerField()
    hiredate = models.DateField()
    sal = models.IntegerField()
    comm = models.IntegerField(null=True)
    deptno = models.IntegerField()

    def __str__(self):
        return str(self.empno)+","+self.ename +","+str(self.hiredate)+\
               ","+ str(self.sal) + ","+ str(self.deptno)
# Create your models here.

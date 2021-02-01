from django.db import models

class DBTest(models.Model) :
    name = models.CharField(max_length=10) #max_length 속성은 필수,,
    age = models.IntegerField(null=True) #null=true >> age는 선택적

    def __str__(self):
        return self.name + ":" + str(self.age)
# Create your models here.

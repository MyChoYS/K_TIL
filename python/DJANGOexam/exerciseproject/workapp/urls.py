from django.urls import path
from . import views #.한개는 현재 디렉토리라는 뜻. 즉, secondapp

urlpatterns = [
    path('exercise1',views.exercise1,name='exarcise1'),
    path('exercise2', views.exercise2, name='exarcise2'),

]
from django.urls import path
from . import views #.한개는 현재 디렉토리라는 뜻. 즉, secondapp

urlpatterns = [
    path('',views.exam1,name='exam1'),
    path('exam2/', views.exam2, name='exam2'),

]
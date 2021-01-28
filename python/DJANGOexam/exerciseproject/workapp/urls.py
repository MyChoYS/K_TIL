from django.urls import path
from . import views #.한개는 현재 디렉토리라는 뜻. 즉, secondapp

urlpatterns = [
    path('exercise1/',views.exercise1,name='exarcise1'),
    path('exercise2/', views.exercise2, name='exarcise2'),
    path('product1/', views.product1, name='product1'),
    path('basket1/', views.basket1, name='basket1'),

]
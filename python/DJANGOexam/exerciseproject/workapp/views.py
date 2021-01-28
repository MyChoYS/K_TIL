from django.shortcuts import render
from django.http import  HttpResponse
from django.template import  loader
def exercise1(request):
    template = loader.get_template('exercise1.html')
    msg = "choys가 만든 첫 장고 웹 페이지 입니다5."
    context = {'result': msg} ##항상딕셔너리형태로 넣어야 한다.
    return HttpResponse(template.render(context, request))

def exercise2(request):
    if request.method == 'POST':
        who = request.POST['who']
        content = request.POST['content']
        context = {'who' : who,'content':content}
    else:
        context = None
    return render(request,'exercise2.html',context)

def product1(request):
    if request.method == 'GET':
        product = request.GET.getlist('product')

        context = {'product': product}

    return render(request,'product1.html',context)

def basket1(request):
    context = None
    return render(request,'basket1.html',context)


# Create your views here.

def myprint(*p,deco="**",sep=","):

    if bool(p) == False:
        print("Hello Python")
    else:

        print(deco,end="")
        print(*p,sep=sep,end="")
        print(deco,end="")


##답
def myprint1(*a, **args):
   ''' deco = '**'
    s = ','
    if 'deco' in args.keys():
        deco = args['deco']
    if 'sep' in args.keys():
        s = args['sep']'''
   deco = args.get('deco','**')
   s = args.get('sep',',')
   result = ''
   if len(a) == 0:
        print("hello python")
   else:
       result += deco
       for i in range(len(a)):
           result += str(a[i])
           if i < (len(a) - 1):
               result += s
       result += deco
       print(result)


myprint1(100)
###############################
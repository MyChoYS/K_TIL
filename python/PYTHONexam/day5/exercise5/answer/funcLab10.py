def sumALL(*p):
    count=0
    ans=0
    for i in p:
        if type(i) == int:
            count+=1
            ans+=i
        else: pass
    if len(p)==0 or count ==0 :
        ans = None
    return ans

print(sumALL(1,2,3))
print(sumALL(3,'a', '*'))
print(sumALL())
print(sumALL('a','b', True))
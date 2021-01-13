def fct_fac(n) :
    def exp(x) :
        return x**n
    return exp

rtnf1 = fct_fac(2)
rtnf2 = fct_fac(3)

print(type(rtnf1))
print(type(rtnf2))

print(rtnf2)

print(rtnf1(4))
print(rtnf2(4))

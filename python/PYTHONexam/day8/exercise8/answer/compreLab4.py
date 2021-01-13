import random
randlist = [random.randint(0,100) for _ in range(10)]
print(randlist)

dic_p_np = { (randlist.index(e)+1): 'pass' if e > 60 else 'nopass' for e in randlist}
print(dic_p_np)
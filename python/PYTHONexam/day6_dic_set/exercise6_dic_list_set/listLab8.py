list1 = [["B","C","A","A"],
         ["C","C","B","B"],
         ["D","A","A","D"]]
asum = 0;bsum = 0;csum = 0;dsum = 0

for i in range(len(list1)):
    asum += list1[i].count("A")
for i in range(len(list1)):
    bsum += list1[i].count("B")
for i in range(len(list1)):
    csum += list1[i].count("C")
for i in range(len(list1)):
    dsum += list1[i].count("D")
    
print("A는",asum,"개 입니다.") ## chr(65+i)이용했어도 됐다.
print("B는",bsum,"개 입니다.")
print("C는",csum,"개 입니다.")
print("D는",dsum,"개 입니다.")

'''다른방법 
    count1,count2,count3,count4 = 0,0,0,0
    for l in list1:
        for e in l:
            if e == 'A':
            count1 +=1
    list2 = [count1,count2,,,]
    이런식~
'''
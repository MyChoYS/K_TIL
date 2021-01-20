list1=[['B', 'C', 'A', 'A'], ['C', 'C', 'B', 'B'], ['D', 'A', 'A', 'D']]

count1, count2, count3, count4 = 0,0,0,0
for l in list1:
    for e in l:
        if e == 'A':
            count1+=1
        elif e == 'B':
            count2 +=1
        elif e == 'C':
            count3 +=1
        elif e == 'D':
            count4 +=1

list2 = [count1, count2, count3, count4]

print("A 는 ", list2[0],"개 입니다.", sep="")
print("B 는 ", list2[1],"개 입니다.", sep="")
print("C 는 ", list2[2],"개 입니다.", sep="")
print("D 는 ", list2[3],"개 입니다.", sep="")

for i in range(4) :
    print(chr(65+i)," 는 ", list2[i], "개 입니다.", sep="")



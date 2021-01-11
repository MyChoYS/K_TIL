list1 = [[10,12,14,16],
         [18,20,22,24],
         [26,28,30,32],
         [34,36,38,40]]
list2 = []
list3 = []
print("1행 1열의 데이터 :",list1[0][0])
print("3행 4열의 데이터 :",list1[2][3])
print("행의 갯수 :",len(list1))
print("열의 갯수 :",len(list1[0]))#??
print("3행의 데이터들 :",list1[2])
print("2열의 데이터들 :",list1[1][1])

for i in range(len(list1)):
    list2.append(list1[i][i])
print("왼쪽 대각선 데이터들 :",list2,end="\n")

for i in range(len(list1)):
    list3.append(list1[i][len(list1)-1-i])
print("오른쪽 대각선 데이터들 :",list3)
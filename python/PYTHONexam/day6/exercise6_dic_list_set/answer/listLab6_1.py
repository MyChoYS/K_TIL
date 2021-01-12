list = [ [10, 12, 14, 16], [18, 20, 22, 24],[26, 28, 30, 32],[34,36,38,40]]

print("1행 1열의 데이터 :",list[0][0])
print("3행 4열의 데이터 :",list[2][3])

print("행의 갯수 :",len(list))
print("열의 갯수 :",len(list[0]))

print("3행의 데이터들 :",list[2][0],list[2][1],list[2][2],list[2][3])
print("2열의 데이터들 :",list[0][1],list[1][1],list[2][1],list[2][1])


print("왼쪽 대각선 데이터들 :",end ="")
for i in range(len(list)):
    print(list[i][i],end=" ")
print()
print("오른쪽 대각선 데이터들 :",end ="")
j = len(list[0])
for i in range(len(list)):
    print(list[i][j-1], end=" ")
    j = j - 1
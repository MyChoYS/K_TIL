list1 = [[10,20,30,40,50],[5,10,15],[11,22,33,44],[9,8,7,6,5,4,3,2,13]]
for i in range(len(list1)):
    sum = 0
    for d in list1[i]:
        sum += d
    print(i+1,"행의 합은 ",sum," 입니다.")


while True :
    word = input("문자열을 입력하시오. : ")
    wordlength = len(word)
    if wordlength >= 5 and wordlength <=8:
        continue
    elif wordlength != 0 and wordlength < 5:
        result = "*"+ word + "*"
    elif wordlength > 8 :
        result = "$" + word + "$"
    elif wordlength == 0:
        break
    print("유효한 입력 결과 : ",result)


# 문자열을 입력받아, 길이가 5미만이면 *를 붙여 출력하고, 8 초과이면 $를 붙여 출력

while True:
    word = str(input("문자열을 입력하세요 : "))
    word_length = len(word)

    if word_length == 0 :
        print("종료")
        break
    elif word_length >= 5 and word_length <= 8:
        continue
    elif word_length < 5:
        result = "*" + word + "*"
    else:
        result = "$"+ word + "$"
    print("유효한 입력 결과 : ", result)

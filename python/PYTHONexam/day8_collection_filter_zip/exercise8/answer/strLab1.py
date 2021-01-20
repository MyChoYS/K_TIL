def myemail_info(email):
    if '@' in email:
        ad = tuple(email.split('@'))
        return ad
    else :
        return None

print(myemail_info('1234@naver.com'))
print(myemail_info('abcd456@naver.com'))
print(myemail_info('1234naver.com'))

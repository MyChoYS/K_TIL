def myemail_info(email):
    if email.count('@') ==0:
        return None
    email = tuple(email.split('@')) ##tuple()
    return email

print(myemail_info('asdjkfhshlkadf@naver.com'))
print(myemail_info('asdasd'))


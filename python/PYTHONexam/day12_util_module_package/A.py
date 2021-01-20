import time
import datetime
print(__name__ +"모듈 : "+ str(datetime.datetime.now()))
time.sleep(3)
import B
time.sleep(3)
import C ##C에는 main이라는 조건이 붙어있기 때문에 실행 X!!
time.sleep(3)
import D
time.sleep(3)
print(__name__ +"모듈 : "+ str(datetime.datetime.now()))


##import구문은 모듈을 불러와서 실행까지 시킴.
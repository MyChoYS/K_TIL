import sys
sys.path.append("C:/PyStudy")

from mypack.calc import *
add.outadd(1,2)
multi.outmulti(1,2)
##report 패키지안에는 __init__.py 모듈이 없어서 all 실행이 안된다.

from mypack.report.table import * ## 위와달리 able은 모듈인데, 경로에 모듈까지 써놓고 import*는 가능하지만 권장하지는 않는다. 가독성이 떨어짐
outreport()
a()
b()
c()

'''package(폴더)안의 모든 모듈을 불러올 때에는, package내에 __init__.py라는 모듈을 포함하고 있어야 한다.
 그리고 내용안에는
 __all__ = ["add", "multi"]  -->이것이 적혀 있어야 모든(all)모듈을 불러올 수 있게 된다. 리스트 안에 모듈명이 있어야 불러옴.
 '''

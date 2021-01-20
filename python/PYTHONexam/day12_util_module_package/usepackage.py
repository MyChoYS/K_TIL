import sys 
sys.path.append("C:/PyStudy")
print(sys.path)
import mypack.calc.add
mypack.calc.add.outadd(1,2)

import mypack.report.table
mypack.report.table.outreport()


import mypack.calc.add as my1
my1.outadd(1,2)

import mypack.report.table as my2
my2.outreport()

'''sys로 path에 pystudy가 추가했기 때문에 그 안의 폴더들에 대해 import가 가능해짐. 다른 파일에서 다른 폴더안의 모듈을 import하는게 불가능했던것과 달리'''
'''package 는 모듈을 담는 디렉토리를 뜻한다. pystudy 폴더안의 mypack과 그 안의 calc,report가 그에 해당한다.'''



s1 = "pythonjavascript"
s2 = "010-7777-9999"
s3 = "PYTHON"
s4 = "Python"
s5 = "https://www.python.org/"
s6 = '891022-2473837'
s7 = '100'
s8 = 'The Zen of Python'

print('(1)',len(s1))
print('(2)',s2.replace('-',''))
print('(3)',s3[::-1])
print('(4)',s4.lower())
s5 = s5.replace('/','')
print('(5)',s5.replace('https:',''))

if s6[7] == 1 or s6[7] == 3:
    print('(6)',s6[7],"남성")
else:
    print('(6)',s6[7] ,"여성")

print('(7)',int(s7),float(s7))
print('(8)',s8.count('n'))
print('(9)',s8.find('Z'))

s8 = s8.upper()
s8 = s8.split()
print('(10)',s8)


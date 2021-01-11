dic1 = {"red":"#ff0000","blue":"#0000ff","green":"#008000","yellow":"#ffff00","orange":'#ffa500',
        "black":'#000000',"white":'#ffffff',"violet":'ee82ee',"pink":'#ffc0cb',"lime":'#00ff00'}

color_name = input("칼라명을 영문으로 입력하세요.")

if color_name in dic1:
    print(color_name, "칼라의 RGB 값은 ", dic1[color_name])
else:
    print(color_name,"칼라의 RGB 값을 찾을 수 없습니다.")


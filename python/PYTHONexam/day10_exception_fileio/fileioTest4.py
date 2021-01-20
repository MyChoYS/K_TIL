f = open("live.txt", "rt", encoding="UTF-8", errors='ignore')
print("[seek기능 처리가능]" if f.seekable() else "[seek기능 처리불가]" )
f.seek(12,0)##12바이트 이후부터 출력
text = f.read()
f.close()
print(text)

# =============== append  ===============
f = open("live.txt", "at", encoding="UTF-8") ##at로 내용추가
f.write("\n\n[추가]푸쉬킨 형님의 말씀이었습니다.")
f.close()

# =============== withas  ===============
with open("live.txt", "rt", encoding="UTF-8") as f: ##with as구문으로 시작하면 close 안해도 저절로 꺼짐
   text = f.read()
print(text)
help(f.seek)
# =============== listdir  ===============
import os

files = os.listdir("c:\\Temp")
print(type(files))
for f in files:
    print(f)

# =============== listdir2  ===============
import os

def dumpdir(path):
    files = os.listdir(path)
    for f in files:
        fullpath = path + "\\" + f
        if os.path.isdir(fullpath):
            print("[" + fullpath + "]")
            dumpdir(fullpath)
        else:
            print("\t" + fullpath)

dumpdir("C:\\git_hub\\K_TIL\\python\\PYTHONexam") #\는 두개써야됨 지워지니까~

help(os.listdir)

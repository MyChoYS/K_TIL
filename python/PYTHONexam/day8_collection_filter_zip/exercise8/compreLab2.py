def mycompredict(**key):
    mydic = {}
    if bool(key) == False:
        return mydic
    else:
        mydic = {'my' + k:v for k,v in key.items()}
    return mydic

print(mycompredict(a=6,b=7))
print(mycompredict())
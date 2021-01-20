class Book:
    store = "yes24" # 클래스변수
    def __init__(self,title,author,price):
        self.title = str(title) #인스턴스 변수
        self.author = str(author)
        self.price = int(price)

    def getBookinfo(self):
        get = (f"""{self.title} \n{self.author} \n{self.price}""")
        return str(get)


book1 = Book("파이썬 정복","김상형",22000)
book2 = Book("생활코딩!","이고잉",27000)

print(book1.getBookinfo(),'\n','*'*10)

print(book2.getBookinfo())
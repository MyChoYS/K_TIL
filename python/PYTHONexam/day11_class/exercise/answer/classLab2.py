class Book:
    store = "yes24" # 클래스변수
    def __init__(self, title, author, price):
        self.title = title      # 인스턴스변수
        self.author = author    # 인스턴스변수
        self.price = price      # 인스턴스변수

    def getBookInfo(self):
        info = self.title + ',' + self.author + ',' + str(self.price)
        return info

book1 = Book("파이썬 정복", "김상형", 22000)
book2 = Book("이것이 MariaDB다", "우재남", 30000)
book3 = Book("파이썬 웹프로그래밍", "김석훈", 22000)
book4 = Book("맛있는 MongoDB", "정승호", 28000)
book5 = Book("생활코딩! HTML+CSS+자바스크립트", "이고잉", 27000)

list = [book1, book2, book3, book4, book5]
cnt = 0
for info in list:
    print(info.getBookInfo().replace(',', '\n'))
    cnt = cnt+1
    if cnt<5:
        print('-'*9)

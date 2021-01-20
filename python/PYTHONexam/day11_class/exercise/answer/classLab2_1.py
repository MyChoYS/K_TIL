class Book:
    def __init__(self, title, author, price):
        self.title = title
        self.author = author
        self.price = price

    def getBookInfo(self):
        return f"{self.title},{self.author},{self.price}"


Book1 = Book('파이썬 정복', '김상형', 22000)
Book2 = Book('부의 대이동', '오건영', 17000)
Book3 = Book('보통의 언어들', '김이나', 14500)
Book4 = Book('아몬드', '손원평', 12000)
Book5 = Book('코스모스', '칼 세이건', 18500)


def printBookInfo(book):
    bookInfo = book.getBookInfo().split(',')
    for i in range(0, 3):
        print(bookInfo[i])
    print('-'*10)

printBookInfo(Book1)
printBookInfo(Book2)
printBookInfo(Book3)
printBookInfo(Book4)
printBookInfo(Book5)
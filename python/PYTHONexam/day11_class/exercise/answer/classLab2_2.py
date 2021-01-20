class Book:
    def __init__(self, title="파이썬 정복", author="김상형", price=22000):
        self.title = title
        self.author = author
        self.price = price

    def getBookInfo(self):
        return f"{self.title},{self.author},{self.price}"

b1 = Book()
b2 = Book("생활코딩! HTML+CSS+자바스크립트", "이고잉", 27000)
b3 = Book("돈을 부르는 작은 습관", "공형조", 15800)
b4 = Book("기억1", "베르나르 베르베르", 14800)
b5 = Book("적당히 가까운 사이", "댄싱스네일", 14500)

for i in [b1, b2, b3, b4, b5]:
    print(i.getBookInfo().replace(",", "\n"))
    print("-" * 10)
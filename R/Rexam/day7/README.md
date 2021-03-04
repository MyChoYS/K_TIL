# DAY7

정적 데이터 수집-1 

html_~

 html_nodes***(text, "ul>li[style$='green']")*** 조건 수집

table <- html_text**(html_nodes(text,"table *"))** 모든 컨텐츠 수집 

**tr.name --> class 선택할 때, '.'사용**

**tr#target --> id 선택할 때, '#'사용**

---

xpath ->

//editions/edition --> '//' 는 시작이 어디든 'edition'을 찾아서 ...

/editions/edition --> editions가 최상위임 

ex. /a//b/c -> /a/j/f/w/b/c or /a/b/c or /a/w/b/c 모두 포함 



크롬 개발자도구 copy > xpath로 카피하여 쓰면 편하다. 모두선택하고자하면 [1] 와 같은 인덱스를 빼면 된다. ex. div[1]/div -> div/div

//*[@id="old_content"]/table/tbody/tr[1]/td[2]/text()

----

#영화리뷰
nodes <- html_nodes(text,xpath="//*[@id='old_content']/table/tbody/tr/td[2]/text()") 
#태그로 묶여 있지 않아, css선택자로 접근 불가
review <- html_text(nodes)      #따라서 xpath를 사용해야 한다. xpath=를 꼭붙여줘야 css로 인식되지 않는다.
review
page <- data.frame(title, point, review)
print(page)
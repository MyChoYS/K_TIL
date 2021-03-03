# DAY7

데이터 수집, 정제 

html_~

 html_nodes***(text, "ul>li[style$='green']")*** 조건 수집

table <- html_text**(html_nodes(text,"table *"))** 모든 컨텐츠 수집 

**tr.name --> class 선택할 때, '.'사용**

**tr#target --> id 선택할 때, '#'사용**

---

xpath ->

//editions/edition --> '//' 는 시작이 어디든 'edition'을 찾아서 ...

/editions/edition --> editions가 최상위임 

크롬 개발자도구 copy > xpath로 카피하여 쓰면 편하다. 모두선택하고자하면 [1] 와 같은 인덱스를 빼면 된다. ex. div[1]/div -> div/div
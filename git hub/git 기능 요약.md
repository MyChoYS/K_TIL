# git 사용법

git add 주소설정(origin) 브런치이름(ex.master) :wd에서 이동

그 후에

git commit -m "커밋메시지" : 버전 저장

그 후에

git push origin master(브런치이름) : 깃허브 주소의 브런치로 전송



git pull origin master : 다운받아오기

git clone 깃허브주소 : 아예 복사 첨에만 쓰는거 폴더 받아올 때
(그 후부터는 그 폴더안의 주소가 origin으로 자동으로 설정되어 있음)



git merge 브런치이름 : 브런치 합병 (ex.마스터에서 이걸치면 마스터에 이브런치가 합병됨)

git branch 브런치이름 : 브런치(가지) 생성

git branch -d 브런치이름 : 브런치 삭제

git checkout 브런치 or log주소 : 다른 브런치로 HEAD이동할 때 사용 또는 과거의 다른 버전으로 이동할 때
(git log --oneline 에서 나오는 버전주소를 복사해 git checkout을 이용하면 과거의 버전으로 이동가능)



git status : git add, git commit 할 새로운 정보 확인,

git log : commit 된 기록 확인 (+ --oneline 할 시에는  간편하게 로그주소만 볼 수 있음)



git remote : 이 폴더가 git 주소가 설정되어 있는지 확인 가능, 설정되어있다면 origin 또는 다른 글이 뜸
git remote -v : 폴더에 설정된 자세한 git 주소 확인 가능





cd, touch, rm, rm -rf 등은 다른 파일 확인


조용상@jojo MINGW64 ~
$ git clone https://github.com/HaneulJ/wordchain.git
Cloning into 'wordchain'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.

조용상@jojo MINGW64 ~
$ ls
'3D Objects'/
 AppData/
'Application Data'@
 Contacts/
 Cookies@
'Creative Cloud Files'/
 Desktop/
 Documents/
 Downloads/
 Favorites/
'Foxit Reader SDK ActiveX.ini'
 IntelGraphicsProfiles/
 Links/
'Local Settings'@
 MicrosoftEdgeBackups/
 Music/
'My Documents'@
 NTUSER.DAT
 NTUSER.DAT{3e7e6b61-fba1-11ea-a689-d05099aa1761}.TM.blf
 NTUSER.DAT{3e7e6b61-fba1-11ea-a689-d05099aa1761}.TMContainer00000000000000000001.regtrans-ms
 NTUSER.DAT{3e7e6b61-fba1-11ea-a689-d05099aa1761}.TMContainer00000000000000000002.regtrans-ms
 NTUSER.DAT{80898c05-6617-11ea-8399-d05099aa1761}.TM.blf
 NTUSER.DAT{80898c05-6617-11ea-8399-d05099aa1761}.TMContainer00000000000000000001.regtrans-ms
 NTUSER.DAT{80898c05-6617-11ea-8399-d05099aa1761}.TMContainer00000000000000000002.regtrans-ms
 NetHood@
 Nox_share/
 OneDrive/
 Pictures/
 PrintHood@
 PycharmProjects/
 Recent@
'Saved Games'/
 Searches/
 SendTo@
 TIL/
 Templates@
 Videos/
 ansel/
 campus/
 d4ac4633ebd6440fa397b84f1bc94a3c.7z
 git/
 house/
 inittk.ini
 inst.ini
 knowledgeware.maps.properties
 knowledgeware.mups.properties
 ntuser.dat.LOG1
 ntuser.dat.LOG2
 ntuser.ini
 nuuid.ini
 practice/
 useruid.ini
 vmlogs/
 wordchain/
'시작 메뉴'@

조용상@jojo MINGW64 ~
$ cd wordchain/

조용상@jojo MINGW64 ~/wordchain (master)
$ ;s
bash: syntax error near unexpected token `;'

조용상@jojo MINGW64 ~/wordchain (master)
$ ls
README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ code README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ ls
README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   README.md


조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "을왕리"
[master 40e3c57] 을왕리
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
remote: Permission to HaneulJ/wordchain.git denied to MyChoYS.
fatal: unable to access 'https://github.com/HaneulJ/wordchain.git/': The requested URL returned error: 403

조용상@jojo MINGW64 ~/wordchain (master)
$ code .

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
remote: Permission to HaneulJ/wordchain.git denied to MyChoYS.
fatal: unable to access 'https://github.com/HaneulJ/wordchain.git/': The requested URL returned error: 403

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin main
error: src refspec main does not match any
error: failed to push some refs to 'https://github.com/HaneulJ/wordchain.git'

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git origin
git: 'origin' is not a git command. See 'git --help'.

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
Already up to date.

조용상@jojo MINGW64 ~/wordchain (master)
$ code .

조용상@jojo MINGW64 ~/wordchain (master)
$ git add
.git/      README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git add
.git/      README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "을왕리"
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ ls -a
./  ../  .git/  README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git log
commit 40e3c57f039635c1a3cae94291661deca0837533 (HEAD -> master)
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 13:24:30 2020 +0900

    을왕리

commit 1d04b3e04cd0e6e00ecac0df0efc8ce94733e59c (origin/master, origin/HEAD)
Author: Haneul Jeong <gksmfdl0510@gmail.com>
Date:   Wed Dec 30 13:19:30 2020 +0900

    Add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git log --oneline
40e3c57 (HEAD -> master) 을왕리
1d04b3e (origin/master, origin/HEAD) Add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ ^C

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "을왕리"
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ code .

조용상@jojo MINGW64 ~/wordchain (master)
$ git remote
origin

조용상@jojo MINGW64 ~/wordchain (master)
$ git remote -v
origin  https://github.com/HaneulJ/wordchain.git (fetch)
origin  https://github.com/HaneulJ/wordchain.git (push)

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
remote: Permission to HaneulJ/wordchain.git denied to MyChoYS.
fatal: unable to access 'https://github.com/HaneulJ/wordchain.git/': The requested URL returned error: 403

조용상@jojo MINGW64 ~/wordchain (master)
$ ^C

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   README.md


조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "을왕리"
[master 3be11ee] 을왕리
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 2 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git log --oneline
3be11ee (HEAD -> master) 을왕리
40e3c57 을왕리
1d04b3e (origin/master, origin/HEAD) Add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
remote: Permission to HaneulJ/wordchain.git denied to MyChoYS.
fatal: unable to access 'https://github.com/HaneulJ/wordchain.git/': The requested URL returned error: 403

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
remote: Permission to HaneulJ/wordchain.git denied to MyChoYS.
fatal: unable to access 'https://github.com/HaneulJ/wordchain.git/': The requested URL returned error: 403

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 4 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (6/6), 557 bytes | 278.00 KiB/s, done.
Total 6 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   1d04b3e..3be11ee  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ code .

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 290 bytes | 1024 bytes/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   3be11ee..236405e  master     -> origin/master
Updating 3be11ee..236405e
Fast-forward
 README.md | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ ls
README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   README.md


조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "카메라"
[master 387e11e] 카메라
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 298 bytes | 298.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   236405e..387e11e  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 279 bytes | 2.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   387e11e..ddf1112  master     -> origin/master
Updating 387e11e..ddf1112
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "오디오"
[master cbba4da] 오디오
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 291 bytes | 291.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   ddf1112..cbba4da  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 281 bytes | 1024 bytes/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   cbba4da..77f5783  master     -> origin/master
Updating cbba4da..77f5783
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md
git
조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "실력파"
[master 4f11382] 실력파
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 297 bytes | 297.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   77f5783..4f11382  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 280 bytes | 3.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   4f11382..771967d  master     -> origin/master
Updating 4f11382..771967d
Fast-forward
 README.md | 2 ++
 1 file changed, 2 insertions(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit m -"솔방울"
error: unknown non-ascii option in string: `-솔방울'
usage: git commit [<options>] [--] <pathspec>...

    -q, --quiet           suppress summary after successful commit
    -v, --verbose         show diff in commit message template

Commit message options
    -F, --file <file>     read message from file
    --author <author>     override author for commit
    --date <date>         override date for commit
    -m, --message <message>
                          commit message
    -c, --reedit-message <commit>
                          reuse and edit message from specified commit
    -C, --reuse-message <commit>
                          reuse message from specified commit
    --fixup <commit>      use autosquash formatted message to fixup specified commit
    --squash <commit>     use autosquash formatted message to squash specified commit
    --reset-author        the commit is authored by me now (used with -C/-c/--amend)
    -s, --signoff         add a Signed-off-by trailer
    -t, --template <file>
                          use specified template file
    -e, --edit            force edit of commit
    --cleanup <mode>      how to strip spaces and #comments from message
    --status              include status in commit message template
    -S, --gpg-sign[=<key-id>]
                          GPG sign commit

Commit contents options
    -a, --all             commit all changed files
    -i, --include         add specified files to index for commit
    --interactive         interactively add files
    -p, --patch           interactively add changes
    -o, --only            commit only specified files
    -n, --no-verify       bypass pre-commit and commit-msg hooks
    --dry-run             show what would be committed
    --short               show status concisely
    --branch              show branch information
    --ahead-behind        compute full ahead/behind values
    --porcelain           machine-readable output
    --long                show status in long format (default)
    -z, --null            terminate entries with NUL
    --amend               amend previous commit
    --no-post-rewrite     bypass post-rewrite hook
    -u, --untracked-files[=<mode>]
                          show untracked files, optional modes: all, normal, no. (Default: all)
    --pathspec-from-file <file>
                          read pathspec from file
    --pathspec-file-nul   with --pathspec-from-file, pathspec elements are separated with NUL character


조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   README.md


조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "솔방울"
[master 375b800] 솔방울
 1 file changed, 1 insertion(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 300 bytes | 300.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   771967d..375b800  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 282 bytes | 3.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   375b800..f5c8644  master     -> origin/master
Updating 375b800..f5c8644
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
Already up to date.

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "리젠트"
[master 6e49c53] 리젠트
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 299 bytes | 299.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   f5c8644..6e49c53  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 280 bytes | 4.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   6e49c53..d07c39c  master     -> origin/master
Updating 6e49c53..d07c39c
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "터미널"
[master 7f84110] 터미널
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 298 bytes | 298.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   d07c39c..7f84110  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ gir pull origin master
bash: gir: command not found

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 280 bytes | 4.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   7f84110..7afba14  master     -> origin/master
Updating 7f84110..7afba14
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "기러기"
[master 3e5e9e6] 기러기
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 293 bytes | 293.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   7afba14..3e5e9e6  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 282 bytes | 2.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   3e5e9e6..59a6388  master     -> origin/master
Updating 3e5e9e6..59a6388
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "지석진"
[master e0d29d9] 지석진
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 297 bytes | 297.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   59a6388..e0d29d9  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 278 bytes | 3.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   e0d29d9..a0d4b71  master     -> origin/master
Updating e0d29d9..a0d4b71
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "채시라"
[master 9720ede] 채시라
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 299 bytes | 299.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   a0d4b71..9720ede  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 280 bytes | 2.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   9720ede..c85c33f  master     -> origin/master
Updating 9720ede..c85c33f
Fast-forward
 README.md | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "기상청"
[master 7f50e29] 기상청
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 300 bytes | 300.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   c85c33f..7f50e29  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 280 bytes | 3.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   7f50e29..3c3b60f  master     -> origin/master
Updating 7f50e29..3c3b60f
Fast-forward
 README.md | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "대나무"
[master 813d4b7] 대나무
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 299 bytes | 299.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   3c3b60f..813d4b7  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ gir pull origin master
bash: gir: command not found

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 280 bytes | 3.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   813d4b7..30ba541  master     -> origin/master
Updating 813d4b7..30ba541
Fast-forward
 README.md | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "개장수"
[master 6adecbc] 개장수
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 301 bytes | 301.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   30ba541..6adecbc  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 279 bytes | 3.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   6adecbc..f271291  master     -> origin/master
Updating 6adecbc..f271291
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "원자력"
[master 46eb125] 원자력
 1 file changed, 2 insertions(+), 1 deletion(-)
g
조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 299 bytes | 299.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   f271291..46eb125  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ git pull origin master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 280 bytes | 2.00 KiB/s, done.
From https://github.com/HaneulJ/wordchain
 * branch            master     -> FETCH_HEAD
   46eb125..c35c048  master     -> origin/master
Updating 46eb125..c35c048
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

조용상@jojo MINGW64 ~/wordchain (master)
$ git add README.md

조용상@jojo MINGW64 ~/wordchain (master)
$ git commit -m "원맨쇼"
[master f4a81bd] 원맨쇼
 1 file changed, 2 insertions(+), 1 deletion(-)

조용상@jojo MINGW64 ~/wordchain (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

조용상@jojo MINGW64 ~/wordchain (master)
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 300 bytes | 300.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HaneulJ/wordchain.git
   c35c048..f4a81bd  master -> master

조용상@jojo MINGW64 ~/wordchain (master)
$ cd ~

조용상@jojo MINGW64 ~
$ mkdir branch

조용상@jojo MINGW64 ~
$ cd branch

조용상@jojo MINGW64 ~/branch
$ git branch
fatal: not a git repository (or any of the parent directories): .git

조용상@jojo MINGW64 ~/branch
$ git init
Initialized empty Git repository in C:/Users/조용상/branch/.git/

조용상@jojo MINGW64 ~/branch (master)
$ git branch

조용상@jojo MINGW64 ~/branch (master)
$ cd ~

조용상@jojo MINGW64 ~
$ cd branch/

조용상@jojo MINGW64 ~/branch (master)
$ git branch

조용상@jojo MINGW64 ~/branch (master)
$ git branch test
fatal: Not a valid object name: 'master'.

조용상@jojo MINGW64 ~/branch (master)
$ git log
fatal: your current branch 'master' does not have any commits yet

조용상@jojo MINGW64 ~/branch (master)
$ touch a.txt

조용상@jojo MINGW64 ~/branch (master)
$ git log
fatal: your current branch 'master' does not have any commits yet

조용상@jojo MINGW64 ~/branch (master)
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        a.txt

nothing added to commit but untracked files present (use "git add" to track)

조용상@jojo MINGW64 ~/branch (master)
$ git add a.txt

조용상@jojo MINGW64 ~/branch (master)
$ git commit -m "a.txt"
[master (root-commit) 7d6e30f] a.txt
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 a.txt

조용상@jojo MINGW64 ~/branch (master)
$ git status
On branch master
nothing to commit, working tree clean

조용상@jojo MINGW64 ~/branch (master)
$ git branch
* master

조용상@jojo MINGW64 ~/branch (master)
$ git log
commit 7d6e30fb6f6523af1602e47628b8c0f862c1be9d (HEAD -> master)
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 15:53:03 2020 +0900

    a.txt

조용상@jojo MINGW64 ~/branch (master)
$ touch b.txt

조용상@jojo MINGW64 ~/branch (master)
$ git add b.txt

조용상@jojo MINGW64 ~/branch (master)
$ git commit -m :ADD b.txt"
> git log
> git commit -m:
> "
> error: pathspec 'b.txt
> git log
> git commit -m:
> ' did not match any file(s) known to git

조용상@jojo MINGW64 ~/branch (master)
$ git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   b.txt


조용상@jojo MINGW64 ~/branch (master)
$ git commit -m "add b.txt."
[master 38a9b30] add b.txt.
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 b.txt

조용상@jojo MINGW64 ~/branch (master)
$ git log
commit 38a9b30aa78cb3feaf13b9b541790aee7fa8ddce (HEAD -> master)
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 15:56:20 2020 +0900

    add b.txt.

commit 7d6e30fb6f6523af1602e47628b8c0f862c1be9d
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 15:53:03 2020 +0900

    a.txt

조용상@jojo MINGW64 ~/branch (master)
$ git branch test

조용상@jojo MINGW64 ~/branch (master)
$ git branch
* master
  test

조용상@jojo MINGW64 ~/branch (master)
$ git test
git: 'test' is not a git command. See 'git --help'.

The most similar command is
        reset

조용상@jojo MINGW64 ~/branch (master)
$ git checkout test
Switched to branch 'test'

조용상@jojo MINGW64 ~/branch (test)
$ hi
bash: hi: command not found

조용상@jojo MINGW64 ~/branch (test)
$ touch c.txt

조용상@jojo MINGW64 ~/branch (test)
$ git status
On branch test
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        c.txt

nothing added to commit but untracked files present (use "git add" to track)

조용상@jojo MINGW64 ~/branch (test)
$ git add c.txt

조용상@jojo MINGW64 ~/branch (test)
$ git commit -m "add c.txt"
[test 825b3c5] add c.txt
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 c.txt

조용상@jojo MINGW64 ~/branch (test)
$ git branch
  master
* test

조용상@jojo MINGW64 ~/branch (test)
$ git checkout master
Switched to branch 'master'

조용상@jojo MINGW64 ~/branch (master)
$ git log
commit 38a9b30aa78cb3feaf13b9b541790aee7fa8ddce (HEAD -> master)
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 15:56:20 2020 +0900

    add b.txt.

commit 7d6e30fb6f6523af1602e47628b8c0f862c1be9d
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 15:53:03 2020 +0900

    a.txt

조용상@jojo MINGW64 ~/branch (master)
$ ls
a.txt  b.txt

조용상@jojo MINGW64 ~/branch (master)
$ git checkout test
Switched to branch 'test'

조용상@jojo MINGW64 ~/branch (test)
$ ls
a.txt  b.txt  c.txt

조용상@jojo MINGW64 ~/branch (test)
$ git checkout test
Already on 'test'

조용상@jojo MINGW64 ~/branch (test)
$ git log
commit 825b3c5cca24d3465b86473655c9b4eed89f9891 (HEAD -> test)
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 16:00:41 2020 +0900

    add c.txt

commit 38a9b30aa78cb3feaf13b9b541790aee7fa8ddce (master)
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 15:56:20 2020 +0900

    add b.txt.

commit 7d6e30fb6f6523af1602e47628b8c0f862c1be9d
Author: Yong Sang Cho <sin94soon@gmail.com>
Date:   Wed Dec 30 15:53:03 2020 +0900

    a.txt

조용상@jojo MINGW64 ~/branch (test)
$ git checkout master
Switched to branch 'master'

조용상@jojo MINGW64 ~/branch (master)
$ git branck
git: 'branck' is not a git command. See 'git --help'.

The most similar command is
        branch

조용상@jojo MINGW64 ~/branch (master)
$ git branch
* master
  test

조용상@jojo MINGW64 ~/branch (master)
$ git merge test
Updating 38a9b30..825b3c5
Fast-forward
 c.txt | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 c.txt

조용상@jojo MINGW64 ~/branch (master)
$ ls
a.txt  b.txt  c.txt

조용상@jojo MINGW64 ~/branch (master)
$ git brancj
git: 'brancj' is not a git command. See 'git --help'.

The most similar command is
        branch

조용상@jojo MINGW64 ~/branch (master)
$ git branch
* master
  test

조용상@jojo MINGW64 ~/branch (master)
$ git branch -d test
Deleted branch test (was 825b3c5).

조용상@jojo MINGW64 ~/branch (master)
$ git branch
* master

조용상@jojo MINGW64 ~/branch (master)
$ git status
On branch master
nothing to commit, working tree clean

조용상@jojo MINGW64 ~/branch (master)
$ git remote add origin https://github.com/MyChoYS/branch.git

조용상@jojo MINGW64 ~/branch (master)
$ git remote
origin

조용상@jojo MINGW64 ~/branch (master)
$ git remote -v
origin  https://github.com/MyChoYS/branch.git (fetch)
origin  https://github.com/MyChoYS/branch.git (push)

조용상@jojo MINGW64 ~/branch (master)
$ git push origin master
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 4 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (7/7), 594 bytes | 297.00 KiB/s, done.
Total 7 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), done.
To https://github.com/MyChoYS/branch.git
 * [new branch]      master -> master

조용상@jojo MINGW64 ~/branch (master)
$ git branch new

조용상@jojo MINGW64 ~/branch (master)
$ git branch
* master
  new

조용상@jojo MINGW64 ~/branch (master)
$ ls
a.txt  b.txt  c.txt

조용상@jojo MINGW64 ~/branch (master)
$ git checkout new
Switched to branch 'new'

조용상@jojo MINGW64 ~/branch (new)
$ touch e.txt

조용상@jojo MINGW64 ~/branch (new)
$ git status
On branch new
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        e.txt

nothing added to commit but untracked files present (use "git add" to track)

조용상@jojo MINGW64 ~/branch (new)
$ git add e.txt

조용상@jojo MINGW64 ~/branch (new)
$ git commit -m "add d.txt"
[new 4002e40] add d.txt
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 e.txt

조용상@jojo MINGW64 ~/branch (new)
$ git status
On branch new
nothing to commit, working tree clean

조용상@jojo MINGW64 ~/branch (new)
$ git push origin new
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 260 bytes | 260.00 KiB/s, done.
Total 2 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'new' on GitHub by visiting:
remote:      https://github.com/MyChoYS/branch/pull/new/new
remote:
To https://github.com/MyChoYS/branch.git
 * [new branch]      new -> new

조용상@jojo MINGW64 ~/branch (new)
$ cd ~

조용상@jojo MINGW64 ~
$ mkdir feedback

조용상@jojo MINGW64 ~
$ cd feedback

조용상@jojo MINGW64 ~/feedback
$ git init
Initialized empty Git repository in C:/Users/조용상/feedback/.git/

조용상@jojo MINGW64 ~/feedback (master)
$ touch Cho Yong Sang.md

조용상@jojo MINGW64 ~/feedback (master)
$ ls
Cho  Sang.md  Yong

조용상@jojo MINGW64 ~/feedback (master)
$ rm .
rm: cannot remove '.': Is a directory

조용상@jojo MINGW64 ~/feedback (master)
$ ls
Cho  Sang.md  Yong

조용상@jojo MINGW64 ~/feedback (master)
$ rm cho

조용상@jojo MINGW64 ~/feedback (master)
$ ls
Sang.md  Yong

조용상@jojo MINGW64 ~/feedback (master)
$ rm sang.md

조용상@jojo MINGW64 ~/feedback (master)
$ rm yong

조용상@jojo MINGW64 ~/feedback (master)
$ ls

조용상@jojo MINGW64 ~/feedback (master)
$ `
> ~
> cd ~
>
> ''
> git
> ??
> git ??
> git status
>
> ~~
> cd ~
>
>
> cancel
> sadljfhasdjhfg
> `
> bash: /c/Users/조용상: Is a directory
> bash: : command not found
> bash: ??: command not found
> git: '??' is not a git command. See 'git --help'.

The most similar commands are
        am
        gc
        mv
        p4
        rm
fatal: not a git repository (or any of the parent directories): .git
bash: ~~: command not found
bash: cancel: command not found
bash: sadljfhasdjhfg: command not found
bash: usage:: command not found

조용상@jojo MINGW64 ~/feedback (master)
$ ls

조용상@jojo MINGW64 ~/feedback (master)
$ code .

조용상@jojo MINGW64 ~/feedback (master)
$ git clone t ??
>
>~~
>fatal: repository 't' does not exist

조용상@jojo MINGW64 ~/feedback (master)
$ > git status
bash: status: command not found

조용상@jojo MINGW64 ~/feedback (master)
$ >
bash: syntax error near unexpected token `newline'

조용상@jojo MINGW64 ~/feedback (master)
$ > ~~

조용상@jojo MINGW64 ~/feedback (master)
$ git clone https://github.com/hphk-john/feedback.git
Cloning into 'feedback'...
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0
Receiving objects: 100% (4/4), done.

조용상@jojo MINGW64 ~/feedback (master)
$ ls
 feedback/   git  '~~'

조용상@jojo MINGW64 ~/feedback (master)
$ cd feedback

조용상@jojo MINGW64 ~/feedback/feedback (master)
$ git  branch ChoYongSang

조용상@jojo MINGW64 ~/feedback/feedback (master)
$ git branch
  ChoYongSang
* master

조용상@jojo MINGW64 ~/feedback/feedback (master)
$ git checkout choyongsang
Switched to branch 'choyongsang'

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ touch 조용상.md

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ ls
README.md  강동주.md  조용상.md

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ code 조용상.md

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git remote -v
origin  https://github.com/hphk-john/feedback.git (fetch)
origin  https://github.com/hphk-john/feedback.git (push)

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git remote
origin

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git status
On branch choyongsang
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        "\354\241\260\354\232\251\354\203\201.md"

nothing added to commit but untracked files present (use "git add" to track)

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git status
On branch choyongsang
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        "\354\241\260\354\232\251\354\203\201.md"

nothing added to commit but untracked files present (use "git add" to track)

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git add 조용상.md

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git status
On branch choyongsang
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   "\354\241\260\354\232\251\354\203\201.md"


조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git commit -m "조용상 feedback"
[choyongsang 0a7db62] 조용상 feedback
 1 file changed, 12 insertions(+)
 create mode 100644 "\354\241\260\354\232\251\354\203\201.md"

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git push origin choyongsang
remote: Permission to hphk-john/feedback.git denied to MyChoYS.
fatal: unable to access 'https://github.com/hphk-john/feedback.git/': The requested URL returned error: 403

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git add 조
fatal: pathspec '조' did not match any files

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$

조용상@jojo MINGW64 ~
$ cd feedback

조용상@jojo MINGW64 ~/feedback (master)
$ git checkout choyongsang
error: pathspec 'choyongsang' did not match any file(s) known to git

조용상@jojo MINGW64 ~/feedback (master)
$ ls
 feedback/   git  '~~'

조용상@jojo MINGW64 ~/feedback (master)
$ cd feedback

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ ls
README.md  강동주.md  조용상.md

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
$ git push origin choyongsang
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 679 bytes | 679.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
remote:
remote: Create a pull request for 'choyongsang' on GitHub by visiting:
remote:      https://github.com/hphk-john/feedback/pull/new/choyongsang
remote:
To https://github.com/hphk-john/feedback.git
 * [new branch]      choyongsang -> choyongsang

조용상@jojo MINGW64 ~/feedback/feedback (choyongsang)
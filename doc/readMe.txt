=== readme 
    udemy.git.course

    �   m:  Kurs�bersicht
    �   m:  GIT Kursunterlagen
            s:  Kapitel 2: Schnellstart
            s:  Kapitel 3: GIT Grundlagen
            s:  Kapitel 4: GIT Wiederherstellen
            s:  Kapitel 5: Branching


&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
=== m:  Kurs�bersicht
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

1.  Willkommen
    �   wozu eine Versionsverwaltung
    �   warum git?
    �   Git Grundlagen : 
            fork, clone, commit, push
    �   Fehlerbehebung : reset vs revert
            fork, clone, commit, push
    �   Branch erstellen und wechseln und mergen
    �   Stashing
    �   Rebase
    
2.  Installation
    �   git bash einrichten
    �   git Installation mit Windows/Linux/...

3.  Linux Befehle
    �   crash Kurs

4.  git hub - Schnellstart
    �   eigenes Projekt
    �   Authentifizierung mit Token - f�r git push

5.  git Grundlagen
    �   fork auf https://github.com/google-research/football
    �   $>  git add .   :   mehrere Dateien gleichzeitig hinzuf�gen
    �   $>  git mv      :   umbenennen
    �   $>  git ls-files      :  viele Dateien ansehen
    �   $>  git rm      :   l�schen

6.  Wiederherstellen
    �   Historie ansehen mit log
    �   mehr Informationen mit show
    �   lokales Wiederherstellen mit checkout|reset

7.  Branching
    �   Branch erstellen
    �   Merge 
    �   Rebase 
    �   Stash
8.  Weitere Git Konfigurationen
9.  Git Tipps
10. Hurra
        

+   Workflow
    make<User>-commit<User>-push<User>-pullRequest<User>-pull<TeamLeader>

+   Speicherbereiche
    �   stage       -   Arbeitskopie
    �   stash       -   Geheimversteck (Stapel-Lager)
    �   repository  -   lokales -   commited changes
    �   repository  -   remote  -   push

=   Erstellung neuer Dateien
    1.  $>echo "hello" > file1.txt  ==>     ins Arbeitsverzeichnis
    2.  $>git-add file.1.txt        ==>     ins den Staging-Bereich 
    3.  $>git-commit file1.txt      ==>     ins Repository git push 
    4.  $>git-push file1.txt        ==>     zum Remote-Server zB git-HUB     
    
=   �nderungen an bestehenden Dateien
    1.  $>echo "samba" >> file1.txt ==>     nur im Arbeitsverzeichnis
    2.  $>git-commit file1.txt      ==>     �nderungen im Repository
    3.  $>git-push file1.txt        ==>     �nderungen in git-HUB     


&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
=== m:  GIT Kursunterlagen
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

-------------------------------------------------------------------------------    
--- s:  Kapitel 2: Schnellstart
-------------------------------------------------------------------------------    

*   GitHub Projekt
    git version
    git config --global user.name "Git Kurs User"
    git config --global user.email "git-kurs-user@datamics.com"
    git config --global --list
    pwd
    mkdir git-kurs
    cd git-kurs
    pwd

*   clone 
    git clone https://deine-github-url
    ls
    cd github-demo
    ls
    git status

*   lokaler Bereich
    echo "Git Kurs" >> neue_datei.txt
    ls
    cat neue_datei.txt
    git status
    
*   push into staging
    git add neue_datei.txt
    git status    
    
*   push into repository local
    git commit -m "Initialer commit mit einer neuen Datei"
    git status

*   push into repository server
    git push origin main
    git status


-------------------------------------------------------------------------------    
--- s:  Kapitel 3: GIT Grundlagen
-------------------------------------------------------------------------------    


*   fork
    pwd
    git clone https://deine-github-url/football
    ls
    cd football
    ls
    git status
    
*   bearbeiten  # Neue Zeilen in der README.md hinzuf�gen
    git status
    git commit -m "Bearbeiten der Readme, neue Zeilen" README.md
    git status
    git push origin main
    
*   Mehrere Dateien hinzuf�gen    
    echo "Datei_1" >> datei_1.txt
    echo "Datei_2" >> datei_2.tx
    cat datei_1.txt
    cat datei_2.txt
    git status
    git add .
    git status
    git commit
    git status
    git push origin main

*   Dateien umbenennen
    cd football
    git status
    git mv datei_2.txt datei_3.txt
    ls
    git status
    git commit -m "Datei umbenannt"
    git push origin main
    cd ..

*   Datei l�schen
    cd football
    git status
    clear
    git ls-files
    ls
    git rm datei_3.txt
    git status
    git commit -m "L�schen der Datei 3�
    git push origin main
    cd ..

 
-------------------------------------------------------------------------------    
--- s:  Kapitel 4: GIT Wiederherstellen
-------------------------------------------------------------------------------    

*   Git Historie
    pwd
    git help log
    cd football
    git status
    clear
    git log
    git log --abbrev-commit     # kurzer commitID anteigen
    clear
    ls
    git log -- CHANGELOG
    git log -- datei_1.txt
    clear
    git log --since="5 days ago"
    clear
    git show cc9f2c245dd49a6b84b8303e58d8453071c0c73b # Passe hier deine 
    Commit-ID an
    cd ..

*   Git checkout & reset
    cd football
    git status
    echo "Fehlerhafte �nderung" >> datei_1.txt
    cat datei_1.txt
    git status    
    git checkout HEAD datei_1.txt   * �nderung zur�cknehmen
    cat datei_1.txt
    git status
    echo "Noch eine fehlerhafte �nderung" >> datei_1.txt
    cat datei_1.txt
    git reset --hard HEAD    * �nderung zur�cknehmen mit HARD
    cat datei_1.txt
    echo "Eine fehlerhafte �nderung im Arbeitsverzeichnis" >> datei_2.txt
    ls
    git reset --hard HEAD   * �nderung zur�cknehmen mit HARD
    ls
    rm datei_2.txt


*   git reset & revert
    # Passe hier deine <Commit-ID> an
    cd football
    git status
    echo "Fehlerhafte �nderung" >> datei_1.txt
    cat datei_1.txt
    git commit -m "Fehler"
    git status
    git log
    git revert <245345>         #   &&& revert
    git status
    git log
    clear
    echo "Fehlerhafte �nderung" >> datei_1.txt
    cat datei_1.txt
    git commit -m "Fehler"
    git status
    git log
    git reset �hard <245345>    #   &&& reset
    git log
    git status
    git push origin main
    cd ..

-------------------------------------------------------------------------------    
--- s:  Kapitel 5: Branching   
-------------------------------------------------------------------------------    

*   Branching
    cd football
    git fetch 
    git pull
    git status
    git checkout main

*   Branch erstellen
    pwd
    git checkout -b feature-abc-12-Userlogin
    # git branch feature-abc-12-Userlogin &
    #       git checkout feature-abc-12-Userlogin
    echo "Mein neuer Code�" > user_login.py
    git commit -m "abc-12: neuer user login" user_login.py
    git status
    git log

*   Branch wechseln (hotfix)
    ls
    git status
    git checkout main
    ls
    git checkout -b hotfix
    git branch
    vim Dockerfile
    # F�ge ein Kommentar hinzu
    git commit -m �fix docker file� Dockerfile

*   Branch merge (hotfix)
    git branch
    ls
    cat Dockerfile
    git checkout main
    cat Dockerfile
    git merge hotfix
    cat Dockerfile
    git branch -d hotfix        # delete ?
    git branch
    git push origin main


*   Branch merge (feature)

    git checkout feature-abc-12-Userlogin
    echo �Neue Codezeile �� >> user_login.py
    cat user_login.py
    git status
    git commit -a -m "abc-12: Erweiterung des user login"
    git checkout main
    git merge feature-abc-12-Userlogin
    git branch -d feature-abc-12-Userlogin
    git branch
    git log
    git push origin main
    
    
*   git Rebase
    
    ### Teil1 
    pwd
    git fetch 
    git pull
    git status
    git checkout main
    git checkout -b feature-abc-20-Experiment
    echo "Mein neuer Code�" > experiment.py
    git commit -m "abc-20: neues Experiment� experiment.py
    git status
    git log 
    ls
    git status
    git checkout main
    git branch
    vim gfootball/replay.py
    # F�ge ein Kommentar hinzu
    git commit -m �fix example usage� gfootball/replay.py
    
    ### Teil2
    git checkout feature-abc-20-Experiment
    git rebase main
    git checkout main
    git merge feature-abc-20-Experiment
    git branch
    git branch -d feature-abc-20-Experiment
    git push origin main


*   git Stash
    git status
    echo "�nderung f�r das stash Beispiel" >> datei_1.txt
    git stash # git stash save
    vim README.md
    git commit -m �fix readme� .
    git stash apply
    git commit -m �Fertig mit den stash �nderungen� .
    git stash list
    git stash drop
    git stash list
    


-------------------------------------------------------------------------------    
--- s:  Kapitel 6: Konfiguration 
-------------------------------------------------------------------------------    

*   git init
    pwd
    git init neues-projekt 
    ls
    cd neues-projekt
    ls
    ls -al
    cd .git
    ls
    cd ..
    echo "Mein neues Projekt :)" >> README.md
    mkdir code
    echo "Mein Code� > mein_programm.py
    git add .
    git commit -m "init commit" .
    git status

*   git ignore
    pwd
    cd neues-projekt
    ls
    git status
    ls -al
    echo "ignore_mich.txt" > .gitignore
    echo "unwichtig" > ignore_mich.txt
    ls -al
    git status
    git add .gitignore
    git status
    git commit -m �unwichtige Dateien ignorieren" .gitignore
    git status

-------------------------------------------------------------------------------    
--- s:  Kapitel 7: Tipps
-------------------------------------------------------------------------------    

*   tags
    git tag 
    git log --pretty=oneline --graph
# Lightway:
    git tag meine_v2.0
    git log --pretty=oneline --graph
    git tag
    git tag --delete meine_v2.0
# Annotate:
    git tag -a v1.2
    git show v1.2
    git checkout v1.0
    git log --pretty=oneline --graph
    git checkout v1.2
    git log --pretty=oneline --graph
    git push --tags
    
*   blame
    git blame gfootball/replay.py
    
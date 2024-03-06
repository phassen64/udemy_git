=== readme

    Files:
        �   content : Kursinhalt
        �   logger  : logFile



#
#   m:workflow
#
    make<User>-commit<User>-push<User>-pullRequest<User>-pull<TeamLeader>
#
#   m:storage
#
    �   stage       -   Arbeitskopie
    �   stash       -   Geheimversteck (Stapel-Lager)
    �   repository  -   lokales -   commited changes
    �   repository  -   remote  -   push

#
#   m:Erstellung neuer Dateien
#
    1.  $>echo "hello" > file1.txt  ==>     ins Arbeitsverzeichnis
    2.  $>git add file.1.txt        ==>     ins den Staging-Bereich
    3.  $>git commit file1.txt      ==>     ins Repository git push
    4.  $>git push file1.txt        ==>     zum Remote-Server zB git-HUB

=   �nderungen an bestehenden Dateien
    1.  $>echo "samba" >> file1.txt ==>     nur im Arbeitsverzeichnis
    2.  $>git commit file1.txt      ==>     �nderungen im Repository
    3.  $>git push file1.txt        ==>     �nderungen in git-HUB



#
#   m:config
#

    *   Git kann lokal, global, system-weit konfiguriert werden..
        �   sytem   :   %ProgramFiles%\Git
        �   global  :   $HOME\.gitconfig
        �   local   :   d/repository/GIT/udemy/GitExercises/config

    *   ansehen
        $>  git config --global --list
        $>  git config --local  --list
        $>  git config --system --list

    *   �ndern
        $>git config --local core.filemode false
        $>git config --local remote.origin.url "https://~udemy_git.git"
	    $>git config --local remote.origin.fetch "+refs/heads/*:refs..."
	    $>git config --local branch.master.remote "origin"
	    $>git config --local branch.master.merge "refs/heads/master"
    	$>git config --local core.symlinks "false"
        $>git config --global user.name "peter"
	    $>git config --local core.autocrlf "false"

#
#   m:history
#

    $>git log


#
#   m:clone vs fork
#

    +   Forking
            creates your own copy of a repository in a
        remote location (for example, GitHub).
        Your own copy means that you will be able to contribute changes to
        your copy of the repository without affecting the original repository.

    +   Cloning
            makes a local copy of a repository,
                not your own copy.
        A developer who wants to set up a new,
                separate and isolated project
        that is based on a publicly accessible Git repo should perform a fork.



#
#   m:restore
#

#   a) staged
        in git existierende Dateien,
            die ge�ndert wurden,
        aber nicht committed wurden
        $>  git checkout HEAD <file>    # �nderungen zur�cksetzen
        $>  git reset --hard HEAD       # dito

#   b) not staged
        zum Beispiel neue Dateien
        <<< nur mit a) remove oder b ) cloning m�glich


#
#   m:reset vs revert
#

reset : l�scht bis zu einem commit x
revert: setzt HEAD:=commitX - history erhalten und neuer revert-Commit

$>git reset --hard <cmmId>


#
#   m:branch
#

1)  neuen Branch erstellen
    $>git branch b1
    $>git switch b1
        oder
    $>git checkout -b b1
2)  im branch b1 �nderungen durchf�hren
        und commit
3)  git checkout master
4)  git merge b1
    git merge origin/feature-101 -m "featureMerge"       # direkt merge


#
#   m:merge vs rebase
#

#   merge: Zusammenf�hren
#   rebase: Wiederherstellen
#   beide M�glichkeiten integrieren 2 branches

rebase :
    +   history wird gel�scht
    +   bei komplexen branches sinnvoll
    +   bei jedem commit werden konflikte angezeigt
    +   aber vielen Konflikten ist ein Rebase schwerer als ein Merge
            Revert schwieriger
    +   goldene Regel: Rebase NIE bei �ffentlichen Branches verwenden
    +   rebase f�r MICH besser !


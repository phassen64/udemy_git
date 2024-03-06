=== readme

    Files:
        •   content : Kursinhalt
        •   logger  : logFile


#
#   m:storage
#
    •   stage       -   Arbeitskopie
    •   stash       -   Geheimversteck (Stapel-Lager)
    •   repository  -   lokales -   commited changes
    •   repository  -   remote  -   push


#
#   m:config
#

    *   Git kann lokal, global, system-weit konfiguriert werden..
        •   sytem   :   %ProgramFiles%\Git
        •   global  :   $HOME\.gitconfig
        •   local   :   d/repository/GIT/udemy/GitExercises/config

    *   ansehen
        $>  git config --global --list
        $>  git config --local  --list
        $>  git config --system --list

    *   ändern
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
            die geändert wurden,
        aber nicht committed wurden
        $>  git checkout HEAD <file>    # Änderungen zurücksetzen
        $>  git reset --hard HEAD       # dito

#   b) not staged
        zum Beispiel neue Dateien
        <<< nur mit a) remove oder b ) cloning möglich


#
#   m:reset vs revert
#

reset : löscht bis zu einem commit x
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
2)  im branch b1 Änderungen durchführen
        und commit
3)  git checkout master
4)  git merge b1




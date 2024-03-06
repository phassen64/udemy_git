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


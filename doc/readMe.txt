=== readme udemy.git.2022.11.03

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
=== m:  url
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    https://book.git-scm.com/docs/gitglossary                                       
    https://book.git-scm.com/docs/git-tag
    https://book.git-scm.com/docs/git-branch

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
=== m:  Glossar
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

+   Blame (hier: Verantwortung)
    Mit dem Befehl Blame wird f�r jede Zeile einer
    Datei angezeigt, 
    wer wann die letzte Ver�nderung daran vorgenommen hat.

+   Checkout (etwa: Wechsel)
    Der Befehl zum Wechsel auf einen anderen Branch. 
    HEAD und Index werden dabei auf den gew�hlten Branch gesetzt.

+   Cherry-pick (etwa: Rosinen rauspicken)
    Mit einem Cherry-pick wird ein spezifischer Commit
    eines Branches auf einen anderen Branch
    angewendet. 
    Dies kann unter anderem zum Einbringen eines Commits 
    in den Ziel-Branch genutzt werden, 
    nachdem der Commit auf einen falschen Branch ausgef�hrt wurde.

+   Clean (sauber)
    Ein Working Directory ist Clean, 
    wenn keinerlei Abweichungen zum letzten Commit vorliegen,
    das heisst keine Dateien ver�ndert wurden.

+   Collaborator (Mitarbeiter)
    Alle Entwickler eines Repositories, die �ber Lesund
    Schreibrechte verf�gen.

+   Contributor (Beitragender)
    Ein Entwickler, dessen Pull Request in das Repository
    integriert wurde, der aber kein Collaborator ist.

+   Commit (�bergabe)
    Ein Commit speichert den aktuellen Stand des Working Directories, 
    also die j�ngst vorgenommenen Modifikationen, 
    zusammen mit einer beschreibenden Nachricht und 
    weiteren Metadaten wie Datum, Uhrzeit und Autor als
    den n�chsten Arbeitsschritt in der Historie.

+   CVS Versionskontrollsystem (Concurrent Version System, CVS)
    Versionskontrollsysteme dienen der Verwaltung
    verschiedener Versionen einer Software. 
    Bekannte CVS neben Git sind Subversion und CVS. 
    Ein CVS speichert die gesamte Entwicklungshistorie
    einer Software und erm�glicht
    die Zusammenarbeitet mehrerer Entwickler in
    kollaborativen Projekten.

+   Diff (Differenz)
    Die Anzeige der Unterschiede zwischen zwei Dateien. 
    Wird benutzt, um Bugs zwischen verschiedenen Commits aufzusp�ren.

+   Forking (Gabelung) 
    Forking bezeichnet das Klonen eines Online-Repositories 
    (z.B. auf GitHub) f�r das eigene Benutzerkonto. 
    Damit k�nnen Entwickler unabh�ngig an einem Projekt arbeiten, 
    ohne Teil der urspr�nglichen Entwicklergruppe zu sein,
    beispielsweise um die Software f�r ein anderes
    Betriebssystem zu portieren.

+   HEAD (Kopf)
    Ein Zeiger auf den aktuellen Commit des derzeitigen
    Branches. 
    �blicherweise der j�ngste Commit des Branches, 
    kann aber mit Git-Befehlen versetzt werden, 
        um auf �ltere Commits zuzugreifen.

+   Index
    Index bezeichnet die Vorbereitung des Working
    Directory vor einem Commit. 
    Dabei wird ausgew�hlt, welche ge�nderten oder neu erstellten
    Dateien dem Commit hinzugef�gt werden.

+   Issue (Angelegenheit)
    Finden Nutzer eines Repositories einen Bug oder
    w�nschen eine Erweiterung der Software, 
    k�nnen sie auf GitHub eine Issue eingeben, 
    die dann von den Entwicklern entweder bearbeitet oder
    zur�ckgewiesen wird.

+   Log
    Log dient der Darstellung der Commit-Historie
    des aktuellen Branches.

+   Master (hier: Original)
    Master bezeichnet den urspr�nglich von Git angelegten,
        ersten Branch eines Repositories. 
    Dieser kann bei Bedarf umbenannt werden und 
        unterscheidet sich nicht von anderen Branches.

+   Markdown
    Markdown ist eine einfache Formatierungssprache
    f�r Textdateien, 
    mit der h�ufig README-Dateien
    formatiert werden.

+   Merge (Vereinigung)
    Im �blichen Arbeitszyklus wird zuerst ein Pull ausgef�hrt,
    damit der lokale Klon des Repositories
    auf dem neusten Stand ist. 
    Anschliessend werden lokale Modifikationen vorgenommen, 
    die dann anschliessend mit einem Commit und Push in
    das Online-Repository integriert werden. 
    Dabei wird ein Merge durchgef�hrt - 
        die neuen Programmteile werden integriert. 
    Wenn allerdings zwei Entwickler an den gleichen Programmteilen
    gleichzeitig lokal gearbeitet haben, 
    kann dabei ein Merge-Konflikt auftreten, 
    da das Online- Repository nicht wei�, 
    welche Teile �bernommen werden sollen. 
    �blicherweise m�ssen derartige Merge-Konflikte manuell aufgel�st werden.

+   Pull (Ziehen)
    Durch Pull werden alle �nderungen, 
    die im Master-Repository von anderen Entwicklern vorgenommen
    wurden, 
    aber nicht im lokalen Klon enthalten sind, 
    auf das lokale Repository angewendet.

+   Pull Requests
    Mit einem Pull Request k�nnen (auch unabh�ngige)
    Entwickler die Betreiber eines Projektes
    davon in Kenntnis setzen, 
    dass eine spezifische �nderung implementiert wurde. 
    Diese muss dann zuerst getestet werden und 
    wird dann bei Erfolg in das Projekt integriert.
    Workflow:: commit<User>-push<User>-pullRequest<User>-pull<TeamLeader>

+   Push (Sto�en)
    Mit einem Push werden alle zuletzt vorgenommenen
    Commits dem Repository des Projektes hinzugef�gt, 
    entweder auf einem Server wie beispielsweise GitHub 
    oder in einem lokalen Repository auf der Festplatte.

+   Rebase
    Bei einem Rebase werden die �nderungen eines
    Branches auf einen anderen Branch angewendet, 
    beispielsweise von einem experimentiellem
    Branch auf Master. 
    Anschlie�end kann der experimentielle Branch in Master gemerged werden,
    wodurch im Gegensatz zu einem direkten Merge
    eine lineare Entwicklungshistorie ensteht.

+   Repository (Ablage)
    Ein Repository beinhaltet ein Projekt mitsamt seiner Entwicklungshistorie. 
    Das heisst, alle Zwischenschritte (in Form von Commits) der
    Software k�nnen wiederhergestellt oder betrachtet werden. 
    Im Fall von Git wird unterschieden zwischen einem mei�t 
        online verf�gbaren Master- Repository und 
        lokalen Klonen bei allen beteiligten
    Entwicklern, 
    die so unabh�ngig voneinander an dem Projekt arbeiten k�nnen.

+   Resolve (Aufl�sen)
    Resolve bezeichnet das manuelle Aufl�sen von Merge-Konflikten.

+   Rewind (Zur�ckspulen)
    Mit einem Rewind wird der HEAD auf einen fr�heren
    Commit zur�ckgesetzt und die Arbeit bis zu
    diesem Commit verworfen.

+   SHA-1
    Mit SHA (Secure Hash Algorithmus) werden Pr�fsummen
        f�r digitale Informationen erstellt. 
    Die Pr�fsumme hat immer 40 Hexadezimale Zeichen.
    In Git wird SHA verwendet, 
        um Commits zu benennen.
    Somit kann die Validit�t eines Commits anhand seines Namens �berpr�ft werden.

+   stage 
    B�hne, Abschnitt, Stufe, Stadium

+   Tag (Markierung)
    Tags sind vom Entwickler angelegte Markierungen, 
        auf die einfach zugegriffen werden kann.
    Dadurch wird die Verwaltung der komplexen
    Entwicklungshistorie eines Projektes vereinfacht.
    Tags werden dazu mit Bezeichnern versehen, 
    wie beispielsweise v1.01 oder Django statt Flask

+   Upstream (Flussauf)
    Synonym f�r das Master-Repository (mei�t online auf GitHub). 
    Der lokale Klon eines Repositories wird auch Downstream genannt.

+   Workflow
    Um effektiv kollaborativ arbeiten zu k�nnen, 
    ist es wichtig, 
    sich mit allen beteiligten Entwicklern auf einen Workflow zu verst�ndigen, 
    beispielsweise welche Branches langfristig unver�ndert belassen werden.

+   Working Tree (Arbeitsverzeichnis)
    Der Working Tree beinhaltet alle Dateien des Projektes
        im derzeitigen Zustand und 
    kann bei Bedarf vom CVS auf einen fr�heren Zustand
    zur�ckgesetzt werden.


&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
=== m:  Aktionen
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

=*= s:  Repositories erzeugen

+   Ein neues lokales Repository erzeugen
    $>  git init

+   Ein existierendes Repository klonen
    $>git clone ssh://nutzer@domain.com/repository.git


=*= s:  Lokale �nderungen

+   Ge�nderte Dateien anzeigen
    $>  git status

+   �nderungen anzeigen
    $>  git diff

+   Alle �nderungen dem n�chsten Commit hinzuf�gen
    $>  git add .

+   Datei umbenennen
    $>  git mv [-v] [-f] [-n] [-k] <source> <destination>

+   Eine bestimmte Datei dem n�chsten Commit hinzuf�gen
    $>  git add <DATEI>

+   Nur eine bestimmte Datei dem n�chsten Commit hinzuf�gen
    $>  git add . -p <DATEI>

+   Commite alle lokalen �nderungen mit der gegebenen Beschreibung
    $>  git commit -m �Beschreibung�

+   Alle lokalen �nderungen dem letzten Commit hinzuf�gen
    (Nur f�r nicht bereits publizierte Commits!)
    $>  git commit �amend

+   Alle lokalen �nderungen dem letzten
        Commit mit gleicher Beschreibung   hinzuf�gen
    $>  git commit �amend �no-edit

+   Lokale �nderungen verwerfen
    $>  git stash


=*= s:  Commit Verlauf

+   Alle Commits beginnend mit dem ersten anzeigen
    $>  git log

+   Die letzten 5 Commits anzeigen
    $>  git log -n5

+   Alle �nderungen einer bestimmten Datei anzeigen
        $>  git log -p <DATEI>  # mit Comment
    oder :
        $>  git log -- <DATEI>
    
+   Wer hat was und wann an der Datei ge�ndert?
    $>git blame <DATEI>

+   Commit-ID abgek�rzt anzeigen lassen anzeigen
    $>  git log --abbrev-commit

+   Commit Differenz mit Commit-ID ansehen
    $>  git show <commitID>


=*= s:  Branches und Tags

+   Alle Branches anzeigen
    $>  git branch -av

+   Branch wechseln
    $>  git checkout <BRANCH>

+   Neuen Branch aus dem aktuellen HEAD erzeugen
    $>  git branch <BRANCH>

+   Lokalen Branch l�schen
    $>  git branch -d BRANCH

+   Neuen Tag erzeugen
    $>  git tag TAG

+   Tags anzeigen
    $>  git tag

+   Tag l�schen
    $>  git tag -d TAG

+   Zu einem Tag wechseln
    $>  git checkout TAG


=*= s:  Aktualisierung und Publizieren

+   Alle Remotes anzeigen
    $>  git remote -v

+   Informationen zu einer Remote anzeigen
    $>  git remote show REMOTE

+   Ein neues Remote Repository anlegen
    $>  git remote add REMOTE URL

+   Remote Repository herunterladen, ohne es in HEAD zu integrieren
    $>  git fetch REMOTE

+   Remote Repository herunterladen und in HEAD integrieren
    $>  git pull REMOTE BRANCH

+   Lokale �nderungen auf Remote publizieren
    $>  git push REMOTE BRANCH

+   Branch im Remote Repository l��schen
    $>  git branch -dr REMOTE/BRANCH

+   Tags publizieren
    $>  git push �tags


=*= s:  Merge und Rebase


+   Branch in den aktuellen HEAD mergen
    $>  git merge BRANCH

+   Commits des aktuellen HEAD auf ein Branch anwenden (Rebase)
    (Nur f�r nicht publizierte Commits!)
    $>  git rebase BRANCH

+   Rebase abbrechen
    $>  git rebase �abort

+   Rebase nach dem Aufl�sen von Konflikten fortsetzen
    $>  git rebase �continue

+   Mergetool zum Aufl�sen von Konflikten starten
    $>  git mergetool

+   Dateien mit Konflikten als gel�st markieren
    $>  git add DATEI

=*= s:  �nderungen r�ckg�ngig machen


+   Alle lokalen �nderungen im Arbeitsverzeichnis verwerfen
    (Kann nicht r�ckg�ngig gemacht werden)
    $>  git reset �hard HEAD

+   Lokale �nderungen einer spezifischen Datei verwerfen
    $>  git checkout HEAD DATEI

+   Commit r�ckg�ngig machen mit einem neuen Commit, 
    der alle �nderungen verwirft
    $>  git revert COMMIT

+   Zur�cksetzen auf den Head und alle �nderungen verwerfen
    $>  git reset �hard HEAD

+   Zur�cksetzen auf einen Commit und alle �nderungen verwerfen
    $>  git reset �hard COMMIT

+   Zur�cksetzen auf ein Commit, ohne die �enderungen anzuwenden
    $>  git reset COMMIT

+   Zur�cksetzen auf ein Commit ohne L�schen lokaler �nderungen
    $>  git reset �keep COMMIT


&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
=== m:  table
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

$>  cat <file>                      *   show file content
$>  clear                           *   clear screen
$>  ls -al                          *   list
$>  rm ls -al                           *   list
$>  rm --force --recursive tutor_git    *   rmDir



=== git <cmd>=:c
    Legende:   ID:=commitID

�   c:  add
    $>  git add <file>                  *   add single file into STASH einchecken
    $>  git add <file1> <file2>...      *   copy local files into STASH
    $>  git add --all                   *   add incl.subDir into STASH
    $>  git add .                       *   s�mtliche neue Dateien => stash

�   c:  blame               #  Wer ist verantwortlich ?
    $>  git blame <file1>               *   Vom wem �nderungen an Datei

�   c:  branch          
    $>  git branch                      *   view active branches and branch "master"
    $>  git branch -a                   *   show local and remote branches 
    $>  git branch <newBranch>          *   create new branch, but no switch 
    $>  git branch -d <mergedBranch>    *   remove merged branch
    $>  git branch -D <testedBranch>    *   remove branch without a merge
    $>  git branch -m main master       *   rename branch "main" into "master"   

�   c:  checkout
    $>  git checkout <anyBranch>        *   switch into <anyBranch>
    $>  git checkout HEAD <file>        *   lokales File zur�cksetzen - not committed
    $>  git checkout master             *   switch branch to HEAD
    $>  git checkout -b <newBranch>     *   switch+create into <newBranch>
    $>  git checkout <tagID||brnID>     *   switch BRANCH or TAG

�   c:  commit
    $>  git commit                      *   commit merge conflict
    $>  git commit -m "<str>" <file>    *   update modified singleFile in Repository
    $>  git commit -m "<Comment>" -a    *   update multiple files of Repository
    $>  git commit -m "<Comment>" .         *   ... dito
    $>  git commit -m "<Comment> --all"     *   ... dito2
    $>  git commit �-amend              * show toBe committed files in vi

�   c:  diff
    $>  git diff master <branch>        *    difference branch to master

�   c:  discard
    $>  git discard                     *    restore old repository.local

�   c:  fetch
    $>  git fetch           * download server changes into memory - don't change local

�   c:  init 
    $>  git init  <newGitRepository>    * neues projekt
    
�   c:  log
    $>  git log                         *   alle Commits sehen - ohne Datei-Zuordnung
    $>  git log --abbrev-commit         *   commits mit short-commitID sehen
    $>  git log --pretty=online --grap  *   pretty log
    $>  git log --raw                   *   alle Commits sehen - MIT Datei-Zuordnung
    $>  git log -n<i>                   *   nur die letzten i Commits
    $>  git log -- <file>               *   log einer bestimmten Datei
    $>  git log -p <file>               *   log einer bestimmten Datei + diff command

�   c:  merge
    $>  git merge <bBranch>             *    HEAD==master imports bBranch
    $>  git merge master                *    HEAD==bTmp; branch bTmp imports master
    $>  git merge --abort               *    cancel a merge
    $>  git mergetool                   *    merge tool
    
�   c:  mv
    $>  git mv [-v] <source> <destination>  * rename a file

�   c:  pull
    $>  git pull            * download server changes into local => fetch

�   c:  push        
    $>  git push                            * lokale Version auf den remote-Server kopieren
    $>  git push origin master                          * remote branch aktualisieren
    $>  git push origin HEAD                            * remote branch mit akuellem HEAD
    $>  git push origin --delete <bRemoteBranch>        * remote branch l�schen
    $>  git push --tags                     * push tags

�   c:  rebase      #   special merge 
    $>  git rebase --about              *   undo rebase
    $>  git rebase bMaster              *   auf einem Feature-Branch den Master importieren

�   c:  reset       => revert        
    $>  git reset <ID>
    $>  git reset --hard HEAD       *   lokales File zur�cksetzen - not committed
    $>  git reset �hard <ID>        *   reset committed File 

�   c:  restore
    $>  git restore <file>          *   restore uncommitted File == history cleared 
                    
�   c:  revert
    $>  git revert <ID>             *   reset committed File - history untouched

�   c:  show  
    $>  git show <ID>               *   ID={commitID|tagID}

�   c:  stash                       *   stapel-Speicher �ber den Commit hinweg
    $>  git stash                   *   *stash++ := mem; == push
    $>  git stash clear             *   memset(stash,0,sizeof(stash))
    $>  git stash apply             *   mem:=*stash
    $>  git stash drop              *   --stash
    $>  git stash list              *   zeigt STASH-list an - git log
    $>  git stash show              *   print *stash
    $>  git stash push              *   *stash++ := mem
    $>  git stash pop               *   mem := *stash--   == git apply&&drop

�   c:  status 
    $>  git status                      *   wichtigstes Kommando ?uptodate?

�   c:  tag 
    $>  git tag <tagId>            *   add lightweight tag tagId="tTmp"
    $>  git tag -a <tagId> -m "annotad tag"    * annotated
    $>  git tag --delete <tagId>   *   delete tag with tagId

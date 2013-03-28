Updating the Enigma homepage
============================

1) Repositories
---------------

Die "Entwicklung" der Enigma Homepage findet im svn auf BerliOS (http://developer.berlios.de/)
statt, das svn repository ist unter:

    http://svn.berlios.de/wsvn/enigma-game/homepage/

Die Homepage selber ist auf Savannah (http://savannah.gnu.org/) gehostet und liegt dort in einem
cvs repository:

    http://web.cvs.savannah.gnu.org/viewvc/?root=enigma


2) Allgemeine Strategie
-----------------------

Updates an der Enigma Homepage sind zweistufig, zuerst werden die
Veränderungen an den html/css/... Dateien ins svn comittet. Das
svn ist die Referenz bezüglich der Homepage. Nachher werden die
Updates ins cvs comittet und dieser Commit löst automatisch ein
Homepage update auf dem Savannah Webserver aus.


3) Setup und initial checkout
-----------------------------

Mit etwas Mühe kann man nun ein svn und ein cvs Repository
prinzipiell "übereinander" legen, also im gleichen Verzeichnisbaum
haben.

Im folgenden Beispiel nehmen ich dafür ~/ENIGMA/homepage_update/
Zuerst macht man einen nicht-anonymen cvs checkout:

      cd ~/ENIGMA/homepage_update

      ################
      # CVS Checkout #
      ################
      export CVS_RSH=ssh

      cvs -z3 -d:ext:raoul@cvs.savannah.nongnu.org:/web/enigma co .

      # test:
      ls -a
      .  ..  CVS  CVSROOT  enigma

Und dann einen nicht-anonymen svn checkout:

      ################
      # SVN Checkout #
      ################
      cd enigma

      # Da schon Dateien aus dem cvs vorhanden sind müssen wir --force nutzen
      svn co --force svn+ssh://raoul-b@svn.code.sf.net/p/enigma-game/source/homepage .

Nun sehen wir mittels einem "svn st" diverse unversionierte Dateien ("?")
aber keine Probleme ("!", "~" etc). Die mit "?" gekennzeichneten Dateien
sind teils im cvs versioniert. Ein "cvs up" zeigt uns ein ähnliches Bild.


4) Ein simples update
---------------------

    a: Verändere die gewünschten Dateien

       cd ~/ENIGMA/homepage_update/enigma/
       # edit ...

    b: committe ins svn

        svn commit

    c: "kompiliere" die vollen Hompage html Dateien:

       chmod u+x main.lua
       lua5.1 main.lua

    d: comitte ins cvs
        cvs -e nano commit

Allenfalls ist Punkt c vor b sinnvoll um die Änderungen lokal
im Browser zu testen ...

/EOF
====

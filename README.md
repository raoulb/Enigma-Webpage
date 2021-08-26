The Enigma homepage
===================

This repository contains the master sources of the Enigma website.


The process of updating the online website is a bit cumbersome right now
and described in the remainder of this document. All examples are done on
a Linux machine, inside a shell.


Initial Setup
-------------

Clone this website `git` repository:

```
mkdir ~/EnigmaWebsite
cd  ~/EnigmaWebsite
```
```
git clone git@github.com:Enigma-Game/Enigma-Webpage.git .
```

into a directory `~/EnigmaWebsite` (or any other place you like).
This directory should look like:

```
ls -a
```
```
advent.css  appdata  enigma.css  gfx-templates  images  input  main.lua  manual  manual_1.20  README.txt  swfobject.js
```

Next, get a copy of the `cvs` repository used for publishing
the statically built website to `nongnu` (our current web host).

```
mkdir ~/EnigmaWebsiteOutput
cd ~/EnigmaWebsiteOutput

export CVS_RSH=ssh
cvs -z3 -d:ext:raoul@cvs.savannah.nongnu.org:/web/enigma co .
```

This directory should look like:

```
ls -a
```
```
CVS  CVSROOT  enigma
```


Update some Content
-------------------

Go to your `git` clone and *always* do a `git pull` first:

```
cd  ~/EnigmaWebsite
git pull
```
```
...
Authenticated to github.com ([140.82.121.4]:22).
Transferred: sent 3404, received 3060 bytes, in 0.5 seconds
Bytes per second: sent 7471.8, received 6716.7
Already up to date.
```

Now edit all the content files you wish. Most of the interesting files lie in `input/`.
Once done, build the website:

```
chmod u+x main.lua
lua5.1 main.lua
```

and review your local changes, for example within a browser:

```
firefox index.html
```

If everything looks good, commit your changed source files to this repository,
but *do not* commit the generated output files. (In general they should be excluded
already by the `.gitignore` file, but be careful with new files.)

```
git add ...
git commit
git push
```

Note: A quick way to get rid of all the build files is `git clean -dxf .` but
      be careful and make sure you understand this command.


Publish to Nongnu
-----------------

Go to your `cvs` checkout and again, *always* do an update first:

```
cd ~/EnigmaWebsiteOutput
export CVS_RSH=ssh
cvs up
```
```
...
Authenticated to cvs.savannah.nongnu.org ([2001:470:142::81]:22).
cvs update: Updating .
cvs update: Updating appdata
cvs update: Updating images
cvs update: Updating images/advent_2009
cvs update: Updating images/advent_2010
cvs update: Updating images/articles
cvs update: Updating images/flags25x15
cvs update: Updating images/lotm
cvs update: Updating images/screenshots
cvs update: Updating manual
cvs update: Updating manual/images
cvs update: Updating manual_1.20
cvs update: Updating manual_1.20/manual
cvs update: Updating manual_1.20/manual/images
cvs update: Updating manual_1.20/refman
cvs update: Updating manual_1.20/refman/images
cvs update: Updating manual_1.20/sheets
cvs update: Updating ratings
Transferred: sent 92824, received 5444 bytes, in 1.1 seconds
Bytes per second: sent 82586.1, received 4843.6
```

Copy over the static build ready for deployment:

```
cd enigma/
rsync -av --exclude='input' --exclude='gfx-templates' ~/EnigmaWebsite/* .
```

Review and add the copied files to the `cvs` repository:

```
cvs add ...
```

Finally, commit and hence trigger a website redeploy on nongnu:

```
cvs -e nano commit
```

Note: There usually is a small time delay before the updates are visible online.

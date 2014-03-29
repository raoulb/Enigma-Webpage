#! /usr/bin/env lua50
html = {}

----------------------------------------------------------------------
-- index.html -- old version ----
----------------------------------------------------------------------
html.index = {
    title = "Enigma Homepage",
    body = [[
<!-- <h2 id="overview">Introduction <img src="st-oxyda.png"> </h2> -->

  <p>Enigma is a puzzle game inspired by Oxyd on the Atari ST and
  Rock'n'Roll on the Amiga.  The object of the game is to find uncover
  pairs of identically colored Oxyd stones.  Simple?  Yes.  Easy?
  Certainly not!  Hidden traps, vast mazes, laser beams, and, most of
  all, countless hairy puzzles usually block your direct way to the
  Oxyd stones... If you are new to Enigma, you may want to take a look
  at a few  <a href="screenshots.html">screenshots</a> or peek at the
  <a href="manual/enigma.html">user manual</a>.</p>

  <p>Enigma is available for Windows, Mac OS X, and most flavors of
  Linux and other modern Unices.</p>
  
  <ul>
  <li><a href="download.html">Download Enigma</a>
  <li><a href="about.html">Learn more about Enigma</a>.
  <li><a href="http://mail.nongnu.org/mailman/listinfo/enigma-announce">
Get notified when versions are released</a>.
  <li><a href="http://www.mag-heut.net">Discuss Enigma!</a>
  <li><a href="devel.html">Contribute to Enigma</a>
  </ul>

  <p>Enigma is free software and may be distributed and modified under
  the terms of the <a
  href="http://www.gnu.org/licenses/licenses.html#GPL"> General Public
  License</a>.</p>

<h2 id="news">Recent News</h2>

  <h3 class="news">
  <span class="date">Feb 1 2007: </span> Score Statistics
  </h3>

  Results of a monthly evaluation of submitted scores are available on a new
  <a href="users.html">score statistics page</a>.

  <h3 class="news">
  <span class="date">Jan 11 2007: </span> French Manual
  </h3>

  The French manual for Enigma 1.00 is now available in the
  <a href="documentation.html">documentation section</a>.

  <h3 class="news">
  <span class="date">Dec 13 2006: </span> Enigma 1.00 Released <font color="red">NEW!</font>
  </h3>

  <p>The new stable release of Enigma has been released, 555 days after the
  last stable release. But your patience has been worth while. 
  The list of new and improved features includes:</p>

  <ul>
  <li> 200++ new levels (now more than 970 in total)
  <li> New levelpack sorting
  <li> Drop & play of new levels and new levelpacks
  <li> Level inspector for ratings and statistics about levels
  <li> Screenshot viewer
  <li> Personal annotations and rating of levels
  <li> Translations of level titles and documents
  <li> New languages: Swedish, Russian, Hungarian, Portuguese
  <li> Countless smaller enhancements
  </ul>
  
  <p>With 1.00 every level provides solvage rates and average user ratings
  besides the world record. These data depent on your feedback. Please make
  use of this new feature by sending back your score file as described in 
  <a href="documentation.html">Score Registration</a></p>
  
  <p>As usual the new release is available from 
  the <a href="download.html#stable">download page</a> (<font color="red">Mac OS X available!</font>).</p>
  
  <p>
  <p>Have fun!</p>

<h3 class="news">
  <span class="date">Nov 22 2006: </span> Enigma 1.00 beta Released
  </h3>

  <p>I am happy to announce, after a long hiatus, the first public
  test release of Enigma in more than a year.  It's available from
  the <a href="download.html#unstable">download page</a>. 
  Since the purpose of a test release is to uncover
  and fix as many problems as possible, please do report all the bugs
  that you find to the <a href="mailto:enigma-devel@nongnu.org">Enigma mailing list</a>
  </p>

  <p>At the same time this release fulfills the purpose of collecting scores
  for evaluation of our statistics and update of our world record list. Please
  send your score file after updating to 1.00 beta as described in 
  <a href="documentation.html">Score Registration</a>.
  </p>
  
  
  

<p><a href="oldnews.html">Older news</a></p>

<hr>
  <p>Enigma is powered by:</p>
&nbsp;
<a href="http://www.libsdl.org">
<img src="sdl_logo.png" border="0" alt="SDL" /> </a>
&nbsp;
<a href="http://www.lua.org">
<img src="lua.png" border="1" alt="Lua" /> </a>
&nbsp;
<a href="http://www.nongnu.org">
<img src="floating_gnu.png" border="1"  alt="GNU Savannah" /> </a>
&nbsp;
<a href="http://developer.berlios.de">
<img src="http://developer.berlios.de/bslogo.php?group_id=3972" width="124" height="32" border="0" alt="BerliOS Logo"></a>

]]
}

----------------------------------------------------------------------
-- oldnews.html
----------------------------------------------------------------------

html.oldnews ={
	title = "Older News about Enigma",
	body = [[
<h2>Older News</h2>

  <h3 class="news">
  <span class="date">Mar 8 2006: </span> German Manual
  </h3>

  A draft version of the German manual is now available in the
  <a href="documentation.html">documentation section</a>.


  <h3 class="news">
  <span class="date">Jun 7 2005: </span> Enigma 0.92 Released
  </h3>

  <ul>
  <li> Added Spanish translation
  <li> Fixed bug: ice is now working
  <li> A few smaller bug fixes
  </ul>
  Enjoy!

  
  <h3 class="news">
  <span class="date">Apr 26 2005: </span> Enigma 0.91 Released
  </h3>

  <p>As usual some unexpected bugs crop up shortly after a
&quot;stable&quot; release.  Enigma 0.91 fixes the following problems
that occurred with Enigma 0.90:</p>

  <ul>
    <li>If you used the 640x512 video mode in Enigma 0.81, the game
doesn't enter an endless loop any more after after loading the game
data.
    <li>All level packs are visible in the menu, instead of only
"Tutorial" and "Sokoban".

    <li>Plus a few smaller problems that most users won't have
noticed.
  </ul>

  <h3 class="news">
  <span class="date">Apr 20 2005: </span> Enigma 0.90 Released
  </h3>

  <p>The new stable release of Enigma has finally been released, after
having been in development for almost 18 months.  The list of new and
improved features includes:
</p>

<ul>
  <li> Many new levels (now more than 750 in total)
  <li> Support for 800x600 and 1024x768 video modes
  <li> Support for non-English languages
  <li> Vastly improved Oxyd 1 and Per.Oxyd compatibility
  <li> Redesigned options menu
  <li> Countless smaller enhancements
</ul>

<h3 class="news">
  <span class="date">Jan 02 2005: </span>
  Web Forum for Enigma
</h3>

<p>
Thanks to the untiring effort of &quot;illmind&quot; we now have a 
<a href="http://www.mag-heut.net">web forum for Enigma</a> and BlackBallEd,
the Enigma level editor.  If you need help with certain levels, or want to
exchange ideas and levels, this is a good place to start.
</p>

  <h3 class="news">
  <span class="date">Jan 26 2005: </span> Enigma 0.90 Release Candidate! 
  </h3>
  
  <p>As always, please consult the <a
href="download.html#unstable">download page</a>.  Have fun!  </p>
  
<h3 class="news">
  <span class="date">Nov 04 2004: </span>
  Beta version of Enigma 0.90
</h3>

<p>I am happy to announce, after a long hiatus, the first public
test release of Enigma in more than a year.  It's available from
the <a href="download.html#unstable">download page</a>. 
Since the purpose of a test release is to uncover
and fix as many problems as possible, please do report all the bugs
that you find to the <a href="mailto:enigma-devel@nongnu.org">Enigma mailing list</a>.  Have fun!
</p>


<h3 class="news">
  <span class="date">Jan 05 2004: </span>
  Download problems
</h3>

  <p>As you may have noticed, the links on the download page currently
  do not work.  For the time being, a few of the packages are available
  from <a href="http://www.rzuser.uni-heidelberg.de/~dheck/">my personal
  home page</a>.  We expect the main download server to be back in the 
  next few weeks and hope to release Enigma 0.90 shortly after that.
  So stay tuned!</p>

<h3 class="news">
  <span class="date">Oct 12 2003: </span>
  Enigma 0.81 released
</h3>

  <p>This release fixes a few problems that surfaced in version 0.80.  
  In particular, it doesn't automatically restart the level whenever
  you die.</p>
  
  <p>Right now, only the source code and an installer for Windows are
  available; packages for other operating systems will follow in the next
  few days or weeks.</p>
  
  <ul>
  <li>Detailed <a href="NEWS">list of changes</a>
  <li><a href="download.html">Download</a>
  </ul>

<h3 class="news">
  <span class="date">Oct 09 2003: </span>
  Enigma 0.80 finally available
</h3>

  <p>Download it <a href="download.html">here</a>.</p>



<h3 class="news">
  <span class="date">Sep 24 2003: </span>
  User manual online
</h3>

  <p class="news">See <a href="manual/index.html">here</a>.</p>

<h3 class="news">
  <span class="date">Sep 14 2003: </span>
  Beta Release
</h3>

  <p class="news">It's now almost half a year since we made the last
  stable release of Enigma.  A lot has happened in the meantime, and we
  are now approaching the release of version 0.80.  If you want to help
  us fix the remaining bugs, please download and test it from the <a
  href="download.html">download page</a>. </p>

<h3 class="news">
  <span class="date">Feb 26 2003: </span>
  New packages
</h3>

<p class="news">New RPM packages are available from the <a
href="download.html">download page</a>.  If the old one did not work
for you, you may want to give them a try; the new packages are known
to work with Redhat 7.3, SuSE 7.3, and Mandrake 9.0.</p>



<h3 class="news">
  <span class="date">Feb 16 2003: </span>
  Enigma 0.70 is out!
</h3>

<p class="news"> Get it from the <a
href="download.html">Download page</a>.  Here is a short list of
changes in this release:
<ul>
  <li>Some speed improvements</li>
  <li>Stereo sound</li>
  <li>More than 70 new levels</li>
  <li>Greatly improved mouse controls</li>
  <li>Support for Oxyd's original sounds (see the README file that
      comes with Enigma for details</li>
  <li>New game objects like rubber bands, worm holes, and moving
      platforms</li>
</ul>
]]
}

----------------------------------------------------------------------
-- about.html
----------------------------------------------------------------------

html.about ={
	title = "About Enigma",
	body = [[
<h2>About Enigma</h2>

<h3>Main Features</h3>

<ul>
<li>Completely free!
<li>More than 900 different levels.
<li>High-resolution 2D graphics.
<li>Realistic physics simulation.
<li>More than 500 different game objects.
</ul>

<h3>User Comments</h3>

<p>Enigma is widely considered one of the most addictive, polished and 
free puzzle games. Don't believe us? Here's what some of our users think:</p>

<ul>
<li>
&ldquo;That cunning little game
seems determined to steal what sanity and free time I have left.
Entirely too much fun!&rdquo;

<li>
&ldquo;I play Enigma since few days, and I would like to thanks all the team 
for making such a good game, with no bug, great graphics, very tought 
levels ;), and incredible playability.&rdquo;

<li>
&ldquo;These games are so good that I cannot understand why they are not
sold commercially. Anyhow, I am pleased they  exist.I will watch your progress
on your homepage. It must be a huge challenge to create such perfect games.&rdquo;

<li>
&ldquo;Enigma is the most fun game I have ever played.&rdquo;

<li>
&ldquo;Thanks for writing such a fun and exciting game.  I just love puzzle games, 
and this is one of the best I've seen.&rdquo;

<li>
&ldquo;I've played a little bit Oxyd more than 10 years ago, but didn't get
addicted to. That's impossible when using Enigma.&rdquo;

<li>
&ldquo;It's the first puzzle game I really enjoyed - a great game! Really nice
2D graphics, a lot of variety, cute and well-designed levels... I liked the
fact that sometimes it is VERY challenging - I've spent more than an hour to
beat some levels!&rdquo;

<li>
&ldquo;This is a fun, original and challenging puzzle game that strectches your
mind and has many, many levels. The game is also polished, professional, and
non-violent.&rdquo;

<li>
&ldquo;I was amazed at what a great game this is. The basic puzzles excellent,
and ordered very well by difficulty. But also the game is very polished, nice
graphics and music, very simple user interface. What an outstanding example of
a polished free software game? Every Linux distribution should include
Engima!!!!&rdquo;

<li>
&ldquo;But what can I say? I have been playing the puzzle in every spare second
ever since, and I'm still not tired of it, though some levels make me want to
toss my mouse out of the window.&rdquo;

</ul>

]]
}

----------------------------------------------------------------------
-- download.html
----------------------------------------------------------------------

html.download = {
	title = "Enigma download page",
	body = [[
<h2>Downloads</h2>

<h3><a name="stable">Stable Release (Version 1.00)</a></h3>

<p>Please report problems with any of these packages to the <a
href="mailto:enigma-devel@nongnu.org">Enigma mailing list</a>. </p>
<ul>
<li> Windows '95 and later
    <a href="http://download.berlios.de/enigma-game/Enigma-1.00.exe">
        Full Installer (1.00)</a> appr. 15 MB
</li>

<li> Windows '95 and later
    <a href="http://download.berlios.de/enigma-game/Enigma-1.00-min.exe">
        Minimum Installer (1.00)</a> appr. 11 MB
</li>

<li> Windows '95 and later
    <a href="http://download.berlios.de/enigma-game/Enigma-w32-1.00.zip">
        Minimum Zip (1.00)</a> appr. 11 MB
</li>

<li> Mac OS X universal 
    <a href="http://download2.berlios.de/enigma-game/Enigma-1.00-OSX.dmg">
        Full Installer (1.00)</a> appr. 16 MB
</li>

<li>Source Code
    <a href="http://download.berlios.de/enigma-game/enigma-1.00.tar.gz"> 
	tar.gz (1.00)</a> appr. 10 MB
</li>
        
<li>Previews
    <a href="http://download.berlios.de/enigma-game/enigma-1.00-previews.zip"> 
	Zip (1.00)</a> appr. 4 MB
</li>
        
</ul>

<p>The 'Minimum' and 'Source' packages do not include the 'Previews' package.
The packages are still complete as missing previews are generate on the fly
at the cost of a few seconds at the first level menu calls.</p>

<p>All packages are available at <a href="http://developer.berlios.de/project/showfiles.php?group_id=3972"> 
	Berlios</a>.<p>

<p>Packages for some other operating systems are made available by
third parties:</p>

<ul>
<li><a href="http://freshports.org/games/enigma/">
	FreeBSD</a>
<li><a href="http://www.gentoo.org/dyn/pkgs/games-puzzle/enigma.xml">
    Gentoo Linux</a>
<li><a href="http://packages.debian.org/unstable/games/enigma.html">
	Debian</a>
</ul>

<h3>Compiling from Source Code</h3>

<p>Enigma depends on four additional libraries: SDL, SDL_ttf,
SDL_image, and SDL_mixer.  Most GNU/Linux systems come with these
libraries pre-installed these days.  You may need '-devel' versions of
these packages if you intend to compile Enigma from source.  If your
distribution does not provide the necessary packages, you can download
them from the following web sites:</p>

<ul>
  <li><a href="http://www.libsdl.org">SDL</a> (&gt;= 1.2)
  <li><a href="http://www.libsdl.org/projects/SDL_ttf">SDL_ttf</a>
  <li><a href="http://www.libsdl.org/projects/SDL_mixer">SDL_mixer</a>
      (&gt;= 1.2.4)
  <li><a href="http://www.libsdl.org/projects/SDL_image">SDL_image</a>
      (&gt;= 1.2.0)
</ul>


<!--
<p>If you want to create your own RPM packages, you can use this
  <a href="http://savannah.nongnu.org/download/enigma/enigma-0.81.spec">spec file</a>.</p>

<p>Older releases (and sometimes even newer ones) are available from the 
<a href="http://savannah.nongnu.org/download/enigma/">file list</a>.</p>
-->


<h3><a name="devel">Development version</a></h3>

<p>Enigma's development version can be downloaded from its source code
repository.  Please refer to the <a href="devel.html">development
page</a> for instructions.</p>

<h3><a name="older">Older versions</a></h3>

<p>Older releases of Enigma are available from 
<a href="http://savannah.nongnu.org/download/enigma/">
http://savannah.nongnu.org/download/enigma/</a>.
]]
}

----------------------------------------------------------------------
-- documentation.html
----------------------------------------------------------------------

html.documentation = {
	title = "Enigma support",
	body = [[
<h2>Support</h3>

<h3>Score Registration</h3>

<p>Starting with Enigma 1.00 beta you can register your scores.</p>

<p>First you need to choose a unique user name in the options menu. Please 
look at the <a href="users.html">users list</a> if your favorite name is not in use by someone else.</p>

<p>For registration of your scores just send us your 'enigma.score' file that
is located at your 'user path' as described in the manual. Please send this file 
to <a href="mailto:score@enigma-game.org">score@enigma-game.org</a> with
subject 'score - username'.</p>

<p> The scores are evaluated on a monthly base. Please do not send your score file
after every good score that you achieved. Once at the end of the month is
sufficient. The first score collection date is the 4th December 2006. Afterwards
it is always the end of a month.

<p>The updated statistics will be downloaded to your computer if you set the
ratings update option to 'Auto'. Enigma will peek the server only a few times
per month, independent how often you start the application. The network traffic
is very low as just increments are downloaded and you will receive all updates
within a few days.</p>

<p>If you play most times offline and set the update option to 'Never' you may
manually download the ratings update file
<a href="http://www.nongnu.org/enigma/ratings/ratings.xml.zip">ratings.xml</a>.
Extract the file from the zip and copy it to your 'user path' aside your
'enigma.score' file.</p>

<h3>Documentation for Enigma 1.00</h3>
<p>The complete user manual is included in multiple languages with every release
of Enigma.  You can additionally access it from this site or download a PDF
version of the document.</p>

<ul>
<li><a href="manual/enigma.html">English User manual (html)</a>
<li><a href="manual/enigma.pdf">English User manual (pdf)</a>
<li><a href="manual/enigma-ref.html">English Reference manual (html)</a>
<li><a href="manual/enigma_de.html">Deutsches Benutzerhandbuch 1.00 (html)</a>
<li><a href="manual/enigma_de.pdf">Deutsches Benutzerhandbuch 1.00 (pdf)</a>
<li><a href="manual/enigma_fr.html">Manuel Fran&ccedil;ais 1.00 (html)</a>
</ul>

<p>No other translations of the Enigma manual are available so far.
Please send an email to <a
href="mailto:enigma-devel@nongnu.org">enigma-devel@nongnu.org</a> if
you would like to contribute a translation.</p>

<h3>FAQ (Frequently Asked Questions)</h3>

<a href="faq.html">FAQ (Frequently Asked Questions)</a>

 ]] }

----------------------------------------------------------------------
-- users.html
----------------------------------------------------------------------

html.users = {
	title = "Enigma scores",
	body = [[
<h2>Score Statistics</h2>

<div class="usernames">
Names in use:
  <ul>
    <li>Andreas</li>
    <li>Ant</li>
    <li>bojster</li>
    <li>Chris</li>
    <li>Daniel</li>
    <li>daydreamer</li>
    <li>Django</li>
    <li>Duffy</li>
    <li>Dvorhagen</li>
    <li>Edgar_Flesk</li>
    <li>erich</li>
    <li>Great Scott</li>
    <li>Holger</li>
    <li>HuB34</li>
    <li>Iceshark7</li>
    <li>Ingo</li>
    <li>Ingo_K</li>
    <li>J3FF</li>
    <li>Jeffrey S</li>
    <li>Johannes</li>
    <li>jojo</li>
    <li>joseba</li>
    <li>JuSt</li>
    <li>Klaus</li>
    <li>Marc-Hendrik</li>
    <li>Markus</li>
    <li>Michael</li>
    <li>Miel56</li>
    <li>Moneymaker</li>
    <li>Nat</li>
    <li>niebie</li>
    <li>Ralf</li>
    <li>Raoul</li>
    <li>rgsantos@yahoo.com</li>
    <li>Ronald</li>
    <li>ryujun</li>
    <li>Samuel</li>
    <li>Sandra</li>
    <li>Stephanie</li>
    <li>Stupid</li>
    <li>Taztunes</li>
    <li>Thomas</li>
    <li>Tiger</li>
    <li>Valkyrie2</li>
    <li>Wuzzy</li>
  </ul>
</div>

<div class="statistics">

 <table>
    <caption>Worldrecord Statistics of January 2007</caption>
    <colgroup><col width="80"><col width="80"><col width="470"></colgroup>
    <tr><th>total</th><th>shared</th><th class="left">users</th></tr>
    <tr><td class="num">454</td><td class="num"> 96</td><td class="left">'Moneymaker'</td></tr>
    <tr><td class="num">361</td><td class="num">102</td><td class="left">'Stupid'</td></tr>
    <tr><td class="num">186</td><td class="num"> 75</td><td class="left">'Duffy'</td></tr>
    <tr><td class="num">145</td><td class="num"> 74</td><td class="left">'Great Scott'</td></tr>
    <tr><td class="num"> 58</td><td class="num"> 35</td><td class="left">'Johannes'</td></tr>
    <tr><td class="num"> 33</td><td class="num"> 25</td><td class="left">'Iceshark7'</td></tr>
    <tr><td class="num"> 32</td><td class="num"> 17</td><td class="left">'HuB34'</td></tr>
    <tr><td class="num"> 29</td><td class="num"> 20</td><td class="left">'bojster'</td></tr>
    <tr><td class="num"> 28</td><td class="num">  4</td><td class="left">'Ronald'</td></tr>
    <tr><td class="num"> 27</td><td class="num"> 20</td><td class="left">'joseba'</td></tr>
    <tr><td class="num"> 24</td><td class="num">  7</td><td class="left">'Raoul'</td></tr>
    <tr><td class="num"> 22</td><td class="num">  4</td><td class="left">'Django'</td></tr>
    <tr><td class="num"> 10</td><td class="num">  3</td><td class="left">'Wuzzy'</td></tr>
    <tr><td class="num"> 10</td><td class="num">  7</td><td class="left">'Ralf'</td></tr>
    <tr><td class="num">  8</td><td class="num">  1</td><td class="left">'JuSt'</td></tr>
    <tr><td class="num">  7</td><td class="num">  1</td><td class="left">'Andreas'</td></tr>
    <tr><td class="num">  7</td><td class="num">  5</td><td class="left">'Thomas'</td></tr>
    <tr><td class="num">  7</td><td class="num">  7</td><td class="left">'Chris'</td></tr>
    <tr><td class="num">  6</td><td class="num">  5</td><td class="left">'J3FF'</td></tr>
    <tr><td class="num">  4</td><td class="num">  0</td><td class="left">'Taztunes'</td></tr>
    <tr><td class="num">  4</td><td class="num">  2</td><td class="left">'Stephanie'</td></tr>
    <tr><td class="num">  3</td><td class="num">  1</td><td class="left">'Edgar_Flesk'</td></tr>
    <tr><td class="num">  3</td><td class="num">  3</td><td class="left">'Samuel'</td></tr>
    <tr><td class="num">  2</td><td class="num">  0</td><td class="left">'Daniel' + 'Markus'</td></tr>
    <tr><td class="num">  2</td><td class="num">  2</td><td class="left">'Ingo'</td></tr>
    <tr><td class="num">  1</td><td class="num">  0</td><td class="left">'erich' + 'ryujun' + 'Nat' + 'Ant' + 'Klaus'</td></tr>
    <tr><td class="num">  1</td><td class="num">  1</td><td class="left">'Dvorhagen' + 'jojo' + 'niebie'</td></tr>
    <tr><td class="num">  0</td><td class="num">  0</td><td class="left">'Valkyrie2' + 'Ingo_K' + 'Marc-Hendrik' + 'Miel56' + 'Jeffrey S' + 'Holger' + 'Tiger' + 'Michael' + 'daydreamer' + 'rgsantos@yahoo.com' + 'Sandra'</td></tr>
  </table>

  <table>
    <caption>Solved Level Statistics of January 2007</caption>
    <colgroup><col width="130"><col width="130"><col width="130"><col width="240"></colgroup>
    <tr><th>difficult</th><th>easy</th><th>total</th><th class="left">user</th></tr>
    <tr><td class="num">954/974</td><td class="num">134/152</td><td class="num"> 96.63%</td><td class="left">'Taztunes'</td></tr>
    <tr><td class="num">882/974</td><td class="num">125/152</td><td class="num"> 89.43%</td><td class="left">'Moneymaker'</td></tr>
    <tr><td class="num">861/974</td><td class="num">136/152</td><td class="num"> 88.54%</td><td class="left">'Stupid'</td></tr>
    <tr><td class="num">884/974</td><td class="num">108/152</td><td class="num"> 88.10%</td><td class="left">'Ronald'</td></tr>
    <tr><td class="num">869/974</td><td class="num">120/152</td><td class="num"> 87.83%</td><td class="left">'ryujun'</td></tr>
    <tr><td class="num">873/974</td><td class="num">100/152</td><td class="num"> 86.41%</td><td class="left">'JuSt'</td></tr>
    <tr><td class="num">846/974</td><td class="num">  2/152</td><td class="num"> 75.31%</td><td class="left">'Django'</td></tr>
    <tr><td class="num">683/974</td><td class="num"> 70/152</td><td class="num"> 66.87%</td><td class="left">'HuB34'</td></tr>
    <tr><td class="num">641/974</td><td class="num"> 43/152</td><td class="num"> 60.75%</td><td class="left">'Klaus'</td></tr>
    <tr><td class="num">584/974</td><td class="num"> 62/152</td><td class="num"> 57.37%</td><td class="left">'bojster'</td></tr>
    <tr><td class="num">622/974</td><td class="num">  2/152</td><td class="num"> 55.42%</td><td class="left">'Great Scott'</td></tr>
    <tr><td class="num">521/974</td><td class="num"> 48/152</td><td class="num"> 50.53%</td><td class="left">'Marc-Hendrik'</td></tr>
    <tr><td class="num">526/974</td><td class="num"> 37/152</td><td class="num"> 50.00%</td><td class="left">'Valkyrie2'</td></tr>
    <tr><td class="num">521/974</td><td class="num"> 32/152</td><td class="num"> 49.11%</td><td class="left">'Raoul'</td></tr>
    <tr><td class="num">497/974</td><td class="num">  6/152</td><td class="num"> 44.67%</td><td class="left">'daydreamer'</td></tr>
    <tr><td class="num">499/974</td><td class="num">  0/152</td><td class="num"> 44.32%</td><td class="left">'Edgar_Flesk'</td></tr>
    <tr><td class="num">408/974</td><td class="num"> 61/152</td><td class="num"> 41.65%</td><td class="left">'Wuzzy'</td></tr>
    <tr><td class="num">449/974</td><td class="num"> 12/152</td><td class="num"> 40.94%</td><td class="left">'niebie'</td></tr>
    <tr><td class="num">406/974</td><td class="num"> 45/152</td><td class="num"> 40.05%</td><td class="left">'Johannes'</td></tr>
    <tr><td class="num">437/974</td><td class="num">  8/152</td><td class="num"> 39.52%</td><td class="left">'Duffy'</td></tr>
    <tr><td class="num">386/974</td><td class="num"> 10/152</td><td class="num"> 35.17%</td><td class="left">'J3FF'</td></tr>
    <tr><td class="num">349/974</td><td class="num"> 32/152</td><td class="num"> 33.84%</td><td class="left">'Iceshark7'</td></tr>
    <tr><td class="num">334/974</td><td class="num"> 23/152</td><td class="num"> 31.71%</td><td class="left">'Jeffrey S'</td></tr>
    <tr><td class="num">288/974</td><td class="num"> 63/152</td><td class="num"> 31.17%</td><td class="left">'erich'</td></tr>
    <tr><td class="num">345/974</td><td class="num">  4/152</td><td class="num"> 30.99%</td><td class="left">'rgsantos@yahoo.com'</td></tr>
    <tr><td class="num">296/974</td><td class="num"> 29/152</td><td class="num"> 28.86%</td><td class="left">'Tiger'</td></tr>
    <tr><td class="num">280/974</td><td class="num"> 15/152</td><td class="num"> 26.20%</td><td class="left">'Thomas'</td></tr>
    <tr><td class="num">210/974</td><td class="num"> 38/152</td><td class="num"> 22.02%</td><td class="left">'Sandra'</td></tr>
    <tr><td class="num">225/974</td><td class="num"> 16/152</td><td class="num"> 21.40%</td><td class="left">'Andreas'</td></tr>
    <tr><td class="num">150/974</td><td class="num"> 30/152</td><td class="num"> 15.99%</td><td class="left">'Chris'</td></tr>
    <tr><td class="num"> 80/974</td><td class="num"> 16/152</td><td class="num">  8.53%</td><td class="left">'joseba'</td></tr>
    <tr><td class="num"> 67/974</td><td class="num"> 19/152</td><td class="num">  7.64%</td><td class="left">'Dvorhagen'</td></tr>
    <tr><td class="num"> 39/974</td><td class="num"> 14/152</td><td class="num">  4.71%</td><td class="left">'jojo'</td></tr>
    <tr><td class="num"> 42/974</td><td class="num">  9/152</td><td class="num">  4.53%</td><td class="left">'Samuel'</td></tr>
    <tr><td class="num"> 27/974</td><td class="num">  5/152</td><td class="num">  2.84%</td><td class="left">'Miel56'</td></tr>
    <tr><td class="num">  7/974</td><td class="num"> 12/152</td><td class="num">  1.69%</td><td class="left">'Michael'</td></tr>
  </table>

  <div class="stat-help">
    <h3>Explanations</h3>
    <h4>total</h4>
      All distributed levels are counted for a total. If a level provides an
      easy mode both versions are taken into account. Levels that appear
      several times in different levelpacks are just counted once.
    <h4>shared</h4>
      Scores are measured by a resolution of 1 second. If two or more users
      finsih a level within the same second they will both have the same score
      and they share the worldrecord. The wordrecord is taken into account for
      the total worldrecord count for both competitors.
    <h4>handicap</h4>
      For players who are not keen on worldrecords but still have ambitions to
      find straight and fast solutions for levels we introduced another measure.
      We call it handicap as it is similar to the golfers handicap. In general
      a lower value is better than a higher one. The range is limited from 
      +100 to -300. A player who solves the levels in average time will gain
      a handicap of 0.0. The handicap sums up by the derivation of the players
      score from the professional average score (PAR) that is given for each
      level. In order to make handicap values comparable they are always
      normalized to 100 levels - the standard size of a levelpack.
    <h4>solved hcp</h4>
      The solved handicap is the handicap that is calculated over all levels 
      that a player solved. Additionally 10% of the unsolved levels are taken
      into account for unsuccessful solvage attempts. This way the solved hcp
      can be used to compare players with quite different solvalge rates. It
      shows if a player solves levels fast or slow.
  </div>
  <table>
    <caption>Handicap Statistics of January 2007</caption>
    <colgroup><col width="130"><col width="220"></colgroup>
    <tr><th>solved hcp</th><th class="left">user</th></tr>
     <tr><td class="num">-157.5</td><td class="left">'Moneymaker'</td></tr>
     <tr><td class="num">-143.6</td><td class="left">'Stupid'</td></tr>
     <tr><td class="num"> -99.6</td><td class="left">'Duffy'</td></tr>
     <tr><td class="num"> -93.4</td><td class="left">'Great Scott'</td></tr>
     <tr><td class="num"> -80.6</td><td class="left">'Johannes'</td></tr>
     <tr><td class="num"> -68.0</td><td class="left">'Django'</td></tr>
     <tr><td class="num"> -47.8</td><td class="left">'JuSt'</td></tr>
     <tr><td class="num"> -44.3</td><td class="left">'HuB34'</td></tr>
     <tr><td class="num"> -44.3</td><td class="left">'bojster'</td></tr>
     <tr><td class="num"> -44.3</td><td class="left">'Raoul'</td></tr>
     <tr><td class="num"> -36.5</td><td class="left">'Ronald'</td></tr>
     <tr><td class="num"> -26.0</td><td class="left">'Taztunes'</td></tr>
     <tr><td class="num"> -17.4</td><td class="left">'Iceshark7'</td></tr>
     <tr><td class="num"> -15.0</td><td class="left">'ryujun'</td></tr>
     <tr><td class="num"> -15.0</td><td class="left">'Wuzzy'</td></tr>
     <tr><td class="num">  -3.9</td><td class="left">'Klaus'</td></tr>
     <tr><td class="num">  -3.4</td><td class="left">'Andreas'</td></tr>
     <tr><td class="num">  -2.1</td><td class="left">'joseba'</td></tr>
     <tr><td class="num">   3.3</td><td class="left">'Thomas'</td></tr>
     <tr><td class="num">   4.5</td><td class="left">'Chris'</td></tr>
     <tr><td class="num">   6.2</td><td class="left">'erich'</td></tr>
     <tr><td class="num">  10.1</td><td class="left">'J3FF'</td></tr>
     <tr><td class="num">  12.7</td><td class="left">'Marc-Hendrik'</td></tr>
     <tr><td class="num">  19.5</td><td class="left">'Edgar_Flesk'</td></tr>
     <tr><td class="num">  23.0</td><td class="left">'daydreamer'</td></tr>
     <tr><td class="num">  23.4</td><td class="left">'niebie'</td></tr>
     <tr><td class="num">  27.8</td><td class="left">'Tiger'</td></tr>
     <tr><td class="num">  34.9</td><td class="left">'Valkyrie2'</td></tr>
     <tr><td class="num">  36.7</td><td class="left">'Sandra'</td></tr>
     <tr><td class="num">  39.4</td><td class="left">'rgsantos@yahoo.com'</td></tr>
     <tr><td class="num">  42.7</td><td class="left">'Jeffrey S'</td></tr>
     <tr><td class="num">  62.8</td><td class="left">'Samuel'</td></tr>
     <tr><td class="num">  67.0</td><td class="left">'jojo'</td></tr>
     <tr><td class="num">  68.1</td><td class="left">'Dvorhagen'</td></tr>
     <tr><td class="num">  80.3</td><td class="left">'Miel56'</td></tr>
     <tr><td class="num">  89.1</td><td class="left">'Michael'</td></tr>
  </table>
</div> ]] }

----------------------------------------------------------------------
-- devel.html
----------------------------------------------------------------------

html.devel = {
	title = "Enigma Development",
	body = [[
<h2>Development</h2>

<h3>Becoming involved</h3>

<p>Enigma is developed by a small group of volunteers.  We all work on it in
our spare time, which is naturally scarce.  If you would like to help out,
you're always welcome.  If you are interested in contributing to Enigma, please
<a
href="http://mail.nongnu.org/mailman/listinfo/enigma-devel">subscribe to 
Enigma's development mailing list</a>.</p>

<h3>Getting the development version </h3>

<p><a href="https://developer.berlios.de/svn/?group_id=3972">Enigma's
Subversion repository</a> is now hosted on Berlios.  For anonymous
access, simply run
<pre>
svn checkout svn://svn.berlios.de/enigma-game/trunk
</pre>
Please contact us if you need write access to the repository.
</p>

<h3>Feature Wishlist</h3>

<p>Here is a list of open tasks, most of which we currently don't have
the resources to tackle ourselves.  We <i>definitely need</i> your help
with these.  If you have the necessary skills and some spare time,
please consider helping us out. </p>

<ul>
  <li><b>Translation</b>. As of version 0.90 Enigma has proper support
      for languages other than English.  If you would like to help us
      localize Enigma to your native language, please contact
      us. <i>Easy</i>
      
  <li><b>Better graphics</b>.  We're currently lacking in the arts
      department, as you may have noticed.  If you have more talent than we
      have, we'd be only too glad to replace our sprites, logos, and other
      images with better ones. <i>Easy-Medium</i>

  <li><b>Network game</b>.  This is a big and non-trivial undertaking.
      If you like challanges and have some experience in network
      programming, feel free to contact us. <i>Difficult</i>

  <li><b>Integrated Level editor</b>.  This has been requested by many
      users, and would in fact be a great addition. It's a good deal
      of work, but reasonably easy.  <i>Medium</i>
      
  <li><b>Real 3D graphics</b>.  Enigma still uses the same graphics
  model already employed by Oxyd and Rock'n'Roll more than ten years
  ago.  An updated display engine that makes use of current 3D
  accelerators has the chance to boost the image quality and the gaming
  experience.  Requires good OpenGL knowledge. <i>Difficult</i></li>

</ul>
]]
}

----------------------------------------------------------------------
-- faq.html
----------------------------------------------------------------------

html.faq = {
	title = "Enigma FAQ",
	copyright = "2004 Daniel Heck",
	body = [[
<h2>Frequently Asked Questions</h3>

<h3>Q: Is it legal to send scores that have been achieved in 0.92?</h3>

<p>Yes. All scores that are incompatible to the 1.00 version of levels
will not be considered in the statistics. You will notice a small 
red triangle on the level preview icons in the level menu. If you 
solve these levels again with 1.00 your new score will be registered
next time.</p>

<h3>Q: Some of the world records seem to be impossible - are they cheated?</h3>

<p>There may be some levels with shortcuts that are not intended by the
authors. Some levels do have unconventional solutions. But we are not 
aware that someone is intenionally cheating. Have a look at the user 
forum http://www.mag-heut.net/. Many "professional" players are
listening and may even give you some hints.</p>

<h3>Q: I had a world record on a level. After restarting Enigma it is gone!</h3>

<p>Your score should still be the same. But you are competing with other
players world wide for the best score. If you set the option 
"Ratings update" to "Auto" Enigma will download a list of updated 
statistics and world records about once in a month . Sorry, someone 
else will have beaten your world record.</p>

<h3>Q: How can I create my own levels for Enigma?</h3>

<p>[to be written]</p>

<h3>Q: I created new levels, would you consider them for inclusion in
Enigma?</h3>

<p>Yes, we certainly will.  Please send an email to <a
href="mailto:enigma-devel@nongnu.org">enigma-devel</a> if you have levels that
you would like to share with others.  The mailing list has a message size limit
of 40k, so please ask before you want to send files larger than this.</p>

<p>Note that we generally only accept levels that have the same or a more
liberal license as the rest of Enigma.</p>

<h3>Q: How can I compile Enigma on/for Windows?</h3>

<p>Building the Windows version of Enigma is a little more difficult than
building the Unix versions.  The main development of Enigma happens on Linux,
so that's what the build process is optimized for. </p>

<p>The official Enigma releases for Windows are in fact compiled on a Linux
machine, using MinGW as a cross-compiler.  <a
href="http://www.mingw.org">MinGW</a> is also available as a native compiler
that runs on Windows, but you need quite a few additional Unix tools to
actually build the game.  Please refer to the file <tt>doc/README.mingw32</tt>
for a few more instructions on how to build Enigma using MinGW.</p>

<p>With a little work it should be possible to build Enigma using recent
versions of VisualStudio, but so far no one has bothered to adapt Enigma's
source code accordingly and to create suitable project files.</p>

]]
}

----------------------------------------------------------------------
-- screenshots.lua
----------------------------------------------------------------------
html.screenshots = {
	title = "Enigma Screenshots",
	body = [[
<h2>Screenshots</h2>

<h3 id="v0.70">Version 0.70</h3>
<table>
  <tr>
    <td><a href="ant21.png"><img src="ant21_s.png"></a> </td>
    <td><a href="duffy17.png"><img src="duffy17_s.png"></a></td>
    <td><a href="level10f.png"><img src="level10f_s.png"></a></td>
    <td><a href="martin73.png"><img src="martin73_s.png"></a></td>
  </tr>
</table>

<h3 id="v0.60">Version 0.60</h3>
<table>
  <tr>
    <td><a href="level2d.jpg"><img src="level2d_s.png"></a> </td>
    <td><a href="level6b.jpg"><img src="level6b_s.png"></a></td>
    <td><a href="martin07.jpg"><img src="martin07_s.png"></a></td>
    <td><a href="martin43.jpg"><img src="martin43_s.png"></a></td>
  </tr>
  <tr>
    <td><a href="meditation12.jpg"><img src="meditation12_s.png"></a> </td>
    <td><a href="qq2.jpg"><img src="qq2_s.png"></a></td>
    <td><a href="martin08.jpg"><img src="martin08_s.png"></a> </td>
    <td><a href="martin27.jpg"><img src="martin27_s.png"></a></td>
  </tr>
  <tr>
    <td><a href="martin30.jpg"><img src="martin30_s.png"></a></td>
    <td><a href="meditation2.jpg"><img src="meditation2_s.png"></a></td>
    <td><a href="nat1.jpg"><img src="nat1_s.png"></a> </td>
    <td><a href="space.jpg"><img src="space_s.png"></a></td>
  </tr>
</table>
]]
}

----------------------------------------------------------------------
-- links.html
----------------------------------------------------------------------

html.links = {
	title = "Enigma Links",
	body = [[
<h2>Links</h2>

<h3>Enigma-related pages</h3>

  <p>
    <a href="http://savannah.nongnu.org/mail/?group=enigma">Mailing Lists</a><br>
    <a href="http://savannah.nongnu.org/projects/enigma/">Project Page</a><br>
  </p>
  <p>
    <a href="http://www.mag-heut.net">Enigma Web Forum</a>
    - A web-based discussion forum for everything related to Enigma<br>
    <a href="http://www.blackballed.uni.cc">BlackBallEd</a> 
    - An Enigma Level Editor</a><br>
    <a href="http://happypenguin.org/show?Enigma">Happy Penguin</a>
    - The Linux Game Tome<br>
    <a href="http://freshmeat.net/projects/freeoxyd/?topic_id=268">Freshmeat</a>
    - Enigma's Freshmeat entry (listed as FreeOxyd)<br>
    <a href="http://loshawlos.homeip.net/cgi-bin/twiki/view/Enigma/WebHome">Enigma Wiki</a>
    - A Wiki dedicated to Enigma and Oxyd<br>
  </p>

<h3>Oxyd-related pages</h3>

  <p>
    <a href="http://groups.yahoo.com/group/oxyd/">Oxyd Group @ Yahoo</a> 
    - The Oxyd Fan Community<br>
    <a href="http://members.fortunecity.com/oxydpage">The Oxydpage</a> 
    - (Abandoned) Oxyd Fan page<br>
    <a href="http://www.sawicki.us/oxyd/">Jeremy Sawicki's Oxyd Page</a> 
    - Level codes and Oxyd internals, including Jeremy's Oxydlib<br>
  </p>
]]
}

----------------------------------------------------------------------
-- Output
----------------------------------------------------------------------

function HEADER(title)
    return 
[[
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/REC-html40/loose.dtd">
<html lang="en">

<!-- AUTOMATICALLY CREATED FROM index.lua.  PLEASE DO NOT EDIT BY HAND! -->

<head>
  <title>
]] .. title .. [[</title>
<link rel="stylesheet" href="enigma2.css" type="text/css" />
<link rel="shortcut icon" href="favicon.png" type="image/png"/>
<meta name="keywords" content="oxyd,per.oxyd,dongleware,clone,linux,windows,mac,enigma,puzzle,game">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>
<div class="dbody">
  <div class="navbar">
<map name="navigationmap">
  <area shape="rect" coords="10,8,247,88" href="index.html" alt="Home Page" />
  <area shape="rect" coords="277,23,363,76" href="about.html" alt="About Enigma" />
  <area shape="rect" coords="366,23,495,76" href="download.html" alt="Downloads" />
  <area shape="rect" coords="498,23,588,76" href="screenshots.html" alt="Screenshots" />
  <area shape="rect" coords="591,23,701,76" href="documentation.html" alt="Documentation" />
  <area shape="rect" coords="704,23,782,76" href="links.html" alt="Links" />
</map>

    <img src="navbar.png" usemap="#navigationmap" border="0" />
  </div>
]]
end

function BODY(txt)
    return [[
<div class="main"  style="background-image:url(menu_bg.jpg)">
]] .. txt .. [[</div>]]
end

function FOOTER (copyright)
    local copyright = copyright or '2003,2004,2005 Daniel Heck'
    return
[[
<div class="bottombar">
 <p>Copyright � ]] .. copyright .. [[.  Available under the 
<a href="http://creativecommons.org/licenses/sa/1.0/">Creative Commons License</a>.<br />
<p> $Id: index.lua,v 1.34 2007/07/03 08:57:50 ral Exp $</p>
</div>
</div>
</body>
</html>
]]
end


for k,v in html do
	local outfile = v.file or k..'.html'
	local file = io.open (outfile, "w")
	file:write (HEADER (v.title))
	file:write (BODY (v.body))
	file:write (FOOTER (v.copyright))
    file:close()
end

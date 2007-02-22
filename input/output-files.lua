----------------------------------------------------------------------
-- General options
----------------------------------------------------------------------

directory = "input/"
newsdir = "news/"
suffix = ".html"

newsfield = {15, 16, 17, 18}

general = {
    infile = directory.."schema"..suffix,
    title = "Enigma Homepage",
    title_de = "Enigma Hauptseite",
    title_fr = "Enigma Homepage",
    --refman = "http://www.nongnu.org/enigma/manual/enigma-ref.html",
    refman = "manual/enigma-ref.html",
    manual = "manual/enigma.html",
    manual_de = "manual/enigma_de.html",
    manual_fr = "manual/enigma_fr.html",
    wiki = "http://enigma.mal2.ch/index.php?title=Main_Page",
    wiki_de = "http://enigma.mal2.ch/index.php?title=Hauptseite",
    disclaimer = "http://www.disclaimer.de/disclaimer.htm#2",
    disclaimer_de = "http://www.disclaimer.de/disclaimer.htm#1",
    gpl = "http://www.gnu.org/licenses/licenses.html#GPL",
    same_en = function(v,s,l0)  return add_lang_to_filename(v.outfile, "")     end,
    same_de = function(v,s,l0)  return add_lang_to_filename(v.outfile, "_de")  end,
    same_fr = function(v,s,l0)  return add_lang_to_filename(v.outfile, "_fr")  end,
    navbar = {"navbar"},
    leftcolumn = {"menu"},
    rightcolumn = {},
    body = {},
    bottombar = {"bottombar"},
    parse_news_1 = function(v,s,l0)
                     return parse_text(v, parse_news(newsdir,l0,newsfield), l0, "news1")
                   end,
    parse_news_2 = function(v,s,l0)
                     return parse_text(v, parse_news(newsdir,l0), l0, "news2")
                   end,
    imagedir = "images",
    lastupdate = "$Date$",
    lastauthor = "$Author$",
    lastrev = "$Rev$"
}

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- index.html
----------------------------------------------------------------------
html.index = {
    outfile = "index.html",
    title = "Enigma Homepage",
    title_de = "Enigma Hauptseite",
    rightcolumn = {"infobox"},
    body = {"introduction", "intro-links", "news1", "powered-by"}
}

----------------------------------------------------------------------
-- about.html
----------------------------------------------------------------------
html.about = {
    outfile = "about.html",
    title = "About Enigma",
    title_de = "&Uuml;ber Enigma",
    body = {"about", "features", "testimonials"}
}

----------------------------------------------------------------------
-- screenshots.html
----------------------------------------------------------------------
html.screenshots = {
    outfile = "screenshots.html",
    title = "Screenshots of Enigma",
    title_de = "Screenshots von Enigma",
    body = {"screenshots"}
}

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- download.html
----------------------------------------------------------------------
html.download = {
    outfile = "download.html",
    title = "Download Engima",
    title_de = "Enigma herunterladen",
    body = {"download"}
}

----------------------------------------------------------------------
-- compiling.html
----------------------------------------------------------------------
html.compiling = {
    outfile = "compiling.html",
    title = "Compiling Engima on Linux",
    title_de = "Enigma kompilieren unter Linux",
    body = {"compiling"}
}

----------------------------------------------------------------------
-- download_old.html
----------------------------------------------------------------------
html.download_old = {
    outfile = "download_old.html",
    title = "Download Engima, older Versions",
    title_de = "Enigma herunterladen, alte Versionen",
    body = {"download_dev_old"}
}

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- support.html
----------------------------------------------------------------------
html.support = {
    outfile = "support.html",
    title = "User-Support",
    title_de = "Spieler-Support",
    body = {} --{"scores", "documentation"}
}

----------------------------------------------------------------------
-- documentation.html
----------------------------------------------------------------------
html.documentation = {
    outfile = "documentation.html",
    title = "Documentation",
    title_de = "Dokumentation",
    body = {"documentation"}
}

----------------------------------------------------------------------
-- scores.html
----------------------------------------------------------------------
html.scores = {
    outfile = "scores.html",
    title = "Score submit",
    title_de = "Spielergebnisse einsenden",
    body = {"scores"}
}

----------------------------------------------------------------------
-- faq.html
----------------------------------------------------------------------
html.faq = {
    outfile = "faq.html",
    title = "Frequently Asked Questions",
    title_de = "H&auml;ufig gestellte Fragen",
    body = {"faq_core", "faq_questions"}
}

----------------------------------------------------------------------
-- development.html
----------------------------------------------------------------------
html.development = {
    outfile = "devel.html",
    title = "Development",
    title_de = "Entwicklung",
    body = {"development", "wishlist"}
}

----------------------------------------------------------------------
-- links.html
----------------------------------------------------------------------
html.links = {
    outfile = "links.html",
    title = "Links",
    title_de = "Links",
    body = {"links", "impressum"}
}

----------------------------------------------------------------------
-- users.html
----------------------------------------------------------------------
html.users = {
    outfile = "users.html",
    title = "User Statistics",
    title_de = "Spieler-Statistiken",
    leftcolumn = {"menu", "userlist"},
    rightcolumn = {},
    body = {"stat-head", "table-wr", "table-solved", "stat-help", "table-hcp", "stat-tail"}
}

----------------------------------------------------------------------
-- news.html
----------------------------------------------------------------------
html.news = {
    outfile = "news.html",
    title = "News and Olds",
    title_de = "Neues und Altes",
    leftcolumn = {"menu"},
    rightcolumn = {},
    body = {"news2"}
}

----------------------------------------------------------------------
-- lotm.html
----------------------------------------------------------------------
html.lotm = {
    outfile = "lotm.html",
    title = "Level of the Month",
    title_de = "Level des Monats",
    leftcolumn = {"menu"},
    rightcolumn = {},
    body = {"lotm/lotm_core"}
}

----------------------------------------------------------------------

----------------------------------------------------------------------
-- General options
----------------------------------------------------------------------

directory = "input/"
newsdir = "input/news/"
suffix = ".html"

language_list = {"", "_de"} -- "_fr"

-- The newsfield declares the news (by number) to be shown on the main page.

newsfield = {16, 17, 18, 19, 20, 21}

-- General $$mystring$$-macros. Strings are taken as-is, tables are
-- constellations of html input files, functions are executed, with the
-- following syntax: 
--   function(v,s,l0)  ...  end
--     v = the current field (like html.index), mostly equals the file
--     s = "mystring" itself (as a string -> selfreferential!)
--    l0 = language code (see language_list: "" is English, "_de" German)

general = {
    infile = directory.."schema"..suffix,
    lang = "",
    lang_de = "_de",
    lang_fr = "_fr",
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
    leftcolumn = {"menu","validation"},
    rightcolumn = {},
    body = {},
    bottombar = {"bottombar"},
    parse_news_1 = function(v,s,l0)
        return parse_text(v, parse_news(newsdir,l0,newsfield), l0, "news1")
      end,
    parse_news_2 = function(v,s,l0)
        return parse_text(v, parse_news(newsdir,l0), l0, "news2")
      end,
    parse_lotm_by_rating = function(v,s,l0)
        return parse_text(v, parse_lotm("current_rating", true, l0), l0,
          add_lang_to_filename(v.outfile, l0))
      end,
    parse_lotm_chronological = function(v,s,l0)
        return parse_text(v, parse_lotm("chronological", false, l0), l0,
          add_lang_to_filename(v.outfile, l0))
      end,
    parse_lotm_by_position = function(v,s,l0)
        return parse_text(v, parse_lotm("position_num", false, l0), l0,
          add_lang_to_filename(v.outfile, l0))
    end,
    lotm_archive_data_from = function(v,s,l0)
        return lotm_archive_date(l0)
      end,
    imagedir = "images",
    imagedir_de = "images",
    imagedir_fr = "images",
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
    body = {"about", "features", "testimonials", "press"}
}

----------------------------------------------------------------------
-- news.html
----------------------------------------------------------------------
html.news = {
    outfile = "news.html",
    title = "News and Olds",
    title_de = "Neues und Altes",
    rightcolumn = {},
    body = {"news2"}
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

----------------------------------------------------------------------
-- credits.html
----------------------------------------------------------------------
html.credits = {
    outfile = "credits.html",
    title = "Credits",
    title_de = "Credits",
    body = {"credits"}
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

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- support.html
----------------------------------------------------------------------
html.support = {
    outfile = "support.html",
    title = "User-Support",
    title_de = "Spieler-Support",
    body = {"support"} --{"scores", "documentation"}
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
-- statistics.html
----------------------------------------------------------------------
html.statistics = {
    outfile = "statistics.html",
    title = "User Statistics",
    title_de = "Spieler-Statistiken",
    leftcolumn = {"menu", "validation", "userlist"},
    rightcolumn = {},
    body = {"stat-head", "table-wr", "table-solved", "stat-help", "table-hcp", "stat-other", "table-rat", "stat-tail"}
}

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- development.html
----------------------------------------------------------------------
html.development = {
    outfile = "devel.html",
    title = "Development",
    title_de = "Entwicklung",
    body = {"development"}
}

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- links.html
----------------------------------------------------------------------
html.links = {
    outfile = "links.html",
    title = "Links",
    title_de = "Links",
    body = {"links"}
}

----------------------------------------------------------------------
-- impressum.html
----------------------------------------------------------------------
html.impressum = {
    outfile = "impressum.html",
    title = "Impressum",
    title_de = "Impressum",
    body = {"impressum", "longline"}
}

--------------------------------------------------------------------------------

----------------------------------------------------------------------
-- LotM - Archive Pages
----------------------------------------------------------------------

html.lotm = {
    outfile = "lotm.html",
    title = "Level of the Month",
    title_de = "Level des Monats",
    rightcolumn = {},
    body = {"lotm/lotm_core"}
}

html.lotm_chronological = {
    outfile = "lotm_chronological.html",
    title = "Level of the Month (chronological)",
    title_de = "Level des Monats (chronologisch)",
    rightcolumn = {},
    body = {"lotm/lotm_chronological"}
}

html.lotm_by_position = {
    outfile = "lotm_by_position.html",
    title = "Level of the Month (by position)",
    title_de = "Level des Monats (nach Position)",
    rightcolumn = {},
    body = {"lotm/lotm_by_position"}
}

----------------------------------------------------------------------
-- LotM - Articles
----------------------------------------------------------------------
 
html.lotm_200703 = {
    outfile = "lotm_200703.html",
    title = "Level of the Month: March 2007",
    title_de = "Level des Monats: M&auml;rz 2007",
    rightcolumn = {},
    body = {"lotm/lotm_200703"}
}

html.lotm_200704 = {
    outfile = "lotm_200704.html",
    title = "Level of the Month: April 2007",
    title_de = "Level des Monats: April 2007",
    rightcolumn = {},
    body = {"lotm/lotm_200704"}
}

html.lotm_200705 = {
    outfile = "lotm_200705.html",
    title = "Level of the Month: May 2007",
    title_de = "Level des Monats: Mai 2007",
    rightcolumn = {},
    body = {"lotm/lotm_200705"}
}

html.lotm_200706 = {
    outfile = "lotm_200706.html",
    title = "Level of the Month: June 2007",
    title_de = "Level des Monats: Juni 2007",
    rightcolumn = {},
    body = {"lotm/lotm_200706"}
}

html.lotm_200707 = {
    outfile = "lotm_200707.html",
    title = "Level of the Month: July 2007",
    title_de =  "Level des Monats: Juli 2007",
    rightcolumn = {},
    body = {"lotm/lotm_200707"}
}

html.lotm_200708 = {
    outfile = "lotm_200708.html",
    title = "Level of the Month: August 2007",
    title_de =  "Level des Monats: August 2007",
    rightcolumn = {},
    body = {"lotm/lotm_200708"}
}

----------------------------------------------------------------------

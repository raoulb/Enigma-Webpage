----------------------------------------------------------------------
-- General options
----------------------------------------------------------------------

directory = "input/"
newsdir = "input/news/"
suffix = ".html"

language_list = {"", "_de", "_ru"} -- "_es", "_fr"

-- The newsfield declares the news (by number) to be shown on the main page.

newsfield = {21, 23, 24, 27, 28, 29}

-- General $$mystring$$-macros. Strings are taken as-is, tables are
-- constellations of html input files, functions are executed, with the
-- following syntax:
--   function(v,s,l0)  ...  end
--     v = the current field (like html.index), mostly equals the file
--     s = "mystring" itself (as a string -> selfreferential!)
--    l0 = language code (see language_list: "" is English, "_de" German)
-- If a table of input files is used, filenames are without suffix.
-- In addition, <a name=...>-anchors are added automatically to ease
-- linking. However, in certain cases, this should be suppressed, e.g.
-- when the macro in set inside the html-header. In these cases
-- "noanchor = true" should be used, e.g.:
--   mymacro = {"file1", "file2", "file3", noanchor = true}
-- It refers to all files in the macro. If you have to apply it to
-- only some of the files, use the recursiveness of macro resolution:
--   mymacro = "$$mymacro_1$$  $$mymacro_2$$"
--   mymacro_1 = {"file1", noanchor = true}
--   mymacro_2 = {"file2", "file3"}

general = {
    infile = directory.."schema"..suffix,
    cssfile = "enigma.css",
    charset = "ISO-8859-1",
    charset_de = "ISO-8859-1",
    charset_ru = "KOI8-R",
    lang = "",
    lang_de = "_de",
    lang_fr = "_fr",
    lang_ru = "_ru",
    lang_es = "_es",
    title = "Enigma Homepage",
    title_de = "Enigma Hauptseite",
    --fr-- title_fr = "Enigma Homepage",
    title_ru = "Домашняя страница Enigma",
    title_es = "P&aacute;gina principal de Enigma",
    scripts = "",
    refman = "manual/enigma-ref.html",
    manual = "manual/enigma.html",
    manual_de = "manual/enigma_de.html",
    manual_fr = "manual/enigma_fr.html",
    manual_ru = "manual/enigma_ru.html", -- existing? - yes, existing (03.11.08)
    wiki = "http://enigma.mal2.ch/index.php?title=Main_Page",
    wiki_de = "http://enigma.mal2.ch/index.php?title=Hauptseite",
    trailer_1 = "http://download.berlios.de/enigma-game/EnigmaTrailer1.flv",
    magicmoments_1 = "http://download.berlios.de/enigma-game/EnigmaMagicMoments1.flv",
    disclaimer = "http://www.disclaimer.de/disclaimer.htm#2",
    disclaimer_de = "http://www.disclaimer.de/disclaimer.htm#1",
    gpl = "http://www.gnu.org/licenses/licenses.html#GPL",
    same_en = function(v,s,l0)  return add_lang_to_filename(v.outfile, "")     end,
    same_de = function(v,s,l0)  return add_lang_to_filename(v.outfile, "_de")  end,
    same_fr = function(v,s,l0)  return add_lang_to_filename(v.outfile, "_fr")  end,
    same_ru = function(v,s,l0)  return add_lang_to_filename(v.outfile, "_ru")  end,
    same_es = function(v,s,l0)  return add_lang_to_filename(v.outfile, "_es")  end,
    navbar = {"navbar"},
    leftcolumn = {"menu","validation"},
    rightcolumn = {},
    body = {},
    bottombar = {"bottombar"},
    parse_news_1 = function(v,s,l0)
        return parse_text_quots(v, parse_news(newsdir,l0,newsfield), l0, "news1")
      end,
    parse_news_2 = function(v,s,l0)
        return parse_text_quots(v, parse_news(newsdir,l0), l0, "news2")
      end,
    parse_level_archive = function(v,s,l0)
        return parse_text_quots(v, parse_level_archive(l0), l0, "level_archive")
      end,
    parse_lotm_by_rating = function(v,s,l0)
        return parse_text_quots(v, parse_lotm("current_rating", true, l0), l0,
          add_lang_to_filename(v.outfile, l0))
      end,
    parse_lotm_chronological = function(v,s,l0)
        return parse_text_quots(v, parse_lotm("chronological", false, l0), l0,
          add_lang_to_filename(v.outfile, l0))
      end,
    parse_lotm_by_position = function(v,s,l0)
        return parse_text_quots(v, parse_lotm("position_num", false, l0), l0,
          add_lang_to_filename(v.outfile, l0))
    end,
    lotm_archive_data_from = function(v,s,l0)
        return lotm_archive_date(l0)
      end,
    lotm_header = {"lotm/lotm_header"},
    lotm_expansion = "Level of the Month",
    lotm_expansion_de = "Level des Monats",
    lotm_expansion_ru = "Уровень Месяца",
    lotm_expansion_es = "Nivel de este mes",
    --es-- lotm_expansion_es = "",

    lotm_anchor_rating   = "<a href=\"$$lotm$$\">Rating</a>",
    lotm_anchor_month    = "<a href=\"$$lotm_chronological$$\">Month</a>",
    lotm_anchor_title    = "Title",
    lotm_anchor_author   = "Author",
    lotm_anchor_position = "<a href=\"$$lotm_by_position$$\">Position (1.01)</a>",

    lotm_anchor_rating_de   = "<a href=\"$$lotm$$\">Bewertung</a>",
    lotm_anchor_month_de    = "<a href=\"$$lotm_chronological$$\">Monat</a>",
    lotm_anchor_title_de    = "Titel",
    lotm_anchor_author_de   = "Autor",
    lotm_anchor_position_de = "<a href=\"$$lotm_by_position$$\">Position (1.01)</a>",

    lotm_anchor_rating_ru   = "<a href=\"$$lotm$$\">Рейтинг</a>",
    lotm_anchor_month_ru    = "<a href=\"$$lotm_chronological$$\">Месяц</a>",
    lotm_anchor_title_ru    = "Название",
    lotm_anchor_author_ru   = "Автор",
    lotm_anchor_position_ru = "<a href=\"$$lotm_by_position$$\">Размещение (1.01)</a>",

    lotm_anchor_rating_es   = "<a href=\"$$lotm$$\">Clasificaci&oacute;n</a>",
    lotm_anchor_month_es    = "<a href=\"$$lotm_chronological$$\">Mes</a>",
    lotm_anchor_title_es    = "T&iacute;tulo",
    lotm_anchor_author_es   = "Autor",
    lotm_anchor_position_es = "<a href=\"$$lotm_by_position$$\">Posici&oacute;n (1.01)</a>",

    lotm_history = "History of LotM",
    lotm_history_de = "Geschichte des LdM",
    lotm_history_ru = "Хронология УМ",
    lotm_history_es = "Historia de LotM",

    lotm_current = function(v,s,l0)
        return parse_text_quots(v, "$$"..lotm_macro_name(lotm_current).."$$", l0,
          "lotm_current")
      end,
    lotm_current_image = function(v,s,l0)
        return parse_text_quots(v, "$$imagedir$$/lotm/"
          ..lotm_macro_name(lotm_current)..".png", l0, "lotm_current_image")
      end,
    lotm_current_name = function(v,s,l0)
        return parse_text_quots(v, lotm_current.name, l0, "lotm_current_name")
      end,
    
    January   = function(v,s,l0)  return  translate_month(l0, {month=1})  end,
    February  = function(v,s,l0)  return  translate_month(l0, {month=2})  end,
    March     = function(v,s,l0)  return  translate_month(l0, {month=3})  end,
    April     = function(v,s,l0)  return  translate_month(l0, {month=4})  end,
    May       = function(v,s,l0)  return  translate_month(l0, {month=5})  end,
    June      = function(v,s,l0)  return  translate_month(l0, {month=6})  end,
    July      = function(v,s,l0)  return  translate_month(l0, {month=7})  end,
    August    = function(v,s,l0)  return  translate_month(l0, {month=8})  end,
    September = function(v,s,l0)  return  translate_month(l0, {month=9})  end,
    October   = function(v,s,l0)  return  translate_month(l0, {month=10})  end,
    November  = function(v,s,l0)  return  translate_month(l0, {month=11})  end,
    December  = function(v,s,l0)  return  translate_month(l0, {month=12})  end,

    JanuaryN   = function(v,s,l0)  return  translate_month_for_news(l0, {month=1})  end,
    FebruaryN  = function(v,s,l0)  return  translate_month_for_news(l0, {month=2})  end,
    MarchN     = function(v,s,l0)  return  translate_month_for_news(l0, {month=3})  end,
    AprilN     = function(v,s,l0)  return  translate_month_for_news(l0, {month=4})  end,
    MayN       = function(v,s,l0)  return  translate_month_for_news(l0, {month=5})  end,
    JuneN      = function(v,s,l0)  return  translate_month_for_news(l0, {month=6})  end,
    JulyN      = function(v,s,l0)  return  translate_month_for_news(l0, {month=7})  end,
    AugustN    = function(v,s,l0)  return  translate_month_for_news(l0, {month=8})  end,
    SeptemberN = function(v,s,l0)  return  translate_month_for_news(l0, {month=9})  end,
    OctoberN   = function(v,s,l0)  return  translate_month_for_news(l0, {month=10})  end,
    NovemberN  = function(v,s,l0)  return  translate_month_for_news(l0, {month=11})  end,
    DecemberN  = function(v,s,l0)  return  translate_month_for_news(l0, {month=12})  end,

    Advent        = "Advent",
    Advent_de     = "Advent",
    Advent_ru     = "Рождественский календарь",
    left_quot     = "&ldquo;",
    right_quot    = "&rdquo;",
    left_quot_de  = "&bdquo;",
    right_quot_de = "&ldquo;",
    left_quot_ru  = "&laquo;",
    right_quot_ru = "&raquo;",

    imagedir    = "images",
    imagedir_de = "images",
    imagedir_fr = "images",
    imagedir_ru = "images",
    imagedir_es = "images",
    nav_enigma_logo = function(v,s,l0)
        local selection = {"nav_enigma.gif"}  -- this is the default
        --local selection = {"nav_enigma_1.gif", "nav_enigma_2.gif", "nav_enigma_3.gif"}
        return selection[math.random(#selection)]
      end,
    lastupdate = "$Date$",
    lastauthor = "$Author$",
    lastrev = "$Rev$"
}

----------------------------------------------------------------------
-- Date translation
----------------------------------------------------------------------

date_translation_field = {
  months = {"January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"},
  months_de = {"Januar", "Februar", "M&auml;rz", "April", "Mai", "Juni",
    "Juli", "August", "September", "Oktober", "November", "Dezember"},
  months_ru = {"Январь", "Февраль", "Март", "Апрель", "Май", "Июнь",
    "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"},
  months_es = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
    "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"},
  months_news = {"January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"},
  months_news_ru = {"января", "февраля", "марта", "апреля", "мая", "июня",
    "июля", "августа", "сентября", "октября", "ноября", "декабря"}
}

--------------------------------------------------------------------------------

----------------------------------------------------------------------
-- index.html
----------------------------------------------------------------------
html.index = {
    outfile = "index.html",
    title = "Enigma Homepage",
    title_de = "Enigma Hauptseite",
    title_ru = "Домашняя страница Enigma",
    title_es = "P&aacute;gina principal de Enigma",
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
    title_ru = "Об Enigma",
    title_es = "Acerca de Enigma",
    body = {"about", "features", "testimonials", "press"}
}

----------------------------------------------------------------------
-- news.html
----------------------------------------------------------------------
html.news = {
    outfile = "news.html",
    title = "News and Olds",
    title_de = "Neues und Altes",
    title_ru = "Новости и архив",
    title_es = "Noticias y art&iacute;culos anteriores",
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
    title_ru = "Скриншоты Enigma",
    title_es = "Pantallazos de Enigma",
    body = {"screenshots"}
}

----------------------------------------------------------------------
-- movieclips.html
----------------------------------------------------------------------
html.movieclips = {
    outfile = "movieclips.html",
    title = "Movie Clips of Enigma",
    title_de = "Video-Clips von Enigma",
    title_ru = "Видеофрагменты Enigma",
    title_es = "Movie Clips of Enigma",
    body = {"movieclips"}
}

----------------------------------------------------------------------
-- viewclips.html
----------------------------------------------------------------------
html.viewclips = {
    outfile = "viewclips.html",
    title = "Movie Clips of Enigma",
    title_de = "Video-Clips von Enigma",
    title_ru = "Видеофрагменты Enigma",
    title_es = "Movie Clips of Enigma",
    body = {"viewclips"},
    scripts = {"videoplayer", noanchor = true}
}

----------------------------------------------------------------------
-- credits.html
----------------------------------------------------------------------
html.credits = {
    outfile = "credits.html",
    title = "Credits",
    title_de = "Credits",
    title_ru = "Благодарности",
    title_es = "Cr&eacute;ditos",
    body = {"credits"}
}

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- download.html
----------------------------------------------------------------------
html.download = {
    outfile = "download.html",
    title = "Download Enigma",
    title_de = "Enigma herunterladen",
    title_ru = "Загрузка Enigma",
    title_es = "Desc&aacute;rgate Enigma",
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
    title_ru = "Поддержка пользователя",
    title_es = "Soporte para usuarios",
    body = {"support"} --{"scores", "documentation"}
}


----------------------------------------------------------------------
-- faq.html
----------------------------------------------------------------------
html.faq = {
    outfile = "faq.html",
    title = "Frequently Asked Questions",
    title_de = "H&auml;ufig gestellte Fragen",
    title_ru = "Часто задаваемые вопросы",
    title_es = "Preguntas de Uso Frecuente",
    body = {"faq_core", "faq_questions"}
}

----------------------------------------------------------------------
-- statistics.html
----------------------------------------------------------------------
html.statistics = {
    outfile = "statistics.html",
    title = "User Statistics",
    title_de = "Spieler-Statistiken",
    title_ru = "Статистика пользователей",
    title_es = "Estadisticas de Usuario",
    average = "average",
    average_de = "Durchschnitt",
    average_ru = "В среднем",
    average_es = "Promedio",
    count = "count",
    count_de = "Anzahl",
    count_ru = "Оценено",
    count_es = "Cuenta",
    user = "user",
    user_de = "Spieler",
    user_ru = "Пользователь",
    user_es = "Usuario",
    solved_hcp = "solved hcp",
    solved_hcp_de = "gel&ouml;stes hcp",
    solved_hcp_ru = "Гандикап решённых",
    solved_hcp_es = "hcp resuelto",
    difficult = "difficult",
    difficult_de = "schwer",
    difficult_ru = "Сложные",
    difficult_es = "Dificultad",
    easy = "easy",
    easy_de = "leicht",
    easy_ru = "Простые",
    easy_es = "F&aacute;cil",
    total = "total",
    total_de = "gesamt",
    total_ru = "Всего",
    total_es = "total",
    shared = "shared",
    shared_de = "geteilt",
    shared_ru = "Совместных",
    shared_es = "Compartido",
    rating = "rating",
    rating_de = "Bewertung",
    rating_ru = "Рейтинг",
    rating_es = "Clasificaci&oacute;n",
    Handicap_Statistics = "Handicap Statistics of",
    Handicap_Statistics_de = "Handicap-Statistiken vom",
    Handicap_Statistics_ru = "Статистика мастерства за",
    Handicap_Statistics_es = "Estad&iacute;sticas de Handicap de",
    Rating_Statistics = "Rating Statistics of",
    Rating_Statistics_de = "Bewertungs-Statistiken vom",
    Rating_Statistics_ru = "Статистика оценок за",
    Rating_Statistics_es = "Estad&iacute;sticas de clasificaci&oacute;n de",
    Solved_Level_Statistics = "Solved Level Statistics of",
    Solved_Level_Statistics_de = "Statistik der gel&ouml;sten Levels vom",
    Solved_Level_Statistics_ru = "Статистика решённых уровней за",
    Solved_Level_Statistics_es = "Estad&iacute;sticas de niveles resueltos de",
    Worldrecord_Statistics = "Worldrecord Statistics of",
    Worldrecord_Statistics_de = "Weltrekord-Statistik vom",
    Worldrecord_Statistics_ru = "Статистика мировых рекордов за",
    Worldrecord_Statistics_es = "Estad&iacute;sticas de Records mundiales de",
    Other_Statistics = "Other Statistics",
    Other_Statistics_de = "Weitere Statistiken",
    Other_Statistics_ru = "Другие показатели",
    Other_Statistics_es = "Otras estad&iacute;sticas",
    Scores = "Scores",
    Scores_de = "Ergebnisse",
    Scores_ru = "Достижения",
    Scores_es = "Resultados",
    Ratings = "Ratings",
    Ratings_de = "Bewertungen",
    Ratings_ru = "Оценки",
    Ratings_es = "Clasificaci&oacute;nes",
    single_level_scores = "single level scores have been registered",
    single_level_scores_de = "einzelne Levelscores wurden registriert",
    single_level_scores_ru = "результатов прохождения уровней зарегистрировано",
    single_level_scores_es = "Han sido registrados resultados de niveles sueltos",
    single_level_ratings = "single level ratings have been registered with an average of",
    single_level_ratings_de = "einzelne Levelbewertungen wurden registriert, mit einem Durchschnitt von",
    single_level_ratings_ru = "оценок уровней зарегистрировано со средней оценкой",
    single_level_ratings_es = "Han sido registradas clasificaci&oacute;nes de niveles sueltos con promedio de",
    and_distribution = "and the following distribution",
    and_distribution_de = "und der folgenden Verteilung",
    and_distribution_ru = "и следующим разбросом",
    and_distribution_es = "y la siguiente distribuci&oacute;n",
    names_in_use = "Names in use:",
    names_in_use_de = "Vergebene Namen:",
    names_in_use_ru = "Уже используемые имена:",
    names_in_use_es = "Nombre en uso",
    leftcolumn = {"menu", "validation", "userlist"},
    rightcolumn = {},
    body = {"stat-head", "table-wr", "table-solved", "stat-help",
            "table-hcp", "stat-other", "table-rat", "stat-tail"}
}

--------------------------------------------------------------------------------
----------------------------------------------------------------------
-- development.html
----------------------------------------------------------------------
html.development = {
    outfile = "devel.html",
    title = "Development",
    title_de = "Entwicklung",
    title_ru = "Разработка",
    title_es = "Desarrollo",
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
    title_ru = "Ссылки",
    title_es = "Enlaces",
    body = {"links"}
}

----------------------------------------------------------------------
-- impressum.html
----------------------------------------------------------------------
html.impressum = {
    outfile = "impressum.html",
    title = "Imprint",
    title_de = "Impressum",
    title_ru = "Поддержка сайта",
    title_es = "Impreso",
    body = {"impressum", "longline"}
}

----------------------------------------------------------------------
-- advent_2010.html
----------------------------------------------------------------------
html.advent_2010 = {
    outfile = "advent_2010.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    cssfile = "advent.css",
    body = {"advent_2010/advent_2010"},
    advent_2010_calendar = {"advent_2010/advent_2010_calendar"}
}

-- all other dayXX sites

html.advent_2010_day1 = {
    outfile = "advent_day1.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day1", "longline"}
}

html.advent_2010_day2 = {
    outfile = "advent_day2.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day2", "longline"}
}

html.advent_2010_day3 = {
    outfile = "advent_day3.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day3", "longline"}
}

html.advent_2010_day4 = {
    outfile = "advent_day4.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day4", "longline"}
}

html.advent_2010_day5 = {
    outfile = "advent_day5.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day5", "longline"}
}

html.advent_2010_day6 = {
    outfile = "advent_day6.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day6", "longline"}
}

html.advent_2010_day7 = {
    outfile = "advent_day7.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day7", "longline"}
}

html.advent_2010_day8 = {
    outfile = "advent_day8.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day8", "longline"}
}

html.advent_2010_day9 = {
    outfile = "advent_day9.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day9", "longline"}
}

html.advent_2010_day10 = {
    outfile = "advent_day10.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day10", "longline"}
}

html.advent_2010_day11 = {
    outfile = "advent_day11.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day11", "longline"}
}

html.advent_2010_day12 = {
    outfile = "advent_day12.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day12", "longline"}
}

html.advent_2010_day13 = {
    outfile = "advent_day13.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day13", "longline"}
}

html.advent_2010_day14 = {
    outfile = "advent_day14.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day14", "longline"}
}

html.advent_2010_day15 = {
    outfile = "advent_day15.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day15", "longline"}
}

html.advent_2010_day16 = {
    outfile = "advent_day16.html",
    title = "Advent 2010",
    title_de = "Advent 2010",
    title_ru = "Рождественский календарь 2010",
    title_es = "",
    body = {"advent_2010/advent_day16", "longline"}
}

-- html.advent_2010_day17 = {
--     outfile = "advent_day17.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day17", "longline"}
-- }

-- html.advent_2010_day18 = {
--     outfile = "advent_day18.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day18", "longline"}
-- }

-- html.advent_2010_day19 = {
--     outfile = "advent_day19.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day19", "longline"}
-- }

-- html.advent_2010_day20 = {
--     outfile = "advent_day20.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day20", "longline"}
-- }

-- html.advent_2010_day21 = {
--     outfile = "advent_day21.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day21", "longline"}
-- }

-- html.advent_2010_day22 = {
--     outfile = "advent_day22.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day22", "longline"}
-- }

-- html.advent_2010_day23 = {
--     outfile = "advent_day23.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day23", "longline"}
-- }

-- html.advent_2010_day24 = {
--     outfile = "advent_day24.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day24", "longline"}
-- }

-- html.advent_2010_day25 = {
--     outfile = "advent_day25.html",
--     title = "Advent 2010",
--     title_de = "Advent 2010",
--     title_ru = "Рождественский календарь 2010",
--     title_es = "",
--     body = {"advent_2010/advent_day25", "longline"}
-- }

--------------------------------------------------------------------------------

----------------------------------------------------------------------
-- LotM - Archive Pages
----------------------------------------------------------------------

html.lotm = {
    outfile = "lotm.html",
    title = "$$lotm_expansion$$",
    rightcolumn = {},
    body = {"lotm/lotm_core"},
    kind_of_order = "by <b>rating</b>",
    kind_of_order_de = "geordnet nach <b>Bewertung</b>",
    kind_of_order_ru = "по <b>рейтингу</b>",
    kind_of_order_es = "por clasificaci&oacute;n:",
    parse_lotm = "$$parse_lotm_by_rating$$",
    lotm_anchor_rating = "<b>Rating</b>",
    lotm_anchor_rating_de = "<b>Bewertung</b>",
    lotm_anchor_rating_ru = "<b>Рейтинг</b>",
    lotm_anchor_rating_es = "<b>Clasificaci&oacute;n</b>",
}

html.lotm_chronological = {
    outfile = "lotm_chronological.html",
    title = "$$lotm_expansion$$ (chronological)",
    title_de = "$$lotm_expansion$$ (chronologisch)",
    title_ru = "$$lotm_expansion$$ (по хронологии)",
    rightcolumn = {},
    body = {"lotm/lotm_core"},
    kind_of_order = "<b>chronologically</b>",
    kind_of_order_de = "<b>chronologisch</b> geordnet",
    kind_of_order_ru = "по <b>хронологии</b>",
    kind_of_order_es = "<b>cronologicamente</b>",
    parse_lotm = "$$parse_lotm_chronological$$",
    lotm_anchor_month = "<b>Month</b>",
    lotm_anchor_month_de = "<b>Monat</b>",
    lotm_anchor_month_ru = "<b>Месяц</b>",
    lotm_anchor_month_es = "<b>Mes</b>",
}

html.lotm_by_position = {
    outfile = "lotm_by_position.html",
    title = "$$lotm_expansion$$ (by position)",
    title_de = "$$lotm_expansion$$ (nach Position)",
    title_ru = "$$lotm_expansion$$ (по размещению)",
    rightcolumn = {},
    body = {"lotm/lotm_core"},
    kind_of_order = "by <b>position</b>",
    kind_of_order_de = "geordnet nach <b>Position</b>",
    kind_of_order_ru = "по <b>размещению</b>",
    kind_of_order_es = "<b>por posici&oacute;n</b>",
    parse_lotm = "$$parse_lotm_by_position$$",
    lotm_anchor_position = "<b>Position (1.01)</b>",
    lotm_anchor_position_de = "<b>Position (1.01)</b>",
    lotm_anchor_position_ru = "<b>Размещение (1.01)</b>",
    lotm_anchor_position_es = "<b>Posici&oacute;n (1.01)</b>",
}

--------------------------------------------------------------------------------

----------------------------------------------------------------------
-- Homepage Archiv
----------------------------------------------------------------------
html.hp_archive = {
    outfile = "hp_archive.html",
    title = "Homepage Archive",
    title_de = "Homepage-Archiv",
    title_ru = "Архив домашней страницы",
    --es-- title_es = "Homepage Archive",
    body = {"hp_archive", "top_news"}
}

html.level_archive = {
    outfile = "level_archive.html",
    title = "Level Archive",
    title_de = "Level-Archiv",
    title_ru = "Архив статей об уровнях",
    --es-- title_es = "Level Archive",
    body = {"level_archive"}
}

----------------------------------------------------------------------
-- Special Articles
----------------------------------------------------------------------

----------------------------------------------------------------------
-- End of Year Awards 2007
----------------------------------------------------------------------
html.eoya_2007 = {
    outfile = "eoya_2007.html",
    title = "End of Year Awards 2007",
    title_de = "Jahresendauszeichnungen 2007",
    title_ru = "Награды конца года 2007",
    --es-- title_es = "End of Year Awards 2007",
    rightcolumn = {},
    body = {"articles/eoya_2007"}
}

html.eoya_2007_statistics = {
    outfile = "eoya_2007_statistics.html",
    title = "End of Year Awards 2007 - Pure Statistics",
    title_de = "Jahresendauszeichnungen 2007 - Pure Statistiken",
    title_ru = "Награды конца года 2007 - Полная статистика",
    --es-- title_es = "End of Year Awards 2007",
    rightcolumn = {},
    body = {"articles/eoya_2007_statistics"}
}

----------------------------------------------------------------------
-- End of Year Awards 2008
----------------------------------------------------------------------
html.eoya_2008 = {
    outfile = "eoya_2008.html",
    title = "End of Year Awards 2008",
    title_de = "Jahresendauszeichnungen 2008",
    title_ru = "Награды конца года 2008",
    --es-- title_es = "End of Year Awards 2008",
    rightcolumn = {},
    body = {"articles/eoya_2008"}
}

html.eoya_2008_statistics = {
    outfile = "eoya_2008_statistics.html",
    title = "End of Year Awards 2008 - Pure Statistics",
    title_de = "Jahresendauszeichnungen 2008 - Pure Statistiken",
    title_ru = "Награды конца года 2008 - Полная статистика",
    --es-- title_es = "End of Year Awards 2008",
    rightcolumn = {},
    body = {"articles/eoya_2008_statistics"}
}

----------------------------------------------------------------------
-- April 2008 ("The Three Clouds")
----------------------------------------------------------------------

html.april_2008 = {
    outfile = "april_2008.html",
    title = "$$lotm_expansion$$: $$April$$ '08",
    title_de = "$$lotm_expansion$$: $$April$$ '08",
    title_ru = "$$lotm_expansion$$: $$April$$ '08",
    rightcolumn = {},
    body = {"articles/april_2008"},
}

----------------------------------------------------------------------
-- Marbleous!
----------------------------------------------------------------------

html.marbleous_1 = {
    outfile = "marbleous_1.html",
    title = "Marbleous! &mdash; The Novice, Part 1",
    title_de = "Gemurmel! &mdash; Der Neuling, Teil 1",
    title_ru = "Шарикология! &mdash; Новичкам на заметку, Часть 1",
    rightcolumn = {"articles/infobox_marbleous"},
    body = {"articles/marbleous_1"},
}

html.marbleous_2 = {
    outfile = "marbleous_2.html",
    title = "Marbleous! &mdash; The Novice, Part 2",
    title_de = "Gemurmel! &mdash; Der Neuling, Teil 2",
    title_ru = "Шарикология! &mdash; Новичкам на заметку, Часть 2",
    rightcolumn = {"articles/infobox_marbleous"},
    body = {"articles/marbleous_2"},
}

html.marbleous_3 = {
    outfile = "marbleous_3.html",
    title = "Marbleous! &mdash; The Novice, Part 3",
    title_de = "Gemurmel! &mdash; Der Neuling, Teil 3",
    title_ru = "Шарикология! &mdash; Новичкам на заметку, Часть 3",
    rightcolumn = {"articles/infobox_marbleous"},
    body = {"articles/marbleous_3"},
}

html.marbleous_4 = {
    outfile = "marbleous_4.html",
    title = "Marbleous! &mdash; The Novice, Part 4",
    title_de = "Gemurmel! &mdash; Der Neuling, Teil 4",
    title_ru = "Шарикология! &mdash; Новичкам на заметку, Часть 4",
    rightcolumn = {"articles/infobox_marbleous"},
    body = {"articles/marbleous_4"},
}

----------------------------------------------------------------------
-- Independent Level Articles
----------------------------------------------------------------------

html.level_andreas11 = {
    outfile = "level_andreas11.html",
    title = "Patterns of Impulse",
    title_de = "Patterns of Impulse",
    title_ru = "Patterns of Impulse",
    rightcolumn = {},
    body = {"articles/level_andreas11"},
}

----------------------------------------------------------------------
-- LotM 200905 Yang
----------------------------------------------------------------------

html.lotm_200904_yang = {
    outfile = "lotm_200904_yang.html",
    title = "$$lotm_expansion$$: $$April$$ '09",
    title_de = "$$lotm_expansion$$: $$April$$ '09",
    title_ru = "$$lotm_expansion$$: $$April$$ '09",
    rightcolumn = {},
    body = {"lotm/lotm_200904_yang"},
}


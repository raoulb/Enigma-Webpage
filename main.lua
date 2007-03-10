#! /usr/bin/env lua50
general = {}
html = {}

--
--   Syntax:
--
--  Each file to be created has an own structure, holding the
--  strings infile (mostly schema.html) and outfile (name of result).
--  Infile is read and written to outfile.
--  If somewhere in infile occurs the pattern "$$mything$$" then
--  this pattern is replaced, dependend on the field mything of the
--  overall structure:
--    a string -> replace directly by this string
--    a function -> start this function
--    a table -> parse each entry as a new html-file
--

dofile("input/output-files.lua")

----------------------------------------------------------------------
-- Output
----------------------------------------------------------------------

function mydebug(st)
  --io.write(st)
end

function add_lang_to_filename(filename, lang)
    if lang == "" then
        return filename
    else
        return string.gsub(filename, "%.", lang..".", 1)
    end
end

function parse_text(v, text, lang, context)
    return string.gsub(text, "%$%$(.-)%$%$", function (s)
        local process = v[s] or general[s]
        local process_with_lang = v[s..lang] or general[s..lang]
        local stype = type(process)
        if stype == "nil" then
            -- Assume the entry is short for an html-output-file
            mydebug(" --> "..s.."\n")
            if type(html[s]) == "table" and type(html[s].outfile) == "string" then
                return add_lang_to_filename(html[s].outfile, lang)
            else
                error("Error during evaluation of "..context..": Entry "..s.." not defined.")
            end
        end
        if stype == "string" then
            if type(process_with_lang) == "string" then
                return process_with_lang
            else
                io.write("  Missing entry "..s..lang.." for "
                         ..context..", using fallback.\n")
                return process
            end
        end
        if stype == "function" then
            return process(v,s,lang)
        end
        if stype == "table" then
            local addstring = ""
            for j,f in process do
                -- remove slash for name- and id-tags
                fn = string.gsub(f, "/", "_")
                if f ~= fn then
                    io.write("  Note: changed anchors for "..f.." to "..fn..
                             ". Please correct href's.\n")
                end
                addstring = addstring.."<a name=\""..fn.."\" id=\""..fn.."\"></a>\n"
                addstring = addstring..parse_html(v, directory..f..suffix, lang)
            end
            return addstring
        end
        error("Error during evaluation of "..context..", "..s.." (type "..stype..").")
    end)
end

function parse_html(v, infilename0, lang)
    if not infilename0 then
        error("Error during creation of "..v.title..": Expected filename, got nil.")
    end

    -- Open infile dependend relative to lang, use English as fallback.

    local infilename = add_lang_to_filename(infilename0, lang)
    local infile = io.open(infilename, "r")
    if infile == nil then
        infile = io.open(infilename0, "r")
        if infile == nil then
            error("Error: Neither "..infilename.." nor "..infilename0.." exist.")
        else        
            io.write ("No file "..infilename..", using fallback "..infilename0.."...\n")
            infilename = infilename0
        end
    else
        io.write ("Reading input from "..infilename.." ...\n")
    end

    -- Read and process infile

    local body = infile:read("*a")
    infile:close()
    return parse_text(v, body, lang, infilename)
end

-- First create the two news-files

dofile("input/news/read_news.lua")
--for lang_nr, lang in {"", "_de"} do
--  write_news_page("news/", "input/news1"..lang..".html", lang, newsfield)
--  write_news_page("news/", "input/news2"..lang..".html", lang)
--end

-- Now glue everything together

for lang_nr, lang in language_list do
  for k,v in html do
    if type(v.outfile) ~= "string" then
        error("Error during main.lua: Outfile not properly defined.")
    end
    local outfilename = add_lang_to_filename(v.outfile, lang)
    local outfile = io.open (outfilename, "w")
    outfile:write(parse_html(v, v.infile or general.infile, lang).."\n")
    outfile:close()
  end
end


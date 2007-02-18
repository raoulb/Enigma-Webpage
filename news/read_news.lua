#! /usr/bin/env lua50
--
-- Parameters:
-- dir:     directory with the news-issues, including last "/"
-- outname: the filename to redirect the output to.
-- lang:    language is one of these {"", "_de", "_fr"}
-- numbers: an array with the issue-numbers to print
--          it will be processed from the end to the beginning!
--
function write_news_page(dir, outname, lang0, num_array)
    local lang = lang0
    if lang == "" then
        lang = "_en"
    end
    print("INFO: Lang is "..lang)
    local outfilename = outname
    local outfile = io.open (outfilename, "w")
    outfile:write(parse_news(dir, lang0, num_array).."\n")
    outfile:close()
    print("INFO: Writing news page(s) finished.")
    return 0
end
--------------------------------------------------------------------------------
function parse_news(dir, lang0, num_array)
    local all_news_content = ""
    local i = 0
    local lang = lang0
    if lang == "" then
        lang = "_en"
    end
    if num_array == nil then -- Print full news page
        num_array = determine_num_news(dir)
    end
    for i=table.getn(num_array), 1, -1 do
        all_news_content = all_news_content..parse_this_news(dir, num_array[i], lang)
    end
    return all_news_content
end
--------------------------------------------------------------------------------
function parse_this_news(dir, n, lang)
    local separator_begin = "<!-- --- "
    local separator_end = " --- -->\n"
    local the_content = ""

    local newsfilename = "news_issue"..tostring(n)..lang..".html"
    print("INFO: Parsing "..newsfilename)
    newsfile = io.open (dir..newsfilename, "r")

    if newsfile == nil then -- requested newsfile DOES NOT exist!
        print("WARNING: Newsfile news_issue"..tostring(n)..lang..".html".." not found!")

        -- If the lang is not en, we have got a second chance to finde a suitable newsfile in the english tree
        local separator = separator_begin.."News Issue #"..tostring(n)..lang.." NOT found! Trying english news file "..separator_end    
        the_content = ""..separator

        local temp_content = ""
        print("INFO: lang is "..lang..". Searching for news_issue"..tostring(n).." in the english news tree.")  
          
        if lang ~= "_en" then -- Our second chance
            temp_content = parse_this_news(dir, n, "_en")
        else -- There is no hope to find a file anymore!!
            print("ERROR: Newsfile news_issue"..tostring(n).."_en.html".." not found!")
            local separator = separator_begin.."News Issue #"..tostring(n).."_en NOT found! Omitting this news!"..separator_end    
            the_content = ""..separator
        end
        the_content = the_content..temp_content

    else -- requested newsfile exists
        local separator = separator_begin.."News Issue #"..tostring(n)..lang..separator_end    
        the_content = ""..separator
        the_content = the_content..newsfile:read("*a")
    end

    return the_content
end
--------------------------------------------------------------------------------
function determine_num_news(dir)
    -- UGLY !!! Better Ideas to determine the number of news?
    local num_news = 0
    local num_array = {}

    repeat
        num_news = num_news+1
        num_array[num_news] = num_news
        -- We know, that the english news tree IS complete
        local newsfilename = "news_issue"..tostring(num_news).."_en"..".html"
        newsfile = io.open (dir..newsfilename, "r")
    until newsfile == nil 

    print("INFO: "..tostring(num_news-1).." english Newsfiles found")
    -- We have count one to much!
    table.remove(num_array)

    return num_array
end

#! /usr/bin/env lua50

-- Syntax: orderfield is a string refering to the field to which
--         shall be ordered, inverse is true/false whether the
--         sort is to be inverted, lang is the language code
--         ("" for English, "_de" for German etc.)
-- The function copies, then resorts the lotm_archive_data as a whole,
-- then transforms into html via another function. Note that the
-- default table.sort-algorithm of Lua is not stable.

function parse_lotm(orderfield, inverse, lang)
  local ordered_data = lotm_archive_data
  table.sort(ordered_data, function (a, b)
                             if inverse then
                               return (a[orderfield] > b[orderfield])
                             else
                               return (a[orderfield] < b[orderfield])
                             end
                           end)
  return lotm_to_html(ordered_data, lang)
end

function lotm_to_html(lotm_data, lang)
  local html_text = ""
  for k, v in pairs(lotm_data) do
    local level_name = "<a href=\"$$"..lotm_macro_name(v).."$$\">"
      ..v.name.."</a> "
    if v.addition ~= "" then
      level_name = level_name..v.addition
    end
    local level_rating = string.format("%.2f", v.current_rating)
    local level_date = translate_month(lang, v.date)
    html_text = html_text
      .."    <tr><td class=\"right\">" .. level_rating    .. "</td>\n"
      .."        <td class=\"right\">(".. v.current_votes ..")</td>\n"
      .."        <td class=\"right\">" .. level_date      .. "</td>\n"
      .."        <td class=\"left\">"  .. level_name      .. "</td>\n"
      .."        <td class=\"left\">"  .. v.author        .. "</td>\n"
      .."        <td class=\"num\">"   .. v.position      .. "</td>\n"
      .."    </tr>\n"
  end
  return html_text
end
      
function lotm_archive_date(lang)
  return translate_month(lang, lotm_archive_data_from)
end

-- lotm_macro_name returns a string of the kind "lotm_200708"
-- out of the archive data table of an LotM-entry
-- (cf. lotm_archive_data.lua)
function lotm_macro_name(v)
  if (type(v) ~= "table") or (type(v.date) ~= "table") then
    error ("Tried to create a macro name for an LotM, but the type is not table!")
  end
  if (v.date.year == nil) or (v.date.month == nil) then
    error ("Tried to create a macro name for an LotM, but the dates are empty!")
  end
  return "lotm_"..v.date.year..string.format("%02d", v.date.month)
end

-- Add LotM-entries to the html-field (cf. output-files.lua)
function generate_lotm_entries(html)
  for k, v in pairs(lotm_archive_data) do
    local macroname = lotm_macro_name(v)
    if html[macroname] ~= nil then
      error ("Tried to create LotM-entry for "..v.name..", but entry already exists!")
    end
    html[macroname] = {}
    html[macroname].outfile = macroname..".html"
    html[macroname].rightcolumn = {}
    html[macroname].body = {"lotm/"..macroname}    
    for j, l0 in pairs(language_list) do
      html[macroname]["title"..l0] = "$$lotm_expansion$$: "
        ..translate_month(l0, v.date)
    end
  end
end

-- Add ratings and additional texts to LotM-entries
function lotm_rating(title, rating, votes, addition)
  local found = false
  for k, v in pairs(lotm_archive_data) do
    if v.name == title then
      if found then
        error ("Name collision for LotM article "..title.."!")
      else
        v.current_rating = rating
        v.current_votes = votes
        v.addition = (v.addition or "")..(addition or "")
        found = true
      end
    end
  end
end

-- Returns a string representing NUMBER in Roman numerals.
-- It works only for small numbers.
function roman_numeral(number)
  local rn = {"I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI",
              "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX"} 
  if rn[number] then
    return rn[number]
  else
    error("roman_numeral: Number not defined. Please increase my 'rn'-table.")
  end
end

-- Create the level article archive page.
function parse_level_archive(lang)
  -- Collect all data.
  local ordered_data = {}
  local function insert_by_occasion(entry)
    local found = false
    for _, first in ipairs(ordered_data) do
      if first.position_num == entry.position_num then
        found = true
        first.full_link = first.full_link 
          ..", <a href=\""..entry.link.."\">"..entry.occasion.."</a>"
      end
    end
    if not found then
      entry.full_link = "<a href=\""..entry.link.."\">"..entry.occasion.."</a>"
      table.insert(ordered_data, entry)
    end
  end
  for _, entry in pairs(lotm_archive_data) do
    entry.occasion = "LotM "..entry.date.month.."/"..entry.date.year
    entry.link = "$$"..lotm_macro_name(entry).."$$"
    insert_by_occasion(entry)
  end
  for _, entry in pairs(level_archive_data) do
    insert_by_occasion(entry)
  end
  -- Sort data.
  table.sort(ordered_data, function (a, b)
                             if a.position_num == b.position_num then
                               return (a.occasion < b.occasion)
                             else
                               return (a.position_num < b.position_num)
                             end
                           end)
  -- Create html.
  local html_text = ""
  local current_pack = -1
  for _, entry in ipairs(ordered_data) do
    local pack = math.floor(entry.position_num / 1000)
    if pack ~= current_pack then
      if current_pack ~= -1 then
        html_text = html_text.."</ul>\n\n"
      end
      html_text = html_text.."<h4>Enigma "..roman_numeral(pack).."</h4>\n\n<ul>"
      current_pack = pack
    end
    html_text = html_text.."<li>"..entry.position.."&nbsp;&nbsp;&nbsp;<i>"
                  ..entry.name.."</i>&nbsp;&nbsp;&nbsp;"..entry.full_link.."</li>\n"
  end
  if current_pack ~= -1 then
    html_text = html_text.."</ul>\n\n"
  end
  return html_text
end



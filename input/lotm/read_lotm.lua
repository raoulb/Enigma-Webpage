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
    local level_name = v.name
    if v.addition ~= "" then
      level_name = v.name.." "..v.addition
    end
    local level_rating = string.format("%.2f", v.current_rating)
    html_text = html_text
      .."    <tr><td class=\"right\">" .. level_rating     .. "</td>\n"
      .."        <td class=\"right\">(".. v.current_votes  ..")</td>\n"
      .."        <td class=\"right\">" .. v["month"..lang] .. "</td>\n"
      .."        <td class=\"left\">"  .. level_name       .. "</td>\n"
      .."        <td class=\"left\">"  .. v.author         .. "</td>\n"
      .."        <td class=\"num\">"   .. v.position       .. "</td>\n"
      .."    </tr>\n"
  end
  return html_text
end
      
function lotm_archive_date(lang)
  return lotm_archive_data_from[lang]
end


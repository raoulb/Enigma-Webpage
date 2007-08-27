-- Transforms the java-generated score list into
-- an html-compliant form for LotM articles.

-- The lines are constructed as "SECONDS  NAME", with *two* spaces.
-- Output is:
--  "    <tr><td class="num">MINUTES:SECONDS</td>"
--  "        <td class="left">NAME</td></tr>"
    

line = ""
mod = math.mod or math.fmod

repeat
  line = io.read("*l")
  if line then
    local space_position = string.find(line, " ")
    local number = tonumber(string.sub(line, 1, space_position - 1))
    local name = string.sub(line, space_position + 2)
    local seconds = mod(number, 60)
    local minutes = (number - seconds) / 60
    local sec_str = string.format("%02d", seconds)
    io.write("    <tr><td class=\"num\">"..minutes..":"..sec_str.."</td>\n")
    io.write("        <td class=\"left\">"..name.."</td></tr>\n")
  end
until line == nil


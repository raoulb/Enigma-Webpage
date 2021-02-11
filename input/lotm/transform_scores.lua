-- Transforms the java-generated score list into
-- an html-compliant form for LotM articles.

-- The lines are constructed as "SECONDS  MINUTES:SECONDS  NAME",
-- with *two* spaces each time.
-- Output is:
--  "    <tr><td class="num">MINUTES:SECONDS</td>"
--  "        <td class="left">NAME</td></tr>"
    

line = ""
mod = math.mod or math.fmod

repeat
  line = io.read("*l")
  if line then
    -- remove leading spaces
    while string.sub(line, 1, 1) == " " do
      line = string.sub(line, 2)
    end
    -- decompose line
    local space_position = string.find(line, " ")
    local number_str = string.sub(line, 1, space_position - 1)
    local remaining = string.sub(line, space_position + 2)
          space_position = string.find(remaining, " ")
    local time_str = string.sub(remaining, 1, space_position - 1)
    local name = string.sub(remaining, space_position + 2)      
    -- calculate time string from first number
    local number = tonumber(number_str)
    local seconds = mod(number, 60)
    local minutes = (number - seconds) / 60
    local sec_str = string.format("%02d", seconds)
    local other_time_str = minutes..":"..sec_str
    -- if time strings are not equal, throw an error
    if time_str ~= other_time_str then
      error("Times don't match in line: "..line)
    end
    io.write("    <tr><td class=\"num\">"..time_str.."</td>\n")
    io.write("        <td class=\"left\">"..name.."</td></tr>\n")
  end
until line == nil


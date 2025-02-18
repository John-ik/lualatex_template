 function split (str)
    local result = {}
    for item in string.gmatch(str, '([^,]+)') do
        table.insert(result, item)
    end
    return result
end

define_latex_command("ifmany", function(a, b, c)
    if #(split(a)) > 1 then
        tex.print(b)
    else
        tex.print(c)
    end
end)

local template = "&"..
"\\underoverline[4cm]{\\vphantom{\\getWorkAuthor}}{\\phantom{P}} &"..
"\\underoverline[6cm]{%s}{\\phantom{P}} \\\\"

define_latex_command("printSignName", function(authors)
    
    for i, author in ipairs(split(authors)) do
        tex.sprint(string.format(i > 1 and "&" .. template or template, author))
    end
end)

 function split (str, pattern_del)
    local result = {}
    if pattern_del == nil then
        pattern_del = "%s"  -- По умолчанию разделитель - пробел
    end
    for item in string.gmatch(str, '([^'..pattern_del..']+)') do
        table.insert(result, item)
    end
    return result
end

define_latex_command("ifmany", function(a, b, c)
    if #(split(a, ',')) > 1 then
        tex.print(b)
    else
        tex.print(c)
    end
end)

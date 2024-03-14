function Para(el)
    print(el)
    local str = el.content[1]
    if str.tag == "Str" and str.text:match("%[.*%]") then
        return pandoc.CodeBlock(str.text:gsub('%[%[', ''):gsub('%]%]', ''), "include")
    end
    return el
end
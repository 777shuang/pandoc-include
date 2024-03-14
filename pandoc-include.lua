local function file_exists(name)
    local f = io.open(name, 'r')
    if f ~= nil then
      io.close(f)
      return true
    else
      return false
    end
  end

function Para(el)
    local str = el.content[1]
    if str.tag == "Str" and str.text:match("%[.*%]") then
        local path = str.text:gsub('%[%[', ''):gsub('%]%]', '')
        if not file_exists(path) then
            path = path .. ".md"
        end
        return pandoc.CodeBlock(path, "include")
    end
    return el
end
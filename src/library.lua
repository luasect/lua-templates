local Class = require("class")

local Library = {}

---@type fun(): Class
function Library.newClass()
    -- "Obj" isnt needed but it makes it easier
    -- to distinguish in the autocomplete.
    local classObj = Class.new()

    return classObj
end

---@type fun(obj: Class, data: string)
function Library.setClassData(obj, data)
    if type(obj) ~= "table" then
        error("bad argument #1 to 'setClassData' (table expected, got " .. type(obj) .. ")", 2)
    end
    if data and type(data) ~= "string" then
        error("bad argument #2 to 'setClassData' (string expected, got " .. type(data) .. ")", 2)
    end

    if obj.type == "Class" then
        obj.data = data
    else
        error("bad argument #1 to 'setClassData' (Class expected, got " .. obj.type .. ")", 2)
    end
end

return Library

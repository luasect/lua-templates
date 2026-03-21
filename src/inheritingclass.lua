-- Copyright (c) 2026 LJSC. All rights reserved.
-- MIT License
-- See LICENSE for full copyright notice.

-- Requires are always put on top. Just like C includes.

local Class = require("class")

---@class InheritingClass: Class
local InheritingClass = setmetatable({}, Class)
---@protected
InheritingClass.__index = InheritingClass

-- InheritingClass Constants

---@type "InheritingClass"
InheritingClass.type = "InheritingClass"

---@type 2
InheritingClass.constant = 2

-- Class Functions

---@type fun(data: string?): InheritingClass
function InheritingClass.new(data)
    if data and type(data) ~= "string" then
        error("bad argument #1 to 'new' (string expected, got " .. type(data) .. ")", 2)
    end

    ---@class InheritingClass: Class
    local inheritingClass = setmetatable(Class.new(), InheritingClass)

    ---@type string
    inheritingClass.data = data or "Foo!"

    return inheritingClass
end

---@type fun(self: InheritingClass)
function InheritingClass.print(self)
    print(self.data)
end

---@type fun(self: InheritingClass)
function InheritingClass.warn(self)
    print("Warn:" .. self.data)
end

return InheritingClass

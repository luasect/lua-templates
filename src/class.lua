-- Copyright (c) 2026 LJSC. All rights reserved.
-- MIT License
-- See LICENSE for full copyright notice.

---@class Class
local Class = {}
---@protected
Class.__index = Class

-- Class Constants

---@type "Class"
Class.type = "Class"

---@type 1
Class.constant = 1

-- Class Functions

---@type fun(): Class
function Class.new()
    ---@class Class
    local class = setmetatable({}, Class)

    ---@type string
    class.data = "Hello World!"

    return class
end

---@type fun(self: Class)
function Class.print(self)
    print(self.data)
end

return Class
